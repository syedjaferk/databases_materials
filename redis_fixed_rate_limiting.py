import redis

r = redis.Redis(host="localhost", port=6379, db=0, decode_responses=True)

LIMIT = 10
WINDOW = 20 # seconds

def allow_request(user_id):

	key = f"rate:{user_id}"
	count = r.incr(key)
	if count == 1:
		r.expire(key, WINDOW)
	return count <= LIMIT


import time
for itr in range(40):
	time.sleep(1)
	res = allow_request(1234)
	print(f"Can i allow request ? {res}")
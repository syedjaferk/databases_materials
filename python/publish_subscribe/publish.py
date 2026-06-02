import redis
import time

r = redis.Redis(host="localhost", port=6379, decode_responses=True)

channel = "my_channel"

while True:
	message = f"Hi the current time is {time.time()}"
	r.publish(channel, message)
	time.sleep(2)
import redis
import time

r = redis.Redis(host="localhost", port=6379, decode_responses=True)

pubsub = r.pubsub()
pubsub.subscribe("my_channel")

for message in pubsub.listen():
	print("[+] Received - ",message["data"])
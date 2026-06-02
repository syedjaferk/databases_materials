import redis

r = redis.Redis(host="localhost", port=6376, db=0, decode_responses=True)

print(r.ping())

# SET , GET

r.set("name", "jafer") # SET name "jafer"

print(r.get("name")) # GET name


# EXISTS

print(r.exists("name")) # EXISTS name -> 1 - if there , 0 -> if not there

# DELETE

r.delete("name")
print("after delete", r.exists("name")) # 0

# SET with namespace & TTL -(TTL -> seconds)

r.set("session:user:1", "active", ex=10)
print("Getting namespace key ", r.get("session:user:1"))

# TTL 
print(" Will be expired in " , r.ttl("session:user:1"))

# counter

r.set("views", 0)
r.incr("views")

print("Views ", r.get("views"))

r.incrby("views", 5)
print("Views ", r.get("views"))


# List
r.delete("queue")
r.lpush("queue", "task1")
r.lpush("queue", "task2")

# view list
print("Task details ", r.lrange("queue", 0, -1))

r.rpush("queue", "task3" )

print("Task details ", r.lrange("queue", 0, -1))

# POP

print(r.lpop("queue"))

print("Task details ", r.lrange("queue", 0, -1))


# HSET
r.hset("user:1", mapping={
	"name": "Jafer",
	"age": "28",
	"role": "Engineer"
})

# hash map -> Dict
print("Hget name ", r.hget("user:1", "name"))

# Hgetall

print("HGETALL ", r.hgetall("user:1"))

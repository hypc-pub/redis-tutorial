## Redis Smembers命令

Redis `Smembers`命令返回集合中的所有的成员。不存在的集合key被视为空集合。

**语法**

```bash
127.0.0.1:6379> SMEMBERS KEY_NAME
```

**返回值**

集合中的所有成员

**示例**

```bash
127.0.0.1:6379> SADD myset1 "hello"
(integer) 1
127.0.0.1:6379> SADD myset1 "world"
(integer) 1
127.0.0.1:6379> SMEMBERS myset1
1) "World"
2) "Hello"
```

## Redis Sinterstore命令

Redis `Sinterstore`命令将给定集合之间的交集存储在指定的集合中。如果指定的集合已经存在，则将其覆盖。

**语法**

```bash
127.0.0.1:6379> SINTERSTORE DESTINATION_KEY KEY KEY1..KEYN
```

**返回值**

交集成员的列表

**示例**

```bash
127.0.0.1:6379> SADD myset1 "hello"
(integer) 1
127.0.0.1:6379> SADD myset1 "foo"
(integer) 1
127.0.0.1:6379> SADD myset1 "bar"
(integer) 1
127.0.0.1:6379> SADD myset2 "hello"
(integer) 1
127.0.0.1:6379> SADD myset2 "world"
(integer) 1
127.0.0.1:6379> SINTERSTORE myset myset1 myset2
(integer) 1
127.0.0.1:6379> SMEMBERS myset
1) "hello"
```

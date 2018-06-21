## Redis Sunionstore命令

Redis `Sunionstore`命令将给定集合的并集存储在指定的集合`destination`中。如果`destination`已经存在，则将其覆盖。

**语法**

```bash
127.0.0.1:6379> SUNIONSTORE DESTINATION KEY KEY1..KEYN
```

**返回值**

结果集中的元素数量

**示例**

```bash
127.0.0.1:6379> SADD myset1 "hello"
(integer) 1
127.0.0.1:6379> SADD myset1 "world"
(integer) 1
127.0.0.1:6379> SADD myset1 "bar"
(integer) 1
127.0.0.1:6379> SADD myset2 "hello"
(integer) 1
127.0.0.1:6379> SADD myset2 "bar"
(integer) 1
127.0.0.1:6379> SUNIONSTORE myset myset1 myset2
(integer) 1
127.0.0.1:6379> SMEMBERS myset
1) "bar"
2) "world"
3) "hello"
4) "foo"
```

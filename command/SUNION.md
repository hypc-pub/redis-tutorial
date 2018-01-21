## Redis Sunion命令

Redis `Sunion`命令返回给定集合的并集。不存在的集合key被视为空集。

**语法**

```bash
127.0.0.1:6379> SUNION KEY KEY1..KEYN
```

**返回值**

并集成员的列表

**示例**

```bash
127.0.0.1:6379> SADD key1 "a"
(integer) 1
127.0.0.1:6379> SADD key1 "b"
(integer) 1
127.0.0.1:6379> SADD key1 "c"
(integer) 1
127.0.0.1:6379> SADD key2 "c"
(integer) 1
127.0.0.1:6379> SADD key2 "d"
(integer) 1
127.0.0.1:6379> SADD key2 "e"
(integer) 1
127.0.0.1:6379> SUNION key1 key2
1) "a"
2) "c"
3) "b"
4) "e"
5) "d"
```

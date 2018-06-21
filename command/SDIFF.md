## Redis Sdiff命令

Redis `Sdiff`命令返回给定集合之间的差集。不存在的集合 key 将视为空集。

差集的结果来自前面的`FIRST_KEY`，而不是后面的`OTHER_KEY1`，也不是整个`FIRST_KEY OTHER_KEY1..OTHER_KEYN`的差集。

**语法**

```bash
127.0.0.1:6379> SDIFF FIRST_KEY OTHER_KEY1..OTHER_KEYN
```

**返回值**

包含差集成员的列表

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
127.0.0.1:6379> SDIFF key1 key2
1) "a"
2) "b"
```

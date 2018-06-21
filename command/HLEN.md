## Redis Hlen命令

Redis `Hlen`命令用于获取哈希表中字段的数量。

**语法**

```bash
127.0.0.1:6379> HLEN KEY_NAME
```

**返回值**

哈希表中字段的数量。当key不存在时，返回`0`

**示例**

```bash
127.0.0.1:6379> HSET myhash field1 "foo"
(integer) 1
127.0.0.1:6379> HSET myhash field2 "bar"
(integer) 1
127.0.0.1:6379> HLEN myhash
(integer) 2
```

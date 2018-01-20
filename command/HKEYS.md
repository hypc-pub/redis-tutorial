## Redis Hkeys命令

Redis `Hkeys`命令用于获取哈希表中的所有域（field）。

**语法**

```bash
127.0.0.1:6379> HKEYS key
```

**返回值**

包含哈希表中所有域（field）列表。当key不存在时，返回一个空列表

**示例**

```bash
127.0.0.1:6379> HSET myhash field1 "foo"
(integer) 1
127.0.0.1:6379> HSET myhash field2 "bar"
(integer) 1
127.0.0.1:6379> HKEYS myhash
1) "field1"
2) "field2"
```

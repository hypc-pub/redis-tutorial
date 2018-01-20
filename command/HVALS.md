## Redis Hvals命令

Redis `Hvals`命令返回哈希表所有域(field)的值。

**语法**

```bash
127.0.0.1:6379> HVALS KEY_NAME FIELD VALUE
```

**返回值**

一个包含哈希表中所有域(field)值的列表。当key不存在时，返回一个空表

**示例**

```bash
127.0.0.1:6379> HSET myhash field1 "foo"
(integer) 1
127.0.0.1:6379> HSET myhash field2 "bar"
(integer) 1
127.0.0.1:6379> HVALS myhash
1) "foo"
2) "bar"
127.0.0.1:6379> EXISTS not_exists
(integer) 0
127.0.0.1:6379> HVALS not_exists
(empty list or set)
```

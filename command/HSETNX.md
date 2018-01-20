## Redis Hsetnx命令

Redis `Hsetnx`命令用于为哈希表中不存在的的字段赋值 。

如果哈希表不存在，一个新的哈希表被创建并进行`HSET`操作。

如果字段已经存在于哈希表中，操作无效。

如果key不存在，一个新哈希表被创建并执行`HSETNX`命令。

**语法**

```bash
127.0.0.1:6379> HSETNX KEY_NAME FIELD VALUE
```

**返回值**

* 设置成功，返回`1`
* 如果给定字段已经存在且没有操作被执行，返回`0`

**示例**

```bash
127.0.0.1:6379> HSETNX myhash field1 "foo"
(integer) 1
127.0.0.1:6379> HSETNX myhash field1 "bar"
(integer) 0
127.0.0.1:6379> HGET myhash field1
"foo"
127.0.0.1:6379> HSETNX nosql key-value-store redis
(integer) 1
127.0.0.1:6379> HSETNX nosql key-value-store redis
(integer) 0
```

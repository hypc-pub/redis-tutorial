## Redis Hexists命令

Redis`Hexists`命令用于查看哈希表的指定字段是否存在。

**语法**

```bash
127.0.0.1:6379> HEXISTS KEY_NAME FIELD_NAME
```

**返回值**

* 如果哈希表含有给定字段，返回`1`
* 如果哈希表不含有给定字段，或key不存在，返回`0`

**示例**

```bash
127.0.0.1:6379> HSET myhash field1 "foo"
(integer) 1
127.0.0.1:6379> HEXISTS myhash field1
(integer) 1
127.0.0.1:6379> HEXISTS myhash field2
(integer) 0
```

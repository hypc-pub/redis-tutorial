## Redis Hget命令

Redis`Hget`命令用于返回哈希表中指定字段的值。

**语法**

```bash
127.0.0.1:6379> HGET KEY_NAME FIELD_NAME
```

**返回值**

返回给定字段的值。如果给定的字段或key不存在时，返回`nil`

**示例**

```bash
127.0.0.1:6379> HSET site redis redis.com
(integer) 1
127.0.0.1:6379> HGET site redis
"redis.com"
127.0.0.1:6379> HGET site mysql
(nil)
```

## Redis Exists命令

Redis`EXISTS`命令用于检查键是否存在于Redis中。

**语法**

```shell
127.0.0.1:6379> EXISTS KEY_NAME
```

**返回值**

一个整数值:

* 如果键存在，返回`1`
* 如果键不存在，返回`0`

**示例**

```shell
127.0.0.1:6379> EXISTS my_key
(integer) 0
127.0.0.1:6379> SET my_key "redis"
OK
127.0.0.1:6379> EXISTS my_key
(integer) 1
```

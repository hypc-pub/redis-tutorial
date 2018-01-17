## Redis Expire命令

Redis`Expire`命令用于设置键的到期时间。在到指定的到期时间后，在Redis中这个键将失效，不能再使用。

**语法**

```shell
127.0.0.1:6379> EXPIRE KEY_NAME TIME_IN_SECONDS
```

**返回值**

一个整数值:

* 如果成功地为该键设置了超时时间，返回`1`
* 如果键不存在或无法设置超时时间，返回`0`

**示例**

```shell
127.0.0.1:6379> SET my_key redis
OK
127.0.0.1:6379> EXPIRE my_key 10
(integer) 1
```

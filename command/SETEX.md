## Redis Setex命令

Redis`Setex`命令为指定的key设置值及其过期时间。如果key已经存在，SETEX命令将会替换旧的值。

**语法**

```shell
127.0.0.1:6379> SETEX KEY_NAME TIMEOUT VALUE
```

**返回值**

设置成功时返回`OK`

**示例**

```shell
127.0.0.1:6379> SETEX mykey 60 redis
OK
127.0.0.1:6379> TTL mykey
59
127.0.0.1:6379> GET mykey
"redis"
```

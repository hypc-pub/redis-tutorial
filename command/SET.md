## Redis SET命令

Redis`SET`命令用于设置给定key的值。如果key已经存储其他值，SET就覆写旧值，且无视类型。

**语法**

```bash
127.0.0.1:6379> SET KEY_NAME VALUE
```

**返回值**

在设置操作成功完成时，返回`OK`

**示例**

```bash
127.0.0.1:6379> SET mykey redis
OK
127.0.0.1:6379> GET mykey
"redis"
```

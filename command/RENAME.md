## Redis Rename命令

Redis`RENAME`命令用于更改键的名称。

**语法**

```bash
127.0.0.1:6379> RENAME OLD_KEY_NAME NEW_KEY_NAME
```

**返回值**

一个字符串，`OK`或`error`

**示例**

```bash
127.0.0.1:6379> SET mykey1 "redis"
OK
127.0.0.1:6379> SET mykey2 "mysql"
OK
127.0.0.1:6379> SET mykey3 "mongodb"
OK
127.0.0.1:6379> RENAME mykey2 new-mykey2
"OK"
127.0.0.1:6379> GET new-mykey2
"mysql"
```

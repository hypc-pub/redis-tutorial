## Redis Psetex命令

Redis`Psetex`命令以毫秒为单位设置key的生存时间。

**语法**

```bash
127.0.0.1:6379> PSETEX key1 EXPIRY_IN_MILLISECONDS value1
```

**返回值**

设置成功时返回`OK`

**示例**

```bash
127.0.0.1:6379> PSETEX mykey 1000 "Hello"
OK
127.0.0.1:6379> PTTL mykey
999
127.0.0.1:6379> GET mykey
"Hello"
```

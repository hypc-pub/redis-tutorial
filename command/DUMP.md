## Redis Dump命令

Redis`DUMP`命令用于获取存储在Redis中指定键的数据的序列化版本。

**语法**

```bash
127.0.0.1:6379> DUMP KEY_NAME
```

**返回值**

序列化值(String)。

**示例**

```bash
127.0.0.1:6379> SET my_key "redis"
OK
127.0.0.1:6379> DUMP my_key
"\x00\x05redis\x06\x00S\xbd\xc1q\x17z\x81\xb2"
```

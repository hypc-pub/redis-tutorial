## Redis Renamenx命令

Redis`RENAMENX`命令用于更改键的名称(如果新键不存在)。

**语法**

```bash
127.0.0.1:6379> RENAMENX OLD_KEY_NAME NEW_KEY_NAME
```

**返回值**

一个整数：

* 如果键被重命名为新键，则返回`1`
* 如果键已经存在，则返回`0`

**示例**

```bash
127.0.0.1:6379> SET mykey1 "redis"
OK
127.0.0.1:6379> SET mykey2 "mysql"
OK
127.0.0.1:6379> SET mykey3 "mongodb"
OK
127.0.0.1:6379> RENAMENX mykey1 new-mykey
(integer) 1
127.0.0.1:6379> RENAMENX mykey2 new-mykey
(integer) 0
127.0.0.1:6379> get new-mykey
"redis"
```

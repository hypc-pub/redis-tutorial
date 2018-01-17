## Redis Pttl命令

Redis`PTTL`命令用于获取键到过期的剩余时间(以毫秒为单位)。

**语法**

```shell
127.0.0.1:6379> PTTL KEY_NAME
```

**返回值**

整数值TTL(以毫秒为单位)或负值：

* TTL的时间值(以毫秒为单位)
* 如果键的没有过期时间，则返回`0`
* 如果键不存在，则返回`-1`

**示例**

```shell
127.0.0.1:6379> SET mykey "redis"
OK
127.0.0.1:6379> EXPIRE mykey 1000
(integer) 1 
127.0.0.1:6379> PTTL mykey
(integer) 996230
```

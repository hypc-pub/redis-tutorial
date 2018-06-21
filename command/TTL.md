## Redis Ttl命令

Redis`TTL`命令以秒为单位返回key的剩余过期时间。

**语法**

```bash
127.0.0.1:6379> TTL KEY_NAME
```

**返回值**

一个整数

* 当key不存在时，返回`-2`
* 当key存在但没有设置剩余生存时间时，返回`-1`
* 否则，以秒为单位，返回key的剩余生存时间

**示例**

```bash
127.0.0.1:6379> FLUSHDB
OK
127.0.0.1:6379> TTL mykey
(integer) -2
127.0.0.1:6379> SET mykey redis
OK
127.0.0.1:6379> TTL key
(integer) -1
127.0.0.1:6379> EXPIRE mykey 100
(integer) 1
127.0.0.1:6379> TTL key
(integer) 96
```

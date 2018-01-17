## Redis Persist命令

Redis`PERSIST`命令用于删除键所指定的过期时间。

**语法**

```shell
127.0.0.1:6379> PERSIST KEY_NAME
```

**返回值**

一个整数：

* 如果键的过期时间删除成功，则返回`1`
* 如果键的过期时间删除失败，则返回`0`

**示例**

```shell
127.0.0.1:6379> EXPIRE mykey 60
(integer) 1
127.0.0.1:6379> TTL mykey
(integer) 56
127.0.0.1:6379> PERSIST mykey
(integer) 1
127.0.0.1:6379> TTL mykey
(integer) -1
```

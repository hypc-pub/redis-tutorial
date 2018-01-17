## Redis Randomkey命令

Redis`RANDOMKEY`命令用来获取Redis数据库的随机键。

**语法**

```shell
127.0.0.1:6379> RANDOMKEY
```

**返回值**

一个随机键(字符串)或nil，如果数据库是空的。

**示例**

```shell
127.0.0.1:6379> SET mykey1 "redis"
OK
127.0.0.1:6379> SET mykey2 "mysql"
OK
127.0.0.1:6379> SET mykey3 "mongodb"
OK
127.0.0.1:6379> RANDOMKEY
mykey2
```

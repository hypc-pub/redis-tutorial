## Redis GET命令

Redis`Get`命令用于获取指定key的值。如果key不存在，返回`nil`。如果key储存的值不是字符串类型，返回一个错误。

**语法**

```shell
127.0.0.1:6379> GET KEY_NAME
```

**返回值**

* 返回key的值，如果key不存在时，返回`nil`
* 如果key不是字符串类型，那么返回一个错误

**示例**

```shell
127.0.0.1:6379> GET mykey
(nil)
127.0.0.1:6379> SET mykey redis
OK
127.0.0.1:6379> GET mykey
"redis"
127.0.0.1:6379> LPUSH db redis mongodb mysql
(integer) 3
127.0.0.1:6379> GET db
(error) ERR Operation against a key holding the wrong kind of value
```

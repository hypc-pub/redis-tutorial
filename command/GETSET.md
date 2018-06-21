## Redis Getset命令

Redis`Getset`命令用于设置指定key的值，并返回key的旧值。

**语法**

```bash
127.0.0.1:6379> GETSET KEY_NAME VALUE
```

**返回值**

返回给定key的旧值

* 当key没有旧值时，即key不存在时，返回`nil`
* 当key存在但不是字符串类型时，返回一个错误

**示例**

```bash
127.0.0.1:6379> GETSET mykey redis
(nil)
127.0.0.1:6379> GET mykey
"redis"
127.0.0.1:6379> GETSET mykey redis2
"redis"
127.0.0.1:6379> GET mykey
"redis2"
```

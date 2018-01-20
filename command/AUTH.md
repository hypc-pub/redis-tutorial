## Redis Auth命令

Redis`Auth`命令用于检测给定的密码和配置文件中的密码是否相符。

**语法**

```bash
127.0.0.1:6379> AUTH PASSWORD
```

**返回值**

密码匹配时返回`OK`，否则返回一个错误。

**示例**

```bash
127.0.0.1:6379> AUTH PASSWORD
(error) ERR Client sent AUTH, but no password is set
127.0.0.1:6379> CONFIG SET requirepass "mypass"
OK
127.0.0.1:6379> AUTH mypass
Ok
127.0.0.1:6379> AUTH mypass2
(error) ERR invalid password
```

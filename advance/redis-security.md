# Redis安全

我们可以通过redis的配置文件设置密码参数，这样客户端连接到redis服务就需要密码验证，这样可以让你的redis服务更安全。

## 查看和设置密码

```bash
127.0.0.1:6379> CONFIG get requirepass
1) "requirepass"
2) ""
127.0.0.1:6379> CONFIG set requirepass "mypassword"
OK
127.0.0.1:6379> CONFIG get requirepass
1) "requirepass"
2) "mypassword"
```

## 连接

设置密码后，客户端连接redis服务就需要密码验证，否则无法执行命令。

使用`AUTH`命令验证密码是否正确。

```bash
127.0.0.1:6379> AUTH "mypassword"
OK
127.0.0.1:6379> SET mykey "Test value"
OK
127.0.0.1:6379> GET mykey
"Test value"
```

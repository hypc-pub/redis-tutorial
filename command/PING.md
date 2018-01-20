## Redis Ping命令

Redis`Ping`命令使用客户端向Redis服务器发送一个PING，如果服务器运作正常的话，会返回一个`PONG`。

通常用于测试与服务器的连接是否仍然生效，或者用于测量延迟值。

**语法**

```bash
127.0.0.1:6379> PING
```

**返回值**

如果连接正常就返回一个`PONG`，否则返回一个连接错误。

**示例**

```bash
127.0.0.1:6379> PING
PONG
127.0.0.1:6379> PING
Could not connect to Redis at 127.0.0.1:6379: Connection refused
```

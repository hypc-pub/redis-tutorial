## Redis Publish命令

Redis `Publish`命令用于将信息发送到指定的频道。

**语法**

```bash
127.0.0.1:6379> PUBLISH channel message
```

**返回值**

接收到信息的订阅者数量

**示例**

```bash
127.0.0.1:6379> PUBLISH mychannel "hello, i m here"
(integer) 1
```

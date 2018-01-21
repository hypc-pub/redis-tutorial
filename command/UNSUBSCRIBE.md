## Redis Unsubscribe命令

Redis `Unsubscribe`命令用于退订给定的一个或多个频道的信息。

**语法**

```bash
127.0.0.1:6379> UNSUBSCRIBE channel [channel ...]
```

**返回值**

这个命令在不同的客户端中有不同的表现

**示例**

```bash
127.0.0.1:6379> UNSUBSCRIBE mychannel
1) "unsubscribe"
2) "a"
3) (integer) 0
```

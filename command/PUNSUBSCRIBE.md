## Redis Punsubscribe命令

Redis `Punsubscribe`命令用于退订所有给定模式的频道。

**语法**

```bash
127.0.0.1:6379> PUNSUBSCRIBE [pattern [pattern ...]]
```

**返回值**

这个命令在不同的客户端中有不同的表现

**示例**

```bash
127.0.0.1:6379> PUNSUBSCRIBE mychannel
1) "punsubscribe"
2) "a"
3) (integer) 1
```

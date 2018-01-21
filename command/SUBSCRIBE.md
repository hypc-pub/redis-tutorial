## Redis Subscribe命令

Redis `Subscribe`命令用于订阅给定的一个或多个频道的信息。

**语法**

```bash
127.0.0.1:6379> SUBSCRIBE channel [channel ...]
```

**返回值**

接收到的信息

**示例**

```bash
127.0.0.1:6379> SUBSCRIBE mychannel
Reading messages... (press Ctrl-C to quit)
1) "subscribe"
2) "mychannel"
3) (integer) 1
1) "message"
2) "mychannel"
3) "a"
```

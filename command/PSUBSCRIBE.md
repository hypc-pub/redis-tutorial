## Redis Psubscribe命令

Redis `Psubscribe` 命令订阅一个或多个符合给定模式的频道。

每个模式以`*`作为匹配符，比如`it*`匹配所有以`it`开头的频道(`it.news`、`it.blog`、`it.tweets`等等)。`news.*`匹配所有以`news.`开头的频道(`news.it`、`news.global.today`等等)，诸如此类。

**语法**

```bash
127.0.0.1:6379> PSUBSCRIBE pattern [pattern ...]
```

**返回值**

接收到的信息

**示例**

```bash
127.0.0.1:6379> PSUBSCRIBE mychannel
Reading messages... (press Ctrl-C to quit)
1) "psubscribe"
2) "mychannel"
3) (integer) 1
```

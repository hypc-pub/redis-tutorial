## Redis Pubsub命令

Redis `Pubsub`命令用于查看订阅与发布系统状态，它由数个不同格式的子命令组成。

**语法**

```bash
127.0.0.1:6379> PUBSUB <subcommand> [argument [argument ...]]
```

**返回值**

由活跃频道组成的列表

**示例**

```bash
127.0.0.1:6379> PUBSUB CHANNELS
(empty list or set)
```

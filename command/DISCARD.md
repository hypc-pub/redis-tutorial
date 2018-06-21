## Redis Discard命令

Redis `Discard`命令用于取消事务，放弃执行事务块内的所有命令。

**语法**

```bash
127.0.0.1:6379> DISCARD
```

**返回值**

总是返回`OK`

**示例**

```bash
127.0.0.1:6379> MULTI
OK
127.0.0.1:6379> PING
QUEUED
127.0.0.1:6379> SET greeting "hello"
QUEUED
127.0.0.1:6379> DISCARD
OK
```

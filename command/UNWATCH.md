## Redis Unwatch命令

Redis `Unwatch`命令用于取消`WATCH`命令对所有key的监视。

**语法**

```bash
127.0.0.1:6379> UNWATCH
```

**返回值**

总是返回`OK`

**示例**

```bash
127.0.0.1:6379> WATCH lock lock_times
OK
127.0.0.1:6379> UNWATCH
OK
```

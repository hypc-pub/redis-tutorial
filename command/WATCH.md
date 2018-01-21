## Redis Watch命令

Redis `Watch`命令用于监视一个(或多个)key，如果在事务执行之前这个(或这些)key被其他命令所改动，那么事务将被打断。

**语法**

```bash
127.0.0.1:6379> WATCH key [key ...]
```

**返回值**

总是返回`OK`

**示例**

```bash
127.0.0.1:6379> WATCH lock lock_times
OK
```

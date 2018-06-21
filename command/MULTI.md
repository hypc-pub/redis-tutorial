## Redis Multi命令

Redis `Multi`命令用于标记一个事务块的开始。

事务块内的多条命令会按照先后顺序被放进一个队列当中，最后由`EXEC`命令原子性(atomic)地执行。

**语法**

```bash
127.0.0.1:6379> MULTI
```

**返回值**

总是返回`OK`

**示例**

```bash
127.0.0.1:6379> MULTI
OK
127.0.0.1:6379> INCR user_id
QUEUED
127.0.0.1:6379> INCR user_id
QUEUED
127.0.0.1:6379> INCR user_id
QUEUED
127.0.0.1:6379> PING
QUEUED
127.0.0.1:6379> EXEC
1) (integer) 1
2) (integer) 2
3) (integer) 3
4) PONG
```

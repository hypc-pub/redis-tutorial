## Redis Exec命令

Redis `Exec`命令用于执行所有事务块内的命令。

**语法**

```bash
127.0.0.1:6379> EXEC
```

**返回值**

事务块内所有命令的返回值，按命令执行的先后顺序排列。当操作被打断时，返回空值`nil`

**示例**

```bash
# 事务被成功执行
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

# 监视 key ，且事务成功执行
127.0.0.1:6379> WATCH lock lock_times
OK
127.0.0.1:6379> MULTI
OK
127.0.0.1:6379> SET lock "huangz"
QUEUED
127.0.0.1:6379> INCR lock_times
QUEUED
127.0.0.1:6379> EXEC
1) OK
2) (integer) 1

# 监视 key ，且事务被打断
127.0.0.1:6379> WATCH lock lock_times
OK
127.0.0.1:6379> MULTI
OK
127.0.0.1:6379> SET lock "joe"
QUEUED
127.0.0.1:6379> INCR lock_times
QUEUED
127.0.0.1:6379> EXEC
(nil)
```

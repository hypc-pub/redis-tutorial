## Redis Incrby命令

Redis`Incrby`命令将key中储存的数字加上指定的增量值。

如果key不存在，那么key的值会先被初始化为`0`，然后再执行`INCRBY`命令。

如果值包含错误的类型，或字符串类型的值不能表示为数字，那么返回一个错误。

本操作的值限制在64位(bit)有符号数字表示之内。

**语法**

```bash
127.0.0.1:6379> INCRBY KEY_NAME INCR_AMOUNT
```

**返回值**

加上指定的增量值之后，key的值

**示例**

```bash
127.0.0.1:6379> SET rank 50
OK
127.0.0.1:6379> INCRBY rank 20
(integer) 70
127.0.0.1:6379> GET rank
"70"
127.0.0.1:6379> EXISTS counter
(integer) 0
127.0.0.1:6379> INCRBY counter 30
(integer) 30
127.0.0.1:6379> GET counter
"30"
127.0.0.1:6379> SET book "long long ago..."
OK
127.0.0.1:6379> INCRBY book 200
(error) ERR value is not an integer or out of range
```

## Redis Decr命令

Redis`Decr`命令将key中储存的数字值减一。

如果key不存在，那么key的值会先被初始化为`0`，然后再执行`DECR`操作。

如果值包含错误的类型，或字符串类型的值不能表示为数字，那么返回一个错误。

本操作的值限制在64位(bit)有符号数字表示之内。

**语法**

```shell
127.0.0.1:6379> DECR KEY_NAME
```

**返回值**

执行命令之后key的值

**示例**

```shell
127.0.0.1:6379> SET failure_times 10
OK
127.0.0.1:6379> DECR failure_times
(integer) 9
127.0.0.1:6379> EXISTS count
(integer) 0
127.0.0.1:6379> DECR count
(integer) -1
127.0.0.1:6379> SET company YOUR_CODE_SUCKS.LLC
OK
127.0.0.1:6379> DECR company
(error) ERR value is not an integer or out of range
```

## Redis Decrby命令

Redis`Decrby`命令将key所储存的值减去指定的减量值。

如果key不存在，那么key的值会先被初始化为`0`，然后再执行`DECRBY`操作。

如果值包含错误的类型，或字符串类型的值不能表示为数字，那么返回一个错误。

本操作的值限制在64位(bit)有符号数字表示之内。

**语法**

```bash
127.0.0.1:6379> DECRBY KEY_NAME DECREMENT_AMOUNT
```

**返回值**

减去指定减量值之后，key的值

**示例**

```bash
127.0.0.1:6379> SET count 100
OK
127.0.0.1:6379> DECRBY count 20
(integer) 80
127.0.0.1:6379> EXISTS pages
(integer) 0
127.0.0.1:6379> DECRBY pages 10
(integer) -10
```

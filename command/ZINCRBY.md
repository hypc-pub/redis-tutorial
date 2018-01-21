## Redis Zincrby命令

Redis `Zincrby`命令对有序集合中指定成员的分数加上增量`increment`。

可以通过传递一个负数值`increment`，让分数减去相应的值，比如`ZINCRBY key -5 member`，就是让`member`的`score`值减去`5`。

当key不存在，或分数不是key的成员时，`ZINCRBY key increment member`等同于`ZADD key increment member`。

当key不是有序集类型时，返回一个错误。

分数值可以是整数值或双精度浮点数。

**语法**

```bash
127.0.0.1:6379> ZINCRBY key increment member
```

**返回值**

member成员的新分数值，以字符串形式表示

**示例**

```bash
127.0.0.1:6379> ZADD myzset 1 "one"
(integer) 1
127.0.0.1:6379> ZADD myzset 2 "two"
(integer) 1
127.0.0.1:6379> ZINCRBY myzset 2 "one"
"3"
127.0.0.1:6379> ZRANGE myzset 0 -1 WITHSCORES
1) "two"
2) "2"
3) "one"
4) "3"
```

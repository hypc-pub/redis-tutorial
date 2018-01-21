## Redis Lrange命令

Redis `Lrange`返回列表中指定区间内的元素，区间以偏移量`START`和`END`指定。

其中`0`表示列表的第一个元素，`1`表示列表的第二个元素，以此类推。你也可以使用负数下标，以`-1`表示列表的最后一个元素，`-2`表示列表的倒数第二个元素，以此类推。

**语法**

```bash
127.0.0.1:6379> LRANGE KEY_NAME START END
```

**返回值**

一个列表，包含指定区间内的元素

**示例**

```bash
127.0.0.1:6379> RPUSH mylist "two"
(integer) 2
127.0.0.1:6379> RPUSH mylist "three"
(integer) 3
127.0.0.1:6379> LRANGE mylist 0 0
1) "one"
127.0.0.1:6379> LRANGE mylist -3 2
1) "one"
2) "two"
3) "three"
127.0.0.1:6379> LRANGE mylist -100 100
1) "one"
2) "two"
3) "three"
127.0.0.1:6379> LRANGE mylist 5 10
(empty list or set)
```

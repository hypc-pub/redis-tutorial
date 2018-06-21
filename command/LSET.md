## Redis Lset命令

Redis `Lset`通过索引来设置元素的值。

当索引参数超出范围，或对一个空列表进行 `LSET`时，返回一个错误。

关于列表下标的更多信息，请参考`LINDEX`命令。

**语法**

```bash
127.0.0.1:6379> LSET KEY_NAME INDEX VALUE
```

**返回值**

操作成功返回`ok`，否则返回错误信息

**示例**

```bash
127.0.0.1:6379> RPUSH mylist "hello"
(integer) 1
127.0.0.1:6379> RPUSH mylist "hello"
(integer) 2
127.0.0.1:6379> RPUSH mylist "foo"
(integer) 3
127.0.0.1:6379> RPUSH mylist "hello"
(integer) 4
127.0.0.1:6379> LSET mylist 0 "bar"
OK
127.0.0.1:6379> LRANGE mylist 0 -1
1: "bar"
2) "hello"
3) "foo"
4) "hello"
```

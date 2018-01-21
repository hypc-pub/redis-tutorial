## Redis Rpoplpush命令

Redis `Rpoplpush`命令用于移除列表的最后一个元素，并将该元素添加到另一个列表并返回。

**语法**

```bash
127.0.0.1:6379> RPOPLPUSH SOURCE_KEY_NAME DESTINATION_KEY_NAME
```

**返回值**

被弹出的元素

**示例**

```bash
127.0.0.1:6379> RPUSH mylist "hello"
(integer) 1
127.0.0.1:6379> RPUSH mylist "foo"
(integer) 2
127.0.0.1:6379> RPUSH mylist "bar"
(integer) 3
127.0.0.1:6379> RPOPLPUSH mylist myotherlist
"bar"
127.0.0.1:6379> LRANGE mylist 0 -1
1) "hello"
2) "foo"
```

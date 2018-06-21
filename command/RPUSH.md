## Redis Rpush命令

Redis `Rpush`命令用于将一个或多个值插入到列表的尾部(最右边)。

如果列表不存在，一个空列表会被创建并执行`RPUSH`操作。当列表存在但不是列表类型时，返回一个错误。

**语法**

```bash
127.0.0.1:6379> RPUSH KEY_NAME VALUE1..VALUEN
```

**返回值**

执行`RPUSH`操作后，列表的长度

**示例**

```bash
127.0.0.1:6379> RPUSH mylist "hello"
(integer) 1
127.0.0.1:6379> RPUSH mylist "foo"
(integer) 2
127.0.0.1:6379> RPUSH mylist "bar"
(integer) 3
127.0.0.1:6379> LRANGE mylist 0 -1
1) "hello"
2) "foo"
3) "bar"
```

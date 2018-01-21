## Redis Rpushx命令

Redis `Rpushx`命令用于将一个值插入到已存在的列表尾部(最右边)。如果列表不存在，操作无效。

**语法**

```bash
127.0.0.1:6379> RPUSHX KEY_NAME VALUE1..VALUEN
```

**返回值**

执行`Rpushx`操作后，列表的长度

**示例**

```bash
127.0.0.1:6379> RPUSH mylist "hello"
(integer) 1
127.0.0.1:6379> RPUSH mylist "foo"
(integer) 2
127.0.0.1:6379> RPUSHX mylist2 "bar"
(integer) 0
127.0.0.1:6379> LRANGE mylist 0 -1
1) "hello"
2) "foo"
```

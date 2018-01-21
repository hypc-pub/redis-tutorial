## Redis Lpush命令

Redis `Lpush`命令将一个或多个值插入到列表头部。如果key不存在，一个空列表会被创建并执行`LPUSH`操作。当key存在但不是列表类型时，返回一个错误。

**语法**

```bash
127.0.0.1:6379> LPUSH KEY_NAME VALUE1.. VALUEN
```

**返回值**

执行`LPUSH`命令后，列表的长度

**示例**

```bash
127.0.0.1:6379> LPUSH list1 "foo"
(integer) 1
127.0.0.1:6379> LPUSH list1 "bar"
(integer) 2
127.0.0.1:6379> LRANGE list1 0 -1
1) "bar"
2) "foo"
```

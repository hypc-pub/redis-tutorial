## Redis Lpushx命令

Redis `Lpushx`将一个值插入到已存在的列表头部，列表不存在时操作无效。

**语法**

```bash
127.0.0.1:6379> LPUSHX KEY_NAME VALUE1.. VALUEN
```

**返回值**

`LPUSHX`命令执行之后，列表的长度

**示例**

```bash
127.0.0.1:6379> LPUSH list1 "foo"
(integer) 1
127.0.0.1:6379> LPUSHX list1 "bar"
(integer) 2
127.0.0.1:6379> LPUSHX list2 "bar"
(integer) 0
127.0.0.1:6379> LRANGE list1 0 -1
1) "bar"
2) "foo"
```

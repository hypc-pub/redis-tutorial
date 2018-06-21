## Redis Linsert命令

Redis `Linsert`命令用于在列表的元素前或者后插入元素。当指定元素不存在于列表中时，不执行任何操作。当列表不存在时，被视为空列表，不执行任何操作。如果key不是列表类型，返回一个错误。

**语法**

```bash
127.0.0.1:6379> LINSERT KEY_NAME BEFORE EXISTING_VALUE NEW_VALUE
```

**返回值**

* 如果命令执行成功，返回插入操作完成之后，列表的长度
* 如果没有找到指定元素，返回`-1`
* 如果key不存在或为空列表，返回`0`

**示例**

```bash
127.0.0.1:6379> RPUSH mylist "World"
(integer) 2
127.0.0.1:6379> LINSERT mylist BEFORE "World" "There"
(integer) 3
127.0.0.1:6379> LRANGE mylist 0 -1
1) "Hello"
2) "There"
3) "World"
```

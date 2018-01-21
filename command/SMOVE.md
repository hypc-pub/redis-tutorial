## Redis Smove命令

Redis `Smove`命令将指定成员`member`元素从`source`集合移动到`destination`集合。`SMOVE`是原子性操作。

如果`source`集合不存在或不包含指定的`member`元素，则 SMOVE 命令不执行任何操作，仅返回`0`。否则，`member`元素从`source`集合中被移除，并添加到`destination`集合中去。

当`destination`集合已经包含`member`元素时，`SMOVE`命令只是简单地将`source`集合中的`member`元素删除。

当`source`或`destination`不是集合类型时，返回一个错误。

**语法**

```bash
127.0.0.1:6379> SMOVE SOURCE DESTINATION MEMBER
```

**返回值**

* 如果成员元素被成功移除，返回`1`
* 如果成员元素不是`source`集合的成员，并且没有任何操作对`destination`集合执行，那么返回`0`

**示例**

```bash
127.0.0.1:6379> SADD myset1 "hello"
(integer) 1
127.0.0.1:6379> SADD myset1 "world"
(integer) 1
127.0.0.1:6379> SADD myset1 "bar"
(integer) 1
127.0.0.1:6379> SADD myset2 "foo"
(integer) 1
127.0.0.1:6379> SMOVE myset1 myset2 "bar"
(integer) 1
127.0.0.1:6379> SMEMBERS myset1
1) "World"
2) "Hello"
127.0.0.1:6379> SMEMBERS myset2
1) "foo"
2) "bar"
```

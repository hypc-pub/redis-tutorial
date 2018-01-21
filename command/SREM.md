## Redis Srem命令

Redis `Srem`命令用于移除集合中的一个或多个成员元素，不存在的成员元素会被忽略。

当key不是集合类型，返回一个错误。

**语法**

```bash
127.0.0.1:6379> SREM KEY MEMBER1..MEMBERN
```

**返回值**

被成功移除的元素的数量，不包括被忽略的元素

**示例**

```bash
127.0.0.1:6379> SADD myset1 "hello"
(integer) 1
127.0.0.1:6379> SADD myset1 "world"
(integer) 1
127.0.0.1:6379> SADD myset1 "bar"
(integer) 1
127.0.0.1:6379> SREM myset1 "hello"
(integer) 1
127.0.0.1:6379> SREM myset1 "foo"
(integer) 0
127.0.0.1:6379> SMEMBERS myset1
1) "bar"
2) "world"
```

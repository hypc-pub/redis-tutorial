## Redis Sadd命令

Redis `Sadd`命令将一个或多个成员元素加入到集合中，已经存在于集合的成员元素将被忽略。

假如集合key不存在，则创建一个只包含添加的元素作成员的集合。

当集合key不是集合类型时，返回一个错误。

**语法**

```bash
127.0.0.1:6379> SADD KEY_NAME VALUE1..VALUEN
```

**返回值**

被添加到集合中的新元素的数量，不包括被忽略的元素

**示例**

```bash
127.0.0.1:6379> SADD myset "hello"
(integer) 1
127.0.0.1:6379> SADD myset "foo"
(integer) 1
127.0.0.1:6379> SADD myset "hello"
(integer) 0
127.0.0.1:6379> SMEMBERS myset
1) "hello"
2) "foo"
```

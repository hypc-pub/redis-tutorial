## Redis Zcount命令

Redis `Zcount`命令用于计算有序集合中指定分数区间的成员数量。

**语法**

```bash
127.0.0.1:6379> ZCOUNT key min max
```

**返回值**

分数值在`min`和`max`之间的成员的数量

**示例**

```bash
127.0.0.1:6379> ZADD myzset 1 "hello"
(integer) 1
127.0.0.1:6379> ZADD myzset 1 "foo"
(integer) 1
127.0.0.1:6379> ZADD myzset 2 "world" 3 "bar"
(integer) 2
127.0.0.1:6379> ZCOUNT myzset 1 3
(integer) 4
```

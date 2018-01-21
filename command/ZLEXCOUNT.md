## Redis Zlexcount命令

Redis `Zlexcount`命令在计算有序集合中指定字典区间内成员数量。

**语法**

```bash
127.0.0.1:6379> ZLEXCOUNT KEY MIN MAX
```

**返回值**

指定区间内的成员数量

**示例**

```bash
127.0.0.1:6379> ZADD myzset 0 a 0 b 0 c 0 d 0 e
(integer) 5
127.0.0.1:6379> ZADD myzset 0 f 0 g
(integer) 2
127.0.0.1:6379> ZLEXCOUNT myzset - +
(integer) 7
127.0.0.1:6379> ZLEXCOUNT myzset [b [f
(integer) 5
```

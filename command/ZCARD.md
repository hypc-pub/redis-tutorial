## Redis Zcard命令

Redis `Zcard`命令用于计算集合中元素的数量。

**语法**

```bash
127.0.0.1:6379> ZCARD KEY_NAME
```

**返回值**

* 当key存在且是有序集类型时，返回有序集的基数
* 当key不存在时，返回`0`

**示例**

```bash
127.0.0.1:6379> ZADD myzset 1 "one"
(integer) 1
127.0.0.1:6379> ZADD myzset 2 "two"
(integer) 1
127.0.0.1:6379> ZCARD myzset
(integer) 2
```

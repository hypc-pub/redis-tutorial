## Redis Zrangebylex命令

Redis `Zrangebylex`通过字典区间返回有序集合的成员。

**语法**

```bash
127.0.0.1:6379> ZRANGEBYLEX key min max [LIMIT offset count]
```

**返回值**

指定区间内的元素列表

**示例**

```bash
127.0.0.1:6379> ZADD myzset 0 a 0 b 0 c 0 d 0 e 0 f 0 g
(integer) 7
127.0.0.1:6379> ZRANGEBYLEX myzset - [c
1) "a"
2) "b"
3) "c"
127.0.0.1:6379> ZRANGEBYLEX myzset - (c
1) "a"
2) "b"
127.0.0.1:6379> ZRANGEBYLEX myzset [aaa (g
1) "b"
2) "c"
3) "d"
4) "e"
5) "f"
```

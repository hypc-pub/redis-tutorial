## Redis Zremrangebylex命令

Redis `Zremrangebylex`命令用于移除有序集合中给定的字典区间的所有成员。

**语法**

```bash
127.0.0.1:6379> ZREMRANGEBYLEX key min max
```

**返回值**

被成功移除的成员的数量，不包括被忽略的成员

**示例**

```bash
127.0.0.1:6379> ZADD myzset 0 aaaa 0 b 0 c 0 d 0 e
(integer) 5
127.0.0.1:6379> ZADD myzset 0 foo 0 zap 0 zip 0 ALPHA 0 alpha
(integer) 5
127.0.0.1:6379> ZRANGE myzset 0 -1
1) "ALPHA"
 2) "aaaa"
 3) "alpha"
 4) "b"
 5) "c"
 6) "d"
 7) "e"
 8) "foo"
 9) "zap"
10) "zip"
127.0.0.1:6379> ZREMRANGEBYLEX myzset [alpha [omega
(integer) 6
127.0.0.1:6379> ZRANGE myzset 0 -1
1) "ALPHA"
2) "aaaa"
3) "zap"
4) "zip"
```

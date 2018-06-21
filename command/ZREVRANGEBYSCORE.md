## Redis Zrevrangebyscore命令

Redis `Zrevrangebyscore`返回有序集中指定分数区间内的所有的成员。有序集成员按分数值递减(从大到小)的次序排列。

具有相同分数值的成员按字典序的逆序(reverse lexicographical order)排列。

除了成员按分数值递减的次序排列这一点外，`ZREVRANGEBYSCORE`命令的其他方面和`ZRANGEBYSCORE`命令一样。

**语法**

```bash
127.0.0.1:6379> ZREVRANGEBYSCORE key max min [WITHSCORES] [LIMIT offset count]
```

**返回值**

指定区间内，带有分数值(可选)的有序集成员的列表

**示例**

```bash
127.0.0.1:6379> ZADD salary 10086 jack
(integer) 1
> ZADD salary 5000 tom
(integer) 1
127.0.0.1:6379> ZADD salary 7500 peter
(integer) 1
127.0.0.1:6379> ZADD salary 3500 joe
(integer) 1
127.0.0.1:6379> ZREVRANGEBYSCORE salary +inf -inf
1) "jack"
2) "peter"
3) "tom"
4) "joe"
127.0.0.1:6379> ZREVRANGEBYSCORE salary 10000 2000
1) "peter"
2) "tom"
3) "joe"
```

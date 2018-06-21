## Redis Zrevrange命令

Redis `Zrevrange`命令返回有序集中，指定区间内的成员。

其中成员的位置按分数值递减(从大到小)来排列。

具有相同分数值的成员按字典序的逆序(reverse lexicographical order)排列。

除了成员按分数值递减的次序排列这一点外，`ZREVRANGE`命令的其他方面和`ZRANGE`命令一样。

**语法**

```bash
127.0.0.1:6379> ZREVRANGE key start stop [WITHSCORES]
```

**返回值**

指定区间内，带有分数值(可选)的有序集成员的列表

**示例**

```bash
127.0.0.1:6379> ZRANGE salary 0 -1 WITHSCORES
1) "peter"
2) "3500"
3) "tom"
4) "4000"
5) "jack"
6) "5000"
127.0.0.1:6379> ZREVRANGE salary 0 -1 WITHSCORES
1) "jack"
2) "5000"
3) "tom"
4) "4000"
5) "peter"
6) "3500"
```

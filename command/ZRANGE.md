## Redis Zrange命令

Redis `Zrange`返回有序集中，指定区间内的成员。

其中成员的位置按分数值递增(从小到大)来排序。

具有相同分数值的成员按字典序(lexicographical order)来排列。

如果你需要成员按值递减(从大到小)来排列，请使用`ZREVRANGE`命令。

下标参数`start`和`stop`都以`0`为底，也就是说，以`0`表示有序集第一个成员，以`1`表示有序集第二个成员，以此类推。

你也可以使用负数下标，以`-1`表示最后一个成员，`-2`表示倒数第二个成员，以此类推。

**语法**

```bash
127.0.0.1:6379> ZRANGE key start stop [WITHSCORES]
```

**返回值**

指定区间内，带有分数值(可选)的有序集成员的列表

**示例**

```bash
127.0.0.1:6379> ZRANGE salary 0 -1 WITHSCORES
1) "jack"
2) "3500"
3) "tom"
4) "5000"
5) "boss"
6) "10086"
127.0.0.1:6379> ZRANGE salary 1 2 WITHSCORES
1) "tom"
2) "5000"
3) "boss"
4) "10086"
127.0.0.1:6379> ZRANGE salary 0 200000 WITHSCORES
1) "jack"
2) "3500"
3) "tom"
4) "5000"
5) "boss"
6) "10086"
127.0.0.1:6379> ZRANGE salary 200000 3000000 WITHSCORES
(empty list or set)
```

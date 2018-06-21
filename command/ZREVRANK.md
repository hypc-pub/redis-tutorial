## Redis Zrevrank命令

Redis `Zrevrank`命令返回有序集中成员的排名。其中有序集成员按分数值递减(从大到小)排序。

排名以`0`为底，也就是说，分数值最大的成员排名为`0`。

使用`ZRANK`命令可以获得成员按分数值递增(从小到大)排列的排名。

**语法**

```bash
127.0.0.1:6379> ZREVRANK key member
```

**返回值**

* 如果成员是有序集key的成员，返回成员的排名
* 如果成员不是有序集key的成员，返回`nil`

**示例**

```bash
127.0.0.1:6379> ZRANGE salary 0 -1 WITHSCORES
1) "jack"
2) "2000"
3) "peter"
4) "3500"
5) "tom"
6) "5000"
127.0.0.1:6379> ZREVRANK salary peter
(integer) 1
127.0.0.1:6379> ZREVRANK salary tom
(integer) 0
```

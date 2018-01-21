## Redis Zunionstore命令

Redis `Zunionstore`命令计算给定的一个或多个有序集的并集，其中给定key的数量必须以`numkeys`参数指定，并将该并集(结果集)储存到`destination`。

默认情况下，结果集中某个成员的分数值是所有给定集下该成员分数值之和。

**语法**

```bash
127.0.0.1:6379> ZUNIONSTORE destination numkeys key [key ...] [WEIGHTS weight [weight ...]] [AGGREGATE SUM|MIN|MAX]
```

**返回值**

保存到`destination`的结果集的成员数量

**示例**

```bash
127.0.0.1:6379> ZRANGE programmer 0 -1 WITHSCORES
1) "peter"
2) "2000"
3) "jack"
4) "3500"
5) "tom"
6) "5000"
127.0.0.1:6379> ZRANGE manager 0 -1 WITHSCORES
1) "herry"
2) "2000"
3) "mary"
4) "3500"
5) "bob"
6) "4000"
127.0.0.1:6379> ZUNIONSTORE salary 2 programmer manager WEIGHTS 1 3
(integer) 6
127.0.0.1:6379> ZRANGE salary 0 -1 WITHSCORES
1) "peter"
2) "2000"
3) "jack"
4) "3500"
5) "tom"
6) "5000"
7) "herry"
8) "6000"
9) "mary"
10) "10500"
11) "bob"
12) "12000"
```

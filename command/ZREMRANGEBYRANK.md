## Redis Zremrangebyrank命令

Redis `Zremrangebyrank`命令用于移除有序集中，指定排名(rank)区间内的所有成员。

**语法**

```bash
127.0.0.1:6379> ZREMRANGEBYRANK key start stop
```

**返回值**

被移除成员的数量

**示例**

```bash
127.0.0.1:6379> ZADD salary 2000 jack
(integer) 1
127.0.0.1:6379> ZADD salary 5000 tom
(integer) 1
127.0.0.1:6379> ZADD salary 3500 peter
(integer) 1
127.0.0.1:6379> ZREMRANGEBYRANK salary 0 1
(integer) 2
127.0.0.1:6379> ZRANGE salary 0 -1 WITHSCORES
1) "tom"
2) "5000"
```

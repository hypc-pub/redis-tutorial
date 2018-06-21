## Redis Zremrangebyscore命令

Redis `Zremrangebyscore`命令用于移除有序集中，指定分数（score）区间内的所有成员。

**语法**

```bash
127.0.0.1:6379> ZREMRANGEBYSCORE key min max
```

**返回值**

被移除成员的数量

**示例**

```bash
127.0.0.1:6379> ZRANGE salary 0 -1 WITHSCORES
1) "tom"
2) "2000"
3) "peter"
4) "3500"
5) "jack"
6) "5000"
127.0.0.1:6379> ZREMRANGEBYSCORE salary 1500 3500
(integer) 2
127.0.0.1:6379> ZRANGE salary 0 -1 WITHSCORES
1) "jack"
2) "5000"
```

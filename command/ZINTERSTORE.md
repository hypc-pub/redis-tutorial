## Redis Zinterstore命令

Redis `Zinterstore`命令计算给定的一个或多个有序集的交集，其中给定key的数量必须以`numkeys`参数指定，并将该交集(结果集)储存到`destination`。

默认情况下，结果集中某个成员的分数值是所有给定集下该成员分数值之和。

**语法**

```bash
127.0.0.1:6379> ZINTERSTORE destination numkeys key [key ...] [WEIGHTS weight [weight ...]] [AGGREGATE SUM|MIN|MAX]
```

**返回值**

保存到目标结果集的的成员数量

**示例**

```bash
# 有序集 mid_test
127.0.0.1:6379> ZADD mid_test 70 "Li Lei"
(integer) 1
127.0.0.1:6379> ZADD mid_test 70 "Han Meimei"
(integer) 1
127.0.0.1:6379> ZADD mid_test 99.5 "Tom"
(integer) 1

# 另一个有序集 fin_test
127.0.0.1:6379> ZADD fin_test 88 "Li Lei"
(integer) 1
127.0.0.1:6379> ZADD fin_test 75 "Han Meimei"
(integer) 1
127.0.0.1:6379> ZADD fin_test 99.5 "Tom"
(integer) 1

# 交集
127.0.0.1:6379> ZINTERSTORE sum_point 2 mid_test fin_test
(integer) 3

# 显示有序集内所有成员及其分数值
127.0.0.1:6379> ZRANGE sum_point 0 -1 WITHSCORES
1) "Han Meimei"
2) "145"
3) "Li Lei"
4) "158"
5) "Tom"
6) "199"
```

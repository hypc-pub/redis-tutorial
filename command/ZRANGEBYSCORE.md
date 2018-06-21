## Redis Zrangebyscore命令

Redis `Zrangebyscore`返回有序集合中指定分数区间的成员列表。有序集成员按分数值递增(从小到大)次序排列。

具有相同分数值的成员按字典序来排列(该属性是有序集提供的，不需要额外的计算)。

默认情况下，区间的取值使用闭区间(小于等于或大于等于)，你也可以通过给参数前增加`(`符号来使用可选的开区间(小于或大于)。

**语法**

```bash
127.0.0.1:6379> ZRANGEBYSCORE key min max [WITHSCORES] [LIMIT offset count]
```

**返回值**

指定区间内，带有分数值(可选)的有序集成员的列表

**示例**

```bash
# 测试数据
127.0.0.1:6379> ZADD salary 2500 jack
(integer) 0
127.0.0.1:6379> ZADD salary 5000 tom
(integer) 0
127.0.0.1:6379> ZADD salary 12000 peter
(integer) 0

# 显示整个有序集
127.0.0.1:6379> ZRANGEBYSCORE salary -inf +inf
1) "jack"
2) "tom"
3) "peter"

# 显示整个有序集及成员的 score 值
127.0.0.1:6379> ZRANGEBYSCORE salary -inf +inf WITHSCORES
1) "jack"
2) "2500"
3) "tom"
4) "5000"
5) "peter"
6) "12000"

# 显示工资 <=5000 的所有成员
127.0.0.1:6379> ZRANGEBYSCORE salary -inf 5000 WITHSCORES
1) "jack"
2) "2500"
3) "tom"
4) "5000"

# 显示工资大于 5000 小于等于 400000 的成员
127.0.0.1:6379> ZRANGEBYSCORE salary (5000 400000
1) "peter"
```

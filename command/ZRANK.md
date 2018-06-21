## Redis Zrank命令

Redis `Zrank`返回有序集中指定成员的排名。其中有序集成员按分数值递增(从小到大)顺序排列。

**语法**

```bash
127.0.0.1:6379> ZRANK key member
```

**返回值**

* 如果成员是有序集key的成员，返回`member`的排名
* 如果成员不是有序集key的成员，返回`nil`

**示例**

```bash
127.0.0.1:6379> ZRANGE salary 0 -1 WITHSCORES
1) "peter"
2) "3500"
3) "tom"
4) "4000"
5) "jack"
6) "5000"
127.0.0.1:6379> ZRANK salary tom
(integer) 1
```

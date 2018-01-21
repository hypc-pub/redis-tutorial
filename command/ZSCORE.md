## Redis Zscore命令

Redis `Zscore`命令返回有序集中，成员的分数值。如果成员元素不是有序集key的成员，或key不存在，返回`nil`。

**语法**

```bash
127.0.0.1:6379> ZSCORE key member
```

**返回值**

成员的分数值，以字符串形式表示

**示例**

```bash
127.0.0.1:6379> ZRANGE salary 0 -1 WITHSCORES
1) "tom"
2) "2000"
3) "peter"
4) "3500"
5) "jack"
6) "5000"
127.0.0.1:6379> ZSCORE salary peter
"3500"
```

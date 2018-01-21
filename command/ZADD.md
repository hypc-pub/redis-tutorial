## Redis Zadd命令

Redis `Zadd`命令用于将一个或多个成员元素及其分数值加入到有序集当中。

如果某个成员已经是有序集的成员，那么更新这个成员的分数值，并通过重新插入这个成员元素，来保证该成员在正确的位置上。

分数值可以是整数值或双精度浮点数。

如果有序集合key不存在，则创建一个空的有序集并执行`ZADD`操作。

当key存在但不是有序集类型时，返回一个错误。

**语法**

```bash
127.0.0.1:6379> ZADD KEY_NAME SCORE1 VALUE1.. SCOREN VALUEN
```

**返回值**

被成功添加的新成员的数量，不包括那些被更新的、已经存在的成员

**示例**

```bash
127.0.0.1:6379> ZADD myzset 1 "one"
(integer) 1
127.0.0.1:6379> ZADD myzset 1 "uno"
(integer) 1
127.0.0.1:6379> ZADD myzset 2 "two" 3 "three"
(integer) 2
127.0.0.1:6379> ZRANGE myzset 0 -1 WITHSCORES
1) "one"
2) "1"
3) "uno"
4) "1"
5) "two"
6) "2"
7) "three"
8) "3"
```

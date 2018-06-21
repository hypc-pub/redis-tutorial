## Redis Zrem命令

Redis `Zrem`命令用于移除有序集中的一个或多个成员，不存在的成员将被忽略。

当key存在但不是有序集类型时，返回一个错误。

**语法**

```bash
127.0.0.1:6379> ZREM key member [member ...]
```

**返回值**

被成功移除的成员的数量，不包括被忽略的成员

**示例**

```bash
# 测试数据
127.0.0.1:6379> ZRANGE page_rank 0 -1 WITHSCORES
1) "bing.com"
2) "8"
3) "baidu.com"
4) "9"
5) "google.com"
6) "10"

# 移除单个元素
127.0.0.1:6379> ZREM page_rank google.com
(integer) 1
127.0.0.1:6379> ZRANGE page_rank 0 -1 WITHSCORES
1) "bing.com"
2) "8"
3) "baidu.com"
4) "9"

# 移除多个元素
127.0.0.1:6379> ZREM page_rank baidu.com bing.com
(integer) 2
127.0.0.1:6379> ZRANGE page_rank 0 -1 WITHSCORES
(empty list or set)

# 移除不存在元素
127.0.0.1:6379> ZREM page_rank non-exists-element
(integer) 0
```

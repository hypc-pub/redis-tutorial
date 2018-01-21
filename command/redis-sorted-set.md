# Redis有序集合命令

Redis有序集合和集合一样也是string类型元素的集合,且不允许重复的成员。

不同的是每个元素都会关联一个double类型的分数。redis正是通过分数来为集合中的成员进行从小到大的排序。

有序集合的成员是唯一的，但分数(score)却可以重复。

集合是通过哈希表实现的，所以添加，删除，查找的复杂度都是`O(1)`。集合中最大的成员数为 $$2^{32} - 1$$ (超过40亿)。

!INCLUDE "ZADD.md"

!INCLUDE "ZCARD.md"

!INCLUDE "ZCOUNT.md"

!INCLUDE "ZINCRBY.md"

!INCLUDE "ZINTERSTORE.md"

!INCLUDE "ZLEXCOUNT.md"

!INCLUDE "ZRANGE.md"

!INCLUDE "ZRANGEBYLEX.md"

!INCLUDE "ZRANGEBYSCORE.md"

!INCLUDE "ZRANK.md"

!INCLUDE "ZREM.md"

!INCLUDE "ZREMRANGEBYLEX.md"

!INCLUDE "ZREMRANGEBYRANK.md"

!INCLUDE "ZREMRANGEBYSCORE.md"

!INCLUDE "ZREVRANGE.md"

!INCLUDE "ZREVRANGEBYSCORE.md"

!INCLUDE "ZREVRANK.md"

!INCLUDE "ZSCORE.md"

!INCLUDE "ZUNIONSTORE.md"

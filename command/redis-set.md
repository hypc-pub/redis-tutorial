# Redis集合命令

Redis的Set是String类型的无序集合。集合成员是唯一的，这就意味着集合中不能出现重复的数据。

Redis中集合是通过哈希表实现的，所以添加，删除，查找的复杂度都是`O(1)`。

集合中最大的成员数为 $$2^{32} - 1$$(超过40亿)。

!INCLUDE "SADD.md"

!INCLUDE "SCARD.md"

!INCLUDE "SDIFF.md"

!INCLUDE "SDIFFSTORE.md"

!INCLUDE "SINTER.md"

!INCLUDE "SINTERSTORE.md"

!INCLUDE "SISMEMBER.md"

!INCLUDE "SMEMBERS.md"

!INCLUDE "SMOVE.md"

!INCLUDE "SPOP.md"

!INCLUDE "SRANDMEMBER.md"

!INCLUDE "SREM.md"

!INCLUDE "SUNION.md"

!INCLUDE "SUNIONSTORE.md"

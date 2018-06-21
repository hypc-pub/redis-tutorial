## Redis Srandmember命令

Redis `Srandmember`命令用于返回集合中的一个随机元素。

从Redis 2.6版本开始，`Srandmember`命令接受可选的`count`参数：

* 如果`count`为正数，且小于集合基数，那么命令返回一个包含`count`个元素的数组，数组中的元素各不相同。如果`count`大于等于集合基数，那么返回整个集合。
* 如果`count`为负数，那么命令返回一个数组，数组中的元素可能会重复出现多次，而数组的长度为`count`的绝对值。

该操作和`SPOP`相似，但`SPOP`将随机元素从集合中移除并返回，而`Srandmember`则仅仅返回随机元素，而不对集合进行任何改动。

**语法**

```bash
127.0.0.1:6379> SRANDMEMBER KEY [count]
```

**返回值**

* 只提供集合key参数时，返回一个元素
* 如果集合为空，返回`nil`
* 如果提供了`count`参数，那么返回一个数组；如果集合为空，返回空数组

**示例**

```bash
127.0.0.1:6379> SADD myset1 "hello"
(integer) 1
127.0.0.1:6379> SADD myset1 "world"
(integer) 1
127.0.0.1:6379> SADD myset1 "bar"
(integer) 1
127.0.0.1:6379> SRANDMEMBER myset1
"bar"
127.0.0.1:6379> SRANDMEMBER myset1 2
1) "Hello"
2) "world"
```

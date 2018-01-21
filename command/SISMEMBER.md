## Redis Sismember命令

Redis `Sismember`命令判断成员元素是否是集合的成员。

**语法**

```bash
127.0.0.1:6379> SISMEMBER KEY VALUE
```

**返回值**

* 如果成员元素是集合的成员，返回`1`
* 如果成员元素不是集合的成员，或key不存在，返回`0`

**示例**

```bash
127.0.0.1:6379> SADD myset1 "hello"
(integer) 1
127.0.0.1:6379> SISMEMBER myset1 "hello"
(integer) 1
127.0.0.1:6379> SISMEMBER myset1 "world"
(integer) 0
```

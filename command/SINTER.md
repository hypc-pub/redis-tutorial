## Redis Sinter命令

Redis `Sinter`命令返回给定所有给定集合的交集。不存在的集合key被视为空集。当给定集合当中有一个空集时，结果也为空集(根据集合运算定律)。

**语法**

```bash
127.0.0.1:6379> SINTER KEY KEY1..KEYN
```

**返回值**

交集成员的列表

**示例**

```bash
127.0.0.1:6379> SADD myset "hello"
(integer) 1
127.0.0.1:6379> SADD myset "foo"
(integer) 1
127.0.0.1:6379> SADD myset "bar"
(integer) 1
127.0.0.1:6379> SADD myset2 "hello"
(integer) 1
127.0.0.1:6379> SADD myset2 "world"
(integer) 1
127.0.0.1:6379> SINTER myset myset2
1) "hello"
```

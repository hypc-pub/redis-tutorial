## Redis Spop命令

Redis `Spop`命令用于移除并返回集合中的一个随机元素。

**语法**

```bash
127.0.0.1:6379> SPOP KEY_NAME
```

**返回值**

* 被移除的随机元素
* 当集合不存在或是空集时，返回`nil`

**示例**

```bash
127.0.0.1:6379> SADD myset1 "hello"
(integer) 1
127.0.0.1:6379> SADD myset1 "world"
(integer) 1
127.0.0.1:6379> SADD myset1 "bar"
(integer) 1
127.0.0.1:6379> SPOP myset1
"bar"
127.0.0.1:6379> SMEMBERS myset1
1) "Hello"
2) "world"
```

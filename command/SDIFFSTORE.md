## Redis Sdiffstore命令

Redis `Sdiffstore`命令将给定集合之间的差集存储在指定的集合中。如果指定的集合key已存在，则会被覆盖。

**语法**

```bash
127.0.0.1:6379> SDIFFSTORE DESTINATION_KEY KEY1..KEYN
```

**返回值**

结果集中的元素数量

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
127.0.0.1:6379> SDIFFSTORE destset myset myset2
(integer) 2
127.0.0.1:6379> SMEMBERS destset
1) "foo"
2) "bar"
```

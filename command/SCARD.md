## Redis Scard命令

Redis `Scard`命令返回集合中元素的数量。

**语法**

```bash
127.0.0.1:6379> SCARD KEY_NAME
```

**返回值**

* 集合的数量
* 当集合key不存在时，返回`0`

**示例**

```bash
127.0.0.1:6379> SADD myset "hello"
(integer) 1
127.0.0.1:6379> SADD myset "foo"
(integer) 1
127.0.0.1:6379> SADD myset "hello"
(integer) 0
127.0.0.1:6379> SCARD myset
(integer) 2
```

## Redis Llen命令

Redis `Llen`命令用于返回列表的长度。如果列表key不存在，则key被解释为一个空列表，返回`0`。如果key不是列表类型，返回一个错误。

**语法**

```bash
127.0.0.1:6379> LLEN KEY_NAME
```

**返回值**

列表的长度

**示例**

```bash
127.0.0.1:6379> RPUSH list1 "foo"
(integer) 1
127.0.0.1:6379> RPUSH list1 "bar"
(integer) 2
127.0.0.1:6379> LLEN list1
(integer) 2
```

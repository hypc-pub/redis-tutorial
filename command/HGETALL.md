## Redis Hgetall命令

Redis`Hgetall`命令用于返回哈希表中，所有的字段和值。

在返回值里，紧跟每个字段名(field_name)之后是字段的值(value)，所以返回值的长度是哈希表大小的两倍。

**语法**

```bash
127.0.0.1:6379> HGETALL KEY_NAME
```

**返回值**

* 以列表形式返回哈希表的字段及字段值
* 若key不存在，返回空列表

**示例**

```bash
127.0.0.1:6379> HSET myhash field1 "Hello"
(integer) 1
127.0.0.1:6379> HSET myhash field2 "World"
(integer) 1
127.0.0.1:6379> HGETALL myhash
1) "field1"
2) "Hello"
3) "field2"
4) "World"
```

# Redis数据类型

Redis支持`5`种数据类型。

## 字符串

Redis中的字符串是一个字节序列。Redis中的字符串是二进制安全的，这意味着它们的长度不由任何特殊的终止字符决定。因此，可以在一个字符串中存储高达`512`兆字节的任何内容。

```shell
127.0.0.1:6379> SET mykey redis
OK
127.0.0.1:6379> GET mykey
"redis"
```

## 散列/哈希

Redis散列/哈希(Hashes)是键值对的集合。Redis散列/哈希是字符串字段和字符串值之间的映射。因此，它们用于表示对象。

```shell
127.0.0.1:6379> HMSET ukey username "admin" password "admin123" points 200
```

每个散列/哈希可以存储多达 $$2^{32} - 1$$ 个健-值对(超过`40`亿个)。

## 列表

Redis列表只是字符串列表，按插入顺序排序。您可以向Redis列表的头部或尾部添加元素。

```shell
127.0.0.1:6379> LPUSH mylist redis
(integer) 1
127.0.0.1:6379> LPUSH mylist mongodb
(integer) 2
127.0.0.1:6379> LPUSH mylist sqlite
(integer) 3
127.0.0.1:6379> LRANGE mylist 0 10
1) "sqlite"
2) "mongodb"
3) "redis"
```

列表的最大长度为 $$2^{32} - 1$$ 个元素(超过`40`亿个)。

## 集合

Redis集合是字符串的无序集合。在Redis中，您可以添加，删除和测试成员存在的时间`O(1)`复杂性。

```shell
127.0.0.1:6379> SADD myset redis
(integer) 1
127.0.0.1:6379> SADD myset mongodb
(integer) 1
127.0.0.1:6379> SADD myset sqlite
(integer) 1
127.0.0.1:6379> SADD myset sqlite
(integer) 0
127.0.0.1:6379> SMEMBERS myset
1) "sqlite"
2) "mongodb"
3) "redis"
```

一个集合中的最大成员数量为 $$2^{32} - 1$$ 个。

## 可排序集合

Redis可排序集合类似于Redis集合，是不重复的字符集合。 不同之处在于，排序集合的每个成员都与分数相关联，这个分数用于按最小分数到最大分数来排序的排序集合。虽然成员是唯一的，但分数值可以重复。

```shell
127.0.0.1:6379> ZADD mykey 0 redis
(integer) 1
127.0.0.1:6379> ZADD mykey 0 mongodb
(integer) 1
127.0.0.1:6379> ZADD mykey 1 sqlite
(integer) 1
127.0.0.1:6379> ZADD mykey 1 sqlite
(integer) 0
127.0.0.1:6379> ZRANGEBYSCORE mykey 0 1000
1) "mongodb"
2) "redis"
3) "sqlite"
```

## Redis Msetnx命令

Redis`Msetnx`命令用于所有给定key都不存在时，同时设置一个或多个key-value对。

**语法**

```bash
127.0.0.1:6379> MSETNX key1 value1 key2 value2 .. keyN valueN
```

**返回值**

* 当所有key都成功设置，返回`1`
* 如果所有给定key都设置失败(至少有一个 key 已经存在)，那么返回`0`

**示例**

```bash
127.0.0.1:6379> MSETNX rmdbs "MySQL" nosql "MongoDB" key-value-store "redis"
(integer) 1
127.0.0.1:6379> MGET rmdbs nosql key-value-store
1) "MySQL"
2) "MongoDB"
3) "redis"
127.0.0.1:6379> MSETNX rmdbs "Sqlite" language "python"
(integer) 0
127.0.0.1:6379> EXISTS language
(integer) 0
127.0.0.1:6379> GET rmdbs
"MySQL"
```

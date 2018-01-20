## Redis Mget命令

Redis`Mget`命令返回所有(一个或多个)给定key的值。 如果给定的key里面，有某个key不存在，那么这个key返回特殊值`nil`。

**语法**

```bash
127.0.0.1:6379> MGET KEY1 KEY2 .. KEYN
```

**返回值**

一个包含所有给定key的值的列表

**示例**

```bash
127.0.0.1:6379> SET key1 "hello"
OK
127.0.0.1:6379> SET key2 "world"
OK
127.0.0.1:6379> MGET key1 key2 key3
1) "Hello"
2) "World"
3) (nil)
```

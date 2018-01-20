## Redis Mset命令

Redis`Mset`命令用于同时设置一个或多个key-value对。

**语法**

```shell
127.0.0.1:6379> MSET key1 value1 key2 value2 .. keyN valueN
```

**返回值**

总是返回`OK`

**示例**

```shell
127.0.0.1:6379> MSET key1 "Hello" key2 "World"
OK
127.0.0.1:6379> GET key1
"Hello"
127.0.0.1:6379> GET key2
"World"
```

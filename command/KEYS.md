## Redis KEYS 命令

Redis`KEYS`命令用于搜索具有匹配模式的键。

**语法**

```bash
127.0.0.1:6379> KEYS PATTERN
```

**返回值**

具有匹配模式的键列表(Array)。

**示例**

```bash
127.0.0.1:6379> SET mykey1 "redis"
OK
127.0.0.1:6379> SET mykey2 "mysql"
OK
127.0.0.1:6379> SET mykey3 "mongodb"
OK
127.0.0.1:6379> KEYS mykey*
1) "mykey2"
2) "mykey1"
3) "mykey3"
```

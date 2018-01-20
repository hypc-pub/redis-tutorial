## Redis Incrbyfloat命令

Redis`Incrbyfloat`命令为key中所储存的值加上指定的浮点数增量值。

如果key不存在，那么`INCRBYFLOAT`会先将key的值设为`0`，再执行加法操作。

**语法**

```bash
127.0.0.1:6379> INCRBYFLOAT KEY_NAME INCR_AMOUNT
```

**返回值**

执行命令之后key的值

**示例**

```bash
127.0.0.1:6379> SET mykey 10.50
OK
127.0.0.1:6379> INCRBYFLOAT mykey 0.1
"10.6"
127.0.0.1:6379> SET mykey 314e-2
OK
127.0.0.1:6379> GET mykey
"314e-2"
127.0.0.1:6379> INCRBYFLOAT mykey 0
"3.14"
127.0.0.1:6379> SET mykey 3
OK
127.0.0.1:6379> INCRBYFLOAT mykey 1.1
"4.1"
127.0.0.1:6379> SET mykey 3.0
OK
127.0.0.1:6379> GET mykey
"3.0"
127.0.0.1:6379> INCRBYFLOAT mykey 1.000000000000000000000
"4"
127.0.0.1:6379> GET mykey
"4"
```

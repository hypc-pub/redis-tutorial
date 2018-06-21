## Redis Hincrbyfloat命令

Redis `Hincrbyfloat`命令用于为哈希表中的字段值加上指定浮点数增量值。

如果指定的字段不存在，那么在执行命令前，字段的值被初始化为`0`。

**语法**

```bash
127.0.0.1:6379> HINCRBYFLOAT KEY_NAME FIELD_NAME INCR_BY_NUMBER
```

**返回值**

执行`Hincrbyfloat`命令之后，哈希表中字段的值

**示例**

```bash
127.0.0.1:6379> HSET mykey field 10.50
(integer) 1
127.0.0.1:6379> HINCRBYFLOAT mykey field 0.1
"10.60000000000000001"
127.0.0.1:6379> HINCRBYFLOAT mykey field -5
"5.59999999999999964"
127.0.0.1:6379> HSET mykey field 5.0e3
(integer) 0
127.0.0.1:6379> HINCRBYFLOAT mykey field 2.0e2
"5200"
```

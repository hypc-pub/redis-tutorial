## Redis Hincrby命令

Redis `Hincrby`命令用于为哈希表中的字段值加上指定增量值。

增量也可以为负数，相当于对指定字段进行减法操作。

如果哈希表的key不存在，一个新的哈希表被创建并执行`HINCRBY`命令。

如果指定的字段不存在，那么在执行命令前，字段的值被初始化为`0`。

对一个储存字符串值的字段执行`HINCRBY命令将造成一个错误。

本操作的值被限制在64位(bit)有符号数字表示之内。

**语法**

```bash
127.0.0.1:6379> HINCRBY KEY_NAME FIELD_NAME INCR_BY_NUMBER
```

**返回值**

执行`HINCRBY`命令之后，哈希表中字段的值

**示例**

```bash
127.0.0.1:6379> HSET myhash field 5
(integer) 1
127.0.0.1:6379> HINCRBY myhash field 1
(integer) 6
127.0.0.1:6379> HINCRBY myhash field -1
(integer) 5
127.0.0.1:6379> HINCRBY myhash field -10
(integer) -5
```

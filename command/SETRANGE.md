## Redis Setrange命令

Redis`Setrange`命令用指定的字符串覆盖给定key所储存的字符串值，覆盖的位置从偏移量`OFFSET`开始。

**语法**

```bash
127.0.0.1:6379> SETRANGE KEY_NAME OFFSET VALUE
```

**返回值**

被修改后的字符串长度

**示例**

```bash
127.0.0.1:6379> SET key1 "Hello World"
OK
127.0.0.1:6379> SETRANGE key1 6 "Redis"
(integer) 11
127.0.0.1:6379> GET key1
"Hello Redis"
```

## Redis Setbit命令

Redis`Setbit`命令用于对key所储存的字符串值，设置或清除指定偏移量上的位(bit)。

**语法**

```bash
127.0.0.1:6379> SETBIT KEY_NAME OFFSET
```

**返回值**

指定偏移量原来储存的位

**示例**

```bash
127.0.0.1:6379> SETBIT bit 100 1
(integer) 0
127.0.0.1:6379> GETBIT bit 100
(integer) 1
127.0.0.1:6379> GETBIT bit 10
(integer) 0
```

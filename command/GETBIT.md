## Redis Getbit命令

Redis`Getbit`命令用于对key所储存的字符串值，获取指定偏移量上的位(bit)。

**语法**

```bash
127.0.0.1:6379> GETBIT KEY_NAME OFFSET
```

**返回值**

字符串值指定偏移量上的位(bit)。

当偏移量`OFFSET`比字符串值的长度大，或者key不存在时，返回`0`

**示例**

```bash
127.0.0.1:6379> EXISTS bit
(integer) 0
127.0.0.1:6379> GETBIT bit 100
(integer) 0
127.0.0.1:6379> SETBIT bit 100 1
(integer) 0
127.0.0.1:6379> GETBIT bit 100
(integer) 1
```

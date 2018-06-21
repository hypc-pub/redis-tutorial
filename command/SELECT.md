## Redis Select命令

Redis`Select`命令用于切换到指定的数据库，数据库索引号`index`用数字值指定，以`0`作为起始索引值。

**语法**

```bash
127.0.0.1:6379> SELECT index
```

**返回值**

总是返回`OK`

**示例**

```bash
127.0.0.1:6379> SELECT 1
OK
```

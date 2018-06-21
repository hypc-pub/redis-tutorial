## Redis Type命令

Redis`TYPE`命令用于获取存储在键中的值的数据类型。

**语法**

```bash
127.0.0.1:6379> TYPE KEY_NAME
```

**返回值**

返回一个字符串，它是存储在键中的值的数据类型或`none`。

**示例**

```bash
127.0.0.1:6379> SET mykey "redis"
OK
127.0.0.1:6379> TYPE mykey
string
127.0.0.1:6379> TYPE mykey2
none
```

## Redis Getrange命令

Redis`Getrange`命令用于获取存储在指定key中字符串的子字符串。字符串的截取范围由`start`和`end`两个偏移量决定(包括`start`和`end`在内)。

**语法**

```bash
127.0.0.1:6379> GETRANGE KEY_NAME start end
```

**返回值**

截取得到的子字符串

**示例**

```bash
127.0.0.1:6379> SET mykey "This is my test key"
OK
127.0.0.1:6379> GETRANGE mykey 0 3
"This"
127.0.0.1:6379> GETRANGE mykey 0 -1
"This is my test key"
```

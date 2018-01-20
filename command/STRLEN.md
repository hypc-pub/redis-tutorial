## Redis Strlen命令

Redis`Strlen`命令用于获取指定key所储存的字符串值的长度。当key储存的不是字符串值时，返回一个错误。

**语法**

```shell
127.0.0.1:6379> STRLEN KEY_NAME
```

**返回值**

字符串值的长度。 当 key 不存在时，返回 0

**示例**

```shell
127.0.0.1:6379> SET mykey "Hello world"
OK
127.0.0.1:6379> STRLEN mykey
(integer) 11
127.0.0.1:6379> STRLEN nonexisting
(integer) 0
```

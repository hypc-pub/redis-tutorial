## Redis Append命令

Redis`Append`命令用于为指定的key追加值。

如果key已经存在并且是一个字符串，`APPEND`命令将value追加到key原来的值的末尾。

如果key不存在，`APPEND`就简单地将给定key设为value，就像执行`SET key value`一样。

**语法**

```bash
127.0.0.1:6379> APPEND KEY_NAME NEW_VALUE
```

**返回值**

追加指定值之后，key中字符串的长度

**示例**

```bash
127.0.0.1:6379> EXISTS myphone
(integer) 0
127.0.0.1:6379> APPEND myphone "nokia"
(integer) 5
127.0.0.1:6379> APPEND myphone " - 1110"
(integer) 12
127.0.0.1:6379> GET myphone
"nokia - 1110"
```

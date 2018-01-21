## Redis Rpop命令

Redis `Rpop`命令用于移除并返回列表的最后一个元素。

**语法**

```bash
127.0.0.1:6379> RPOP KEY_NAME
```

**返回值**

* 列表的最后一个元素
* 当列表不存在时，返回`nil`

**示例**

```bash
127.0.0.1:6379> RPUSH mylist "one"
(integer) 1
127.0.0.1:6379> RPUSH mylist "two"
(integer) 2
127.0.0.1:6379> RPUSH mylist "three"
(integer) 3
127.0.0.1:6379> RPOP mylist
"three"
127.0.0.1:6379> LRANGE mylist 0 -1
1) "one"
2) "two"
```

## Redis Lpop命令

Redis `Lpop`命令用于移除并返回列表的第一个元素。

**语法**

```bash
127.0.0.1:6379> LPOP KEY_NAME
```

**返回值**

* 列表的第一个元素
* 当列表key不存在时，返回`nil`

**示例**

```bash
127.0.0.1:6379> RPUSH list1 "foo"
(integer) 1
127.0.0.1:6379> RPUSH list1 "bar"
(integer) 2
127.0.0.1:6379> LPOP list1
"foo"
```

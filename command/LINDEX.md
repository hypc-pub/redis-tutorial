## Redis Lindex命令

Redis `Lindex`命令用于通过索引获取列表中的元素。你也可以使用负数下标，以`-1`表示列表的最后一个元素，`-2`表示列表的倒数第二个元素，以此类推。

**语法**

```bash
127.0.0.1:6379> LINDEX KEY_NAME INDEX_POSITION
```

**返回值**

* 列表中下标为指定索引值的元素
* 如果指定索引值不在列表的区间范围内，返回`nil`

**示例**

```bash
127.0.0.1:6379> LPUSH mylist "World"
(integer) 1
127.0.0.1:6379> LPUSH mylist "Hello"
(integer) 2
127.0.0.1:6379> LINDEX mylist 0
"Hello"
127.0.0.1:6379> LINDEX mylist -1
"World"
127.0.0.1:6379> LINDEX mylist 3
(nil)
```

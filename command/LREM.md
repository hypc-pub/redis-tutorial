## Redis Lrem命令

Redis `Lrem`根据参数`COUNT`的值，移除列表中与参数`VALUE`相等的元素。

COUNT 的值可以是以下几种：

* $$count > 0$$: 从表头开始向表尾搜索，移除与`VALUE`相等的元素，数量为`COUNT`。
* $$count < 0$$: 从表尾开始向表头搜索，移除与`VALUE`相等的元素，数量为`COUNT`的绝对值。
* $$count = 0$$: 移除表中所有与`VALUE`相等的值。

**语法**

```bash
127.0.0.1:6379> LREM KEY_NAME COUNT VALUE
```

**返回值**

* 被移除元素的数量
* 列表不存在时返回`0`

**示例**

```bash
127.0.0.1:6379> RPUSH mylist "hello"
(integer) 1
127.0.0.1:6379> RPUSH mylist "hello"
(integer) 2
127.0.0.1:6379> RPUSH mylist "foo"
(integer) 3
127.0.0.1:6379> RPUSH mylist "hello"
(integer) 4
127.0.0.1:6379> LREM mylist -2 "hello"
(integer) 2
```

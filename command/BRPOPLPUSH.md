## Redis Brpoplpush命令

Redis `Brpoplpush`命令从列表中弹出一个值，将弹出的元素插入到另外一个列表中并返回它；如果列表没有元素会阻塞列表直到等待超时或发现可弹出元素为止。

**语法**

```bash
127.0.0.1:6379> BRPOPLPUSH LIST1 ANOTHER_LIST TIMEOUT
```

**返回值**

* 假如在指定时间内没有任何元素被弹出，则返回一个`nil`和等待时长
* 反之，返回一个含有两个元素的列表，第一个元素是被弹出元素的值，第二个元素是等待时长

**示例**

```bash
127.0.0.1:6379> BRPOPLPUSH msg reciver 500
"hello world"
(3.38s)
```

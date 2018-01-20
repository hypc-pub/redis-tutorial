## Redis Move命令

Redis`MOVE`命令用于将键从当前选定的数据库移动到指定的目标数据库中。

**语法**

```bash
127.0.0.1:6379> MOVE KEY_NAME DESTINATION_DATABASE
```

**返回值**

一个整数：

* 如果键移动失败，则返回`0`
* 如果键移动成功，则返回`1`

**示例**

```bash
127.0.0.1:6379> SET mykey "redis"
OK
127.0.0.1:6379> get mykey
"redis"
127.0.0.1:6379> MOVE mykey 2
(integer) 1
127.0.0.1:6379> get mykey
(nil)
```

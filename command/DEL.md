## Redis DEL命令

Redis`DEL`命令用于删除Redis中现有/存在的键。

**语法**

```shell
127.0.0.1:6379> DEL KEY_NAME
```

**返回值**

成功删除的键的数量。

**示例**

```shell
127.0.0.1:6379> SET my_key "this is my key"
OK
127.0.0.1:6379> GET my_key
"this is my key"
127.0.0.1:6379> DEL my_key
(integer) 1
127.0.0.1:6379> GET my_key
(nil)
```

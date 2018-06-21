## Redis Pexpire命令

Redis`Pexpire`命令用于以毫秒为单位来设置键的到期时间。 在到期时间后，键将在Redis中失效不可用。

**语法**

```bash
127.0.0.1:6379> PEXPIRE KEY_NAME TIME_IN_MILLISECONDS
```

**返回值**

一个整数：

* 如果成功地为该键设置了超时时间，返回`1`
* 如果键不存在或无法设置超时时间，返回`0`

**示例**

```bash
127.0.0.1:6379> SET my_key redis
OK
127.0.0.1:6379> PEXPIRE my_key 5000
(integer) 1
```

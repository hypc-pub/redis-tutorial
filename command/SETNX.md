## Redis Setnx命令

Redis`Setnx`（`SET if Not eXists`）命令在指定的key不存在时，为key设置指定的值。

**语法**

```bash
127.0.0.1:6379> SETNX KEY_NAME VALUE
```

**返回值**

* 设置成功，返回`1`
* 设置失败，返回`0`

**示例**

```bash
127.0.0.1:6379> EXISTS job
(integer) 0
127.0.0.1:6379> SETNX job "programmer"
(integer) 1
127.0.0.1:6379> SETNX job "code-farmer"
(integer) 0
127.0.0.1:6379> GET job
"programmer"
```

# Redis配置

Redis的配置文件位于Redis安装目录下，文件名为`redis.conf`。

你可以通过`CONFIG`命令查看或设置配置项。

**语法**

```bash
127.0.0.1:6379> CONFIG GET CONFIG_SETTING_NAME
127.0.0.1:6379> CONFIG SET CONFIG_SETTING_NAME NEW_CONFIG_VALUE
```

**示例**

```bash
127.0.0.1:6379> CONFIG GET databases
1) "databases"
2) "16"
127.0.0.1:6379> CONFIG GET port
1) "port"
2) "6379"
127.0.0.1:6379> CONFIG SET loglevel "notice"
OK
```

## 配置参数说明

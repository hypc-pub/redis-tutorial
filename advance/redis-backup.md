# Redis数据备份与恢复

## 备份数据

Redis`SAVE`命令用于创建当前数据库的备份。

**语法**

```bash
127.0.0.1:6379> SAVE
```

该命令将在redis安装目录中创建`dump.rdb`文件。

## 恢复数据

如果需要恢复数据，只需将备份文件(`dump.rdb`)移动到redis安装目录并启动服务即可。获取redis目录可以使用`CONFIG`命令，如下所示：

```bash
127.0.0.1:6379> CONFIG GET dir
1) "dir"
2) "/usr/local/redis/bin"
```

以上命令`CONFIG GET dir`输出的redis安装目录为`/usr/local/redis/bin`。

## Bgsave

创建redis备份文件也可以使用命令`BGSAVE`，该命令在后台执行。

```bash
127.0.0.1:6379> BGSAVE
Background saving started
```

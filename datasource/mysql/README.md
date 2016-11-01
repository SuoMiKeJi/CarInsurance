# Mysql 数据持久层模块

### 命名规范：
1.  命名 - 尽量见名知义
2.  类名 - 每个单词首字母必须大写，单词之间没有其他符号。
3.  变量名 - 首字母必须小字，从第二个单词开始，每个单词首字母必须大写，单词之间没有其他符号。
4.  常量名 - 所有字母必须大写，单词之间用_连接。
5.  包名 - 所有字母必须小写，单词之间用_连接。
6.  目录名 - 所有字母必须小写，单词之间用_连接。
7.  文件名 - 所有字母必须小写，单词之间用-连接，复合词用_连接。
8.  国际化文件 - 所有字母小字，用_连接语言。
9.  接口名 - 必须以 I 开头。
10. Mapper文件名 - 必须与类的主名一样。
11. ibatis配置文件名 - 必须是mybatis_config.xml。
12. 持久层[读]主文件名必须以 ReadMapper 结尾，即：IXxxxReadMapper
13. 持久层[写]主文件名必须以 WriteMapper 结尾，即：IXxxxWriteMapper

### 模块说明
* xxx.xxx.read 读数据库包名
* xxx.xxx.write 写数据库包名
* sql目录是mysql脚本。


###### Mysql配置文件：
src/main/resources/config/mysql-xxx.properties

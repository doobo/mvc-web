# mvc-web

#### 项目介绍
spring-mvc 起手架，包含日志工具log4j2和OkHttp工具,
添加远程配置中心和单项目多环境配置

#### 软件架构
spring mvc

#### 安装教程

1. 安装zookeeper
    #####下载地址
	http://www-eu.apache.org/dist/zookeeper/
	```
	vi conf/zoo.cfg
	```
	#####单节点配置
    ```
    dataLogDir=/tmp/zookeeper
    dataDir=/opt/zookeeper_data
    server.1=localhost:2888:3888
    ```
 	#####集群配置
    ```aidl
    tickTime=2000
    dataDir=/home/lidong/zookeeper
    clientPort=2181
    initLimit=5
    syncLimit=2
    server.1=192.168.0.105:2888:3888
    server.2=192.168.0.108:2888:3888
    server.2=192.168.0.112:2888:3888
    ```
	
2. 安装xxl-conf
    #####下载地址
    https://github.com/xuxueli/xxl-conf/releases
    #####初始化数据库
    xxl-conf/doc/db/xxl-conf.sql
    ```
    mysql -uroot -p
    source xxl-conf.sql
    ```
    #####解压编译
    ```
    cd xxl-conf/xxl-conf-admin
    mvn clean install -DskipTests
    java -jar xxl-conf-admin.jar --mysqladdress=127.0.0.1:3306 --mysqlusername=root --mysqlpassword=passwd --zkaddress=ipav.vip:2181 --server.port=8080
    地址：http://localhost:8080/xxl-conf-admin
    ```

#### 使用说明
1. xxl-conf-sample-spring：spring版本
2. xxl-conf-sample-springboot：springboot版本
3. xxl-conf-sample-jfinal：jfinal版本
#####设置“XXL-CONF 配置工厂”
```
    @Bean
    public XxlConfFactory xxlConfFactory() {
        XxlConfFactory xxlConf = new XxlConfFactory();
        xxlConf.setZkaddress(zkaddress);
        xxlConf.setZkdigest(zkdigest);
        xxlConf.setEnv(env);
        xxlConf.setMirrorfile(mirrorfile);
    
        logger.info(">>>>>>>>>>> xxl-conf config init.");
        return xxlConf;
    }
   ```
    
###CentOS安装Oracle JDK
```
    rpm -qa|grep java 		#查看有哪些openjdk版本
    rpm -qa | grep jdk | xargs rpm -e --nodeps  #删除openjdk
    wget --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie;" https://***/jdk-8u162-linux-x64.rpm		#下载rpm包，地址到oracle官网找
    rpm -ivh jdk***.rpm		#安装JDK
    #添加环境变量
    JAVA_HOME=/usr/java/jdk1.8.0_172-amd64/
    CLASSPATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar
    PATH=$PATH:$JAVA_HOME/bin
    export JAVA_HOME PATH CLASSPATH
```

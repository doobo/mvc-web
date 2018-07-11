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
    #log目录会频频写入，磁盘性能要好点，重新初始化要清空这两个目录
    dataLogDir=/opt/zookeeper_log
    dataDir=/opt/zookeeper_data
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
    #####简单权限配置
    ```
//一般授权过程,只对该节点有效,不继承权限;删除的权限,在父节点,和Linux权限相似
echo -n zookeeper:zookeeper | openssl dgst -binary -sha1 | openssl base64  //编译密码，用于设置权限
setAcl /zookeeper/quota digest:zookeeper:4lvlzsipXVaEhXMd+2qMrLc0at8=:rwdca
setAcl /zookeeper digest:zookeeper:4lvlzsipXVaEhXMd+2qMrLc0at8=:rwdca
setAcl /zookeeper digest:zookeeper:4lvlzsipXVaEhXMd+2qMrLc0at8=:rwdca
create /xxl-coof xxl-conf		//创建节点，后面设置权限
setAcl /xxl-coof digest:zookeeper:4lvlzsipXVaEhXMd+2qMrLc0at8=:rwdca
setAcl / digest:zookeeper:4lvlzsipXVaEhXMd+2qMrLc0at8=:rwdca //根节点设置权限

//现在使用ls get等命令之前，需要授权
addauth digest zookeeper:zookeeper  //授权
ls /		#查看节点
    ```
#####忘记授权账号或密码
a、修改zoo.cfg配置文件
    skipACL=yes #所有操作多跳过权限检测，重启哦

b、使用父节点的删除权限，删除子节点
    delete /childNode

c、删除zookeeper的data目录和log目录，重启

d、使用超级管理员权限super:admin -->  super:xQJmxLMiHGwaqBvst5y6rkB6HQs=
    vi zkServer.sh
    #找到 nohup $JAVA ....,添加下面语句
    "-Dzookeeper.DigestAuthenticationProvider.superDigest=super:xQJmxLMiHGwaqBvst5y6rkB6HQs="
    #重启服务，进入zookeeper，用超级管理员账号授权
    addauth digest super:admin
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
    wget --no-cook	ies --header "Cookie: oraclelicense=acce	pt-securebackup-cookie;" https://***/jdk-8u162-linux-x64.rpm		#下载rpm包，地址到oracle官网找
    rpm -ivh jdk***.rpm		#安装JDK
    #添加环境变量
    JAVA_HOME=/usr/java/jdk1.8.0_172-amd64/
    CLASSPATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar
    PATH=$PATH:$JAVA_HOME/bin
    export JAVA_HOME PATH CLASSPATH
```

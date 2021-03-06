title: 依赖的更新与缓存
---
#### 更新依赖
　　在执行build、compile等任务时会解析项目配置的依赖并按照配置的仓库去搜寻下载这些依赖。默认情况下，Gradle会依照Gradle缓存->你配置的仓库的顺序依次搜寻这些依赖，并且一旦找到就会停止搜索。如果想要忽略本地缓存每次都进行远程检索可以通过在执行命令时添加`--refresh-dependencies`参数来强制刷新依赖。
```bash
	gradle build --refresh-dependencies
```
#### 缓存管理

##### 缓存位置管理
　　Gradle在按照配置的仓库去搜寻下载依赖时，下载的依赖默认会缓存到USER_HOME/.gradle目录下，当然也可以手工修改这个位置。
　　具体可以参考如下三种方式：
  
- 通过添加系统变量 GRADLE_USER_HOME
- 设置虚拟机参数 org.gradle.user.home 属性
- 通过命令行-g或者 --gradle-user-home 参数设置 

##### 离线模式（总是采用缓存内容）
　　Gradle提供了一种离线模式，可以让你构建时总是采用缓存的内容而无需去联网检查，这无疑是提高构建速度的一个好选择。开启离线模式只需要在执行命令时候添加`--offline`参数即可。当然，采用这种模式的也是有代价的，如果缓存中搜寻不到所需依赖会导致构建失败。
```bash
	gradle build --offline
```
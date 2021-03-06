title: 依赖的传递与排除
---
#### 什么是传递依赖
	//todo 待补充
#### 排除传递依赖
　　有些时候你可能需要排除一些传递性依赖中的某个模块，此时便不能靠单纯的关闭依赖传递特性来解决了。这时`exclude`就该登场了，如果说`@jar`彻底的解决了传递问题，那么`exclude`则是部分解决了传递问题。然而实际上`exclude`肯能还会用的频率更更频繁一些，比如下面几种情况。
  
- 依赖冲突时，如果有两个依赖引用了相同jar包的不同版本时，默认情况下gradle会采用最新版本的jar包，此时可以通过排除选项来排除。
- 运行期无需此模块的。
- 无法正常获取到此传递依赖，远程仓库都不存在的。
- 版权原因需要排除的。
- 其他原因。

可以通过configuration配置或者在依赖声明时添加`exclude`的方式来排除指定的引用。

exclude可以接收group和module两个参数，这两个参数可以单独使用也可以搭配使用，其中module可以理解为对应GAV中的artifactId，也就是`compile group: 'org.gradle.test.classifiers', name: 'service', version: '1.0'`中的中间name部分。
```groovy
configurations {
	//编译期排除commons模块
    compile.exclude module: 'commons'
    //在整个构建过程中排除pkaq.tiger：share
    all*.exclude group: 'pkaq.tiger', module: 'share'
}

dependencies {
    compile("pkaq.tiger:web:1.0") {
        exclude module: 'share'
    }
}
```
#### 强制传递依赖版本
当然，有时候你可能仅仅是需要强制使用某个统一的依赖版本，而不是排除他们，那么此时`force`就该登场了。
	//todo 待补充
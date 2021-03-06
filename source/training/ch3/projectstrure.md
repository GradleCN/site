title: 项目结构
---
本文基于gradle2.12版本

#### 标准结构
Gradle遵循COC(convention over configuration约定优于配置)的理念,默认情况下提供了与maven相同的项目结构配置
大体结构如下
- project root
    - src/main/java(测试)
    - src/main/resources
    - src/test/java(测试源码目录)
    - src/test/resources(测试资源目录)
    - src/main/webapp(web工程)

#### 创建标准结构
好在,Gradle提供了一些[内置初始化任务](https://docs.gradle.org/current/userguide/build_init_plugin.html),可以方便的为我们生成默认的目录结构以及示例代码,如下命令会产生如下效果

- 应用`java`插件
- 应用`jcenter()`仓库
- 采用JUnit测试框架
- 创建标准目录结构
- 包含一份示例代码

`“java-library使用示例”`
```
//创建一个java项目,默认使用Junit测试框架
gradle init --type java-library 
//使用spock替代junit
gradle init --type java-library --test-framework spock
//使用testng替代junit
gradle init --type java-library --test-framework testng
```
`“scala-library使用示例”`
`gradle init --type scala-library`

- 应用`scala`插件
- 应用`jcenter()`仓库
- 采用scala2.10
- 应用ScalaTest测试框架
- 采用JUnit测试框架
- 创建标准目录结构
- 包含一份示例代码
- 使用 Zinc Scala 编译器

`“groovy-library使用示例”`
`gradle init --type groovy-library`

- 应用`groovy`插件
- 应用`jcenter()`仓库
- - 采用scala2.x
- 采用Spock测试框架
- 创建标准目录结构
- 包含一份示例代码

#### 非标准结构配置
在一些老项目上,可能目录结构并不是标准结构,然而一般开发人员又不好进行结构调整.此时可以通过配置sourceSet来指定目录结构
```
sourceSets {
    main {
        java {
            srcDir 'src/java'
        }
        resources {
            srcDir 'src/resources'
        }
    }
}
```
或者采用如下写法也是可以的
```
sourceSets {
    main.java.srcDirs = ['src/java']
    main.resources.srcDirs = ['src/resources']
}
```
在android中
```
android {
    sourceSets {
        main {
            manifest.srcFile 'AndroidManifest.xml'
            java.srcDirs = ['src']
            resources.srcDirs = ['src']
            aidl.srcDirs = ['src']
            renderscript.srcDirs = ['src']
            res.srcDirs = ['res']
            assets.srcDirs = ['assets']
        }

        androidTest.setRoot('tests')
    }
}
```

当然如果你的资源目录与源码目录相同这样就比较....了,但你仍然可以按照如下方式搭配`include`和`exclude`进行指定
```
sourceSets {
  main {
    java {
      //your java source paths and exclusions go here...
    }

    resources {
      srcDir 'main/resources'
      include '**/*.properties'
      include '**/*.png'


      srcDir 'src'
      include '**/Messages*.properties'
      exclude '**/*.java'
    }
  }
}
```
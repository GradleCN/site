title: 脚本结构
---
一个简单的Gralde脚本,或许包含如下内容,其中标明可选的都是可以删掉的部分
- 插件引入:声明你所需的插件
- 属性定义(可选):定义扩展属性
- 局部变量(可选):定义局部变量
- 属性修改(可选):指定project自带属性
- 仓库定义:指明要从哪个仓库下载jar包
- 依赖声明:声明项目中需要哪些依赖
- 自定义任务(可选):自定义一些任务

```
//应用插件,这里引入了Gradle的Java插件,此插件提供了Java构建和测试所需的一切。
apply plugin: 'java'
//定义扩展属性(可选)
ext {
	foo="foo"
}
//定义局部变量(可选)
def bar="bar"

//修改项目属性(可选)
group 'pkaq'
version '1.0-SNAPSHOT'

//定义仓库,当然gradle也可以使用各maven库 ivy库 私服 本地文件等,后续章节会详细介绍
repositories {
    jcenter()
}

//定义依赖,这里采用了g:a:v简写方式,加号代表了最新版本
dependencies {
    compile "cn.pkaq:ptj.tiger:+"
}

//自定义任务(可选)
task printFoobar {
	println "${foo}__${bar}"
}
```
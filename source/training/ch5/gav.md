title: 依赖的坐标与范围
---
#### 依赖的坐标
　　仓库中构件（jar包）的坐标是由`groupId、artifactId、version`组成的字符串构成的，在仓库中通过以GAV组成的坐标来定位所需的jar包.在gradle中可以通过以下方式来声明依赖:   
　　```testCompile group: 'junit', name: 'junit', version: '4.0'```    
  
　　这里前面的testCompile是声明依赖的的方位,如果不理解可以暂时忽略,后面会有章节讲到,当然如果你觉得这种方式太过繁琐,可以省略`group、name、version`三个单词,把构件的坐标采用以`:`分割的方式简写为如下方式.    
　　```testCompile 'junit:junit:4.0'```   
  
　　当然更细粒度的`classifier`这里也是支持的,需要你需要可以按如下方式书写   
　　```compile group: 'org.gradle.test.classifiers', name: 'service', version: '1.0', classifier: 'jdk14'```   
　　或者简写为   
　　```compile "org.gradle.test.classifiers:service:1.0:jdk14@jar"```   
  
 #### 依赖的范围
<table><thead><tr><th style="width:150px;">名称</th><th>说明</th></tr></thead><tbody>
<tr><td>compileOnly</td><td>gradle2.12之后版本新添加的,2.12版本时期曾短暂的叫provided,后续版本已经改成了compileOnly,由java插件提供,适用于编译期需要而不需要打包的情况</td></tr>
<tr><td>providedCompile</td><td>war插件提供的范围类型:与compile作用类似,但不会被添加到最终的war包中这是由于编译、测试阶段代码需要依赖此类jar包，而运行阶段容器已经提供了相应的支持，所以无需将这些文件打入到war包中了;例如Servlet API就是一个很明显的例子.</td></tr><tr><td>compile</td><td>编译范围依赖在所有的classpath中可用，同时它们也会被打包。</td></tr><tr>	<td>providedRuntime</td><td>同proiveCompile类似。</td></tr><tr><td>runtime</td><td>	runtime依赖在运行和测试系统的时候需要，但在编译的时候不需要。比如，你可能在编译的时候只需要JDBC API JAR，而只有在运行的时候才需要JDBC驱动实现。 	</td></tr><tr><td>testCompile</td><td>测试期编译需要的附加依赖</td></tr><tr><td>testRuntime</td><td>测试运行期需要</td></tr><tr>	<td>archives</td><td>-</td></tr><tr><td>default</td><td>配置默认依赖范围</td></tr></tbody></table>
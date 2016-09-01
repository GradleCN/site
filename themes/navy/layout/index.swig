<div  class="mountain">
<header id="banner" class="wrapper">
  <div class="inner">
    <div id="banner-start">
          <img src= "{{ url_for('favicon.ico') }}" >
          <h1>Gradle - [中文用户组]</h1>
          <h2>一款简洁而优雅的构建工具</h2>
    </div>
  </div>
</header>
</div>
<div id="content-wrap">
  <div class="wrapper">
    <div class="inner">
      <h1> </h1>
      <!-- 版本发布说明 -->
       <div class="ui vertical stripe segment margin30" style="margin:30px 0;">
          <div class="ui aligned centered stackable two column grid container">
	          <div class="column">
        	  	 {% for post in site.posts %}         	  	 
			         {% if loop.index <= 5 %}
			            <a class="archive-post-link" href="{{ url_for(post.path) }}">
			              <strong class="archive-post-title" itemprop  ="name">{{ post.title}}</strong>			             
			              <span class="archive-post-date">{{ date(post.date) }}</span>	              
			            </a>		          
		        	  {% endif %}
		          {% endfor %}
	          </div>
	          <div class="column">

	          <div class="ui list">
				  <div class="item">
				    <i class="users icon"></i>
				    <div class="content">一个非常灵活的通用构建工具 </div>
				  </div>
				  <div class="item">
				    <i class="marker icon"></i>
				    <div class="content"> 全面支持已有的maven和ivy仓库 </div>
				  </div>
				  <div class="item">
				    <i class="mail icon"></i>
				    <div class="content">  强大的多工程构建支持   </div>
				  </div>
				  <div class="item">
				    <i class="linkify icon"></i>
				    <div class="content"> 强大的依赖管理 支持传递性依赖管理 </div>
				  </div>
				</div>	                  
	          </div>
         </div>
  	  </div>
       
      <!--//END 版本发布说明 -->

      <!-- 广告 -->
      {{ page.content }}

      <!-- 控制台 -->
      <div class="ui vertical stripe segment margin30" style="margin:30px 0;">
          <div class="ui aligned centered stackable two column grid container">
          <div class="column">
            <h3>
              乐享自动化构建带来的喜悦<br /> <small>Realize Build Happiness.</small>
            </h3>
            <p>现在你可以借助Gradle脱离构建所带来的痛苦，一个现代化的、开源的、支持多语种的构建系统。<br>通过简洁的脚本语言可以很容易的集成到你的DevOps工具链中，终结长时间构建，终结代码冻结，结束死亡之旅，<br>终结缺陷回归带来的痛苦，将支离破碎的发布过程有序的统一起来。</p>

          </div>
          <div class="column">
            <div id="terminal"></div>
          </div>
        </div>
  	  </div>
      <! -- // end 控制台 -->
     
      <!-- 这些公司都在用 -->
      <div class="ui vertical stripe segment" style="margin:30px 0;">
          <div class="ui aligned centered stackable grid container">
              <h1 class="ui icon header">
                <i class="thumbs up icon"></i>
                <div class="content">
                  超赞的构建工具 这些公司都在用 
                  <div class="sub header">别在用石器时代的方式去构建项目和管理依赖了!</div>
                </div>
              </h1>
            </div>
            <div class="ui aligned centered stackable six column grid container">
            <!-- 第一行 -->
              <div class="column">
              <img src="{{ url_for('css/img/logos/Team16-Motorola.svg') }}" style="width: 150px; height: 50px;">
              </div>
              <div class="column">
                    <img src="{{ url_for('css/img/logos/Team1-Apple.svg') }}" style="width: 150px; height: 50px;">
              </div>
              <div class="column">
                <img src="{{ url_for('css/img/logos/Team2-Google.svg') }}" style="width: 150px; height: 50px;">
              </div>
              <div class="column">
                <img src="{{ url_for('css/img/logos/Team-Android.svg') }}" style="width: 150px; height: 50px;">
              </div>
            <div class="column">
                <img src="{{ url_for('css/img/logos/Team4-LinkedIn.svg') }}" style="width: 150px; height: 50px;">
              </div>
              <div class="column">
                <img src="{{ url_for('css/img/logos/Team5-Netflix.svg') }}" style="width: 150px; height: 50px;">
              </div>
            <!-- 第二行 -->
            <div class="column">
                <img src="{{ url_for('css/img/logos/Team6-Unity.svg') }}" style="width: 150px; height: 50px;">
              </div>
              <div class="column">
                  <img src="{{ url_for('css/img/logos/Team7-Prezi.svg') }}" style="width: 150px; height: 50px;">
              </div>
              <div class="column">
                <img src="{{ url_for('css/img/logos/Team8-Twitter.svg') }}" style="width: 150px; height: 50px;">
              </div>
              <div class="column">
              <img src="{{ url_for('css/img/logos/Team9-Gap.svg') }}" style="width: 150px; height: 50px;">
              </div>
            <div class="column">
              <img src="{{ url_for('css/img/logos/Team10-Oracle.svg') }}" style="width: 150px; height: 50px;">
              </div>
              <div class="column">
                <img src="{{ url_for('css/img/logos/Team12-ATT.png') }}" style="width: 150px; height: 50px;">
              </div>
          </div>
        </div>
      <!-- // end  这些公司都在用 -->
     
    </div>
  </div>
</div>
<script src="{{ url_for('js/jquery-1.11.3.min.js') }}"></script>
<script src="{{ url_for('js/jquery.terminal-0.9.3.min.js') }}"></script>
<script type="text/javascript">
		jQuery(function($, undefined) {
		   $('#terminal').terminal(function(command, term) {
				if (command == 'gradle') {
					term.echo("-----------------------------\n"
						+"Gradle 3.0\n"
						+"-----------------------------\n"
						+"\n"
						+"Build time: "+new Date().toLocaleString()+"\n"
						+"Build number: none\n"
						+"Revision: 276bdcded730f53aa8c11b479986aafa58e124a6\n"
						+"\n"
						+"Groovy: 2.4.7\n"
						+"Ant: Apache Ant(TM) version 1.9.6 compiled on December 23 2015\n"
						+"JVM: 1.8.0_51 (Oracle Corporation 24.45-b08)\n"
						+"OS: Windows 8 6.2 amd64\n"
					);
				} else if('pkaq' == command) {
					term.echo('pika~ pika~');
				} else {
					term.echo("wat r u talking about,po?");
					//var url = " http://api.douqq.com/?key=MEpnS3lRPXBHcmcwWWFhNkg9ODNLZWJxZFFrQUFBPT0&msg="+command;
				
					//$.ajax({
					//  url: url,					 
					//  success: function(data) {
					//	term.echo(data);
					//  },
					//  error : function(data){
					//	term.echo("未知命令");
					//  }, 
					//  dataType: 'html'
					//});
				}
			}, {
				greetings: '欢迎来到 [GradleCN]Gradle中文用户组',
				name: 'js_demo',
				height: 240,
				width: 600,
				prompt: 'GradleCN > '
			});
					
		});
	</script>
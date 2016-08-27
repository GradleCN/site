title: 附录 A - 命令详解
---

>Gradle 命令行命令详解,根据Gradle.2.13版本的help命令编写而来.

| 参数 | 描述 |
|--------|--------|
|-?, -h, --help         | 显示帮助 - - .....|
|-a, --no-rebuild       | 忽略"项目依赖",假设模块web依赖于base,采用此参数后将不再构建base模块,即使base模块代码存在更新也不会(注意:如果base模块是clean的,那么加此参数构建不会将base依赖构建到项目中来,相当于忽略掉base依赖).|
|-b, --build-file       | 执行指定的*.gradle文件,默认首先会寻找当前目录下的 build.gradle文件或依据settings.gradle中的配置寻找子项目中的 build.gradle, 采用-b参数将会忽略setting文件.|
|-c, --settings-file    | 执行指定的*.gralde文件,默认settings.gradle.|
|--console              | 指定控制台输出类型,可选值有 'plain', 'auto' (默认) , 'rich'.plain 是生成普通的文本，该选项禁止所有颜色和富文本输出； auto (默认)当构建程序与控制台相关联时启动 颜色和富文本输出，或者不关联时生成普通文本；rich 启动颜色和富文本输出，忽略构建程序是否关联了控制台,如果没有关联构建输出将输出 ANSI 控制字符来生产富文本输出|
|--no-color             | 取消控制台着色效果,不过此选项已经不推荐使用,推荐使用 --console=plain替代.|
|--continue             | 忽略报错继续构建,默认报错后终止构建.|
|-d, --debug            | 指定日志输出级别为debug,可打印一般堆栈信息.|
|-q, --quiet            | 指定日志输出形式为安静模式,只打印errors.|
|-i, --info             | 指定日志级别为info.|
|-S, --full-stacktrace  | 指定日志级别为full-stacktrace,打印完整堆栈异常信息,超长超多.|
|-s, --stacktrace       | 指定日志级别为stacktrace,会打印所有堆栈异常信息.|
|-D, --system-prop      | -D属性会被传送给启动Gradle的jvm，作为一个系统属性被jvm使用(例如:-Dname=tom).|
|-P, --project-prop     | 设置Gradle的项目参数,会被直接加载到Gradle领域对象上(例如:-Pversion=1.2).|
|--configure-on-demand  | 只在构建中应用项目相关配置Only relevant projects are configured in this build run. This means faster build for large multi-builds. [incubating]|
|--daemon               | 使用Gradle守护进程执行构建,如果没有守护进程则启动一个守护进程.|
|--no-daemon            | 禁用守护进程,不使用守护进程执行构建.|
|--stop                 | 如果存在守护进程,那么终止它.|
|--foreground           | 以foreground形式启动守护进程.|
|-g, --gradle-user-home | 指定默认的指定Gradle 用户home 目录.默认在"用户目录/.gradle".|
|--gui                  | 运行Gradle GUI图形界面程序.
|-I, --init-script      | 执行指定init脚本,这个脚本会在build之前执行.会按照当前目录,USER_HOME/.gradle/ ,USER_HOME/.gradle/init.d/,GRADLE_HOME/init.d/的顺序寻找init.gradle文件|
|-m, --dry-run          | 模拟任务执行过程并将过程打印出来,并非真正执行,只是为了让你知道会执行哪些步骤.|
|--max-workers          | 指定采用几个CPU核心执行构建/|
|--offline              | 采用离线模式构建项目,当然如果你的gav中存在+,当心构建失败.|
|-p, --project-dir      | 指定build.gradle脚本所在目录,默认为当前目录.可以通过此参数指定子项目目录后,默认会执行指定目录下的build.gradle文件.|
|--parallel             | 采用并行模式运行|
|--parallel-threads     | 并行构建执行采用的线程数,不过已经弃用,推荐采用--parallel --max-workers替代.|
|--profile              | 存储一份执行报告到<build_dir>/reports/profile,包括总时间和在配置和任务执行阶段的细节。并以时间大小倒序排列，并且记录了任务的执行情况.Gradle会根据构建时间命名这些报告文件.|
|--project-cache-dir    | 指定项目缓存目录,默认在项目根目录下的.gradle文件夹.|
|--recompile-scripts    | 会丢弃缓存的脚本,然后重新编译此脚本并将其存在缓存中.通过这种方式可以强制 Gradle 重新生成缓存.|
|--refresh-dependencies | 强制刷新依赖,忽略缓存重新下载|
|--rerun-tasks          | 强制重新执行任务,忽略任务缓存,默认情况下是增量构建|
|-t, --continuous       | 连续构建模式,采用此模式后会监听所有构建文件变化,文件发生变化后会自动重新构建|
|-u, --no-search-upward | 不应用父目录中的ettings.gradle文件,如果不添加此项,父目录的setting.gradle会覆盖子目录下的配置.|
|-v, --version          | 打印gradle版本信息.|
|-x, --exclude-task     | 任务排除,跳过执行指定任务.|
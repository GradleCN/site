title: Gradle 3.1  正式发布.
comments: true
---
The Gradle team is pleased to announce Gradle 3.1.

Multi-project builds are a powerful feature with one significant constraint: the projects have to be in the same directory hierarchy. This doesn't help if you want to work on code across multiple repositories, for example if you're trying to fix a bug in a third-party open-source library that one of your projects depends on.

Gradle 3.1 now supports this scenario with the introduction of Composite Builds for all users. It's hard to understate just how important this feature is as it provides a whole new way of organizing your projects and builds. There is more work to be done in this area and the feature is currently incubating, but we encourage you to try it out and give us your feedback!

Incremental Build is a similar feature in terms of impact and this release improves the control you have over its up-to-date checks. You can read about the details further down.

As with many previous Gradle releases, you will also benefit from some performance improvements, this time in the form of faster dependency resolution. From testing, Android users specifically could see up to a 50% reduction in configuration and Android Studio sync time.

Build cancellation has improved when using the Daemon. Cancelling a build with Ctrl-C after the first build no longer terminates the Gradle Daemon. 

Our Play Framework and Kotlin build script users will also be happy as 3.1 now has (limited) support for Play 2.5.x and the Kotlin build script support gets a more fully-featured syntax for declaring dependencies and faster code completion.

Finally, be sure to check out the potential breaking changes in case they affect you.

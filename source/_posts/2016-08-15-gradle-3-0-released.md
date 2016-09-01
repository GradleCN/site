title: Gradle 3.0  正式发布.
---
Version 3.0

The Gradle team is pleased to announce Gradle 3.0.

Performance continues to be a focus for the Gradle team and the third major release reflects this. The Gradle Daemon is a key performance enhancer, making builds up to 75% faster, but it needed to be explicitly enabled in previous versions of Gradle. This is no longer necessary as the Daemon is now enabled by default in 3.0. We've put a lot of effort into fixing the most significant issues with the Gradle Daemon, especially on Windows platforms. We have also been working hard to make the Gradle Daemon aware of its health and impact to the system it's running on and use this information for self-healing actions as well as better daemon status reporting. The Gradle Daemon is the foundation for a great Gradle experience.

Ever wished for better IDE support when writing Gradle build scripts? This release provides the first support for Gradle Script Kotlin, which is a Kotlin-based build language for Gradle scripts. Its deep integration with both IDEA and Eclipse provides many of the things you would expect from an IDE such as auto-completion, refactoring, navigation to source, and more. Groovy is still the primary build language for Gradle scripts and will always be supported, but we are working intensely to make Gradle Script Kotlin fully production ready by the end of the year in order to provide the best possible development experience to Gradle users. See Chris Beams's blog post for more information about this exciting new feature.

Additionally, Gradle 3.0 provides support for running on the latest Java 9 EAP builds. Users can also build and run tests using these early versions of JDK 9, but there are some limitations. Check out the section on Java 9 support below for more details.

With the release of Gradle 3.0, it's a good time to reflect on the progress we've made over the last 2 years. Check out some of the improvements since Gradle 2.0. Lots of reasons to upgrade!

We're also pleased to make available a draft of our new Performance Guide. This is intended to be a short guide that shows you how to dramatically improve your build performance in the time it takes to eat lunch. Check it out and please provide any feedback via the guide's GitHub Issues.

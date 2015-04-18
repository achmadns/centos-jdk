# Oracle JDK inside Centos

Oracle JDK image on top of Docker to build another Java related container.
Being built from tutum:centos image, the container got ssh connection and foreground process for "free".
Why, although docker provide a way (`docker exec`) to communicate with running container,
it is more convenient to copy-paste file (which will happen a lot during development), over ssh connection instead of modifying predefined volume.

How to build: `docker build -t achmadns/centos-jdk .`

How to run: `docker run -d -P -e ROOT_PASS="yourpassword" achmadns/centos-jdk`

If you need open jdk image, there is official image under java namespace.
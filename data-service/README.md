# Northwind Spring GraphQL Data Service Application

本项目实现了一个数据访问服务，能让客户端通过 GraphQL 来灵活的查询数据库数据。

本文分步骤描述了如何使用 Spring Data JPA 以及 Spring GraphQL 实现数据服务的过程。

## 开发环境

* Java 平台

  [Java 11 OpenJDK](https://adoptium.net/)

  配置为[阿里云 Maven 镜像](https://developer.aliyun.com/mirror/maven)。

* IDE

  [Visual Studio Code](https://code.visualstudio.com/)

  启用 VSCode 插件：

  * "Extension Pack for Java"，id 为 `vscjava.vscode-java-pack`
  * "Gradle for Java"，id 为 `vscjava.vscode-gradle`
  * "GraphQL", id 为 `graphql.vscode-graphql`

* 其他工具

  * "Git for Windows"，除了 Git 本身，还大量使用了其中的 'Git Bash'。
  * "Spring Boot CLI"，通过 'SDKMAN' 在 'Git Bash' 中安装。

更详细的开发环境配置请参考 [这里]()

## 实现基本的 Spring Boot JPA 数据服务

通过 `Spring Boot CLI` 创建基本的项目代码。

```shell
spring init \
  --build gradle \
  -l java \
  -b 2.5.6 \
  -g ly.northwind-example \
  -a northwind-spring-graphql-dataservice \
  -n DataServiceApplication \
  --description 'A project created by Spring Boot CLI.' \
  --package-name northwind.springgraphql.dataservice \
  -p jar \
  -j 11 \
  -d h2,data-jpa,web,lombok \
  northwind-spring-graphql/data-service
```

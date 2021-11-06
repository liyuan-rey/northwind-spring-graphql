package northwind.springgraphql.dataservice;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.graphql.data.method.annotation.SchemaMapping;
import org.springframework.graphql.data.querydsl.QuerydslDataFetcher;
import org.springframework.stereotype.Controller;

import graphql.schema.DataFetcher;

@Controller
public class QueryRootController {

    CategoryRepository categoryRepository;

    @Autowired
    public QueryRootController(CategoryRepository cr) {
        this.categoryRepository = cr;
    }

    @SchemaMapping(typeName = "QueryRootType", field = "categoryQuery")
    public Category getCategoryQuery(QueryRoot root) {
        // https://docs.spring.io/spring-graphql/docs/current-SNAPSHOT/reference/html/#data-querydsl

        // For single result queries
        DataFetcher<Category> dataFetcher1 = QuerydslDataFetcher.builder(categoryRepository).single();

        // For multi-result queries
        DataFetcher<Iterable<Category>> dataFetcher2 = QuerydslDataFetcher.builder(categoryRepository).many();

        return new Category(); // ???
    }

}

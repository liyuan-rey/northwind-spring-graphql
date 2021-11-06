package northwind.springgraphql.dataservice;

import org.junit.jupiter.api.Test;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.graphql.boot.test.GraphQlTest;
import org.springframework.graphql.boot.test.tester.AutoConfigureWebGraphQlTester;
import org.springframework.graphql.test.tester.GraphQlTester;

@GraphQlTest
// @AutoConfigureWebGraphQlTester
public class ProductRepositoryQuerydslTests {

    @Autowired
    private GraphQlTester graphQlTester;

    @MockBean
    // @Autowired
    private ProductRepository productRepository;

    @Test
    void querydslRepositorySingle() {

        // given(this.productRepository.getById(1L))
        // .willReturn(new Product(1L, "Chai", null, null, null, null, null, null, null,
        // 0));

        // String query = "{ product(id: 1) { name } }";
        // this.graphQlTester.query(query).execute().path("data.product.name").entity(String.class).isEqualTo("Chai");

        // this.graphQlTester.query("product").variable("id",
        // "1").execute().path("data.product.name").entity(String.class)
        // .isEqualTo("Chai");
    }

    @Test
    void querydslRepositoryMany() {
        // this.graphQlTester.query("products").execute().path("products[*].name").entityList(String.class)
        // .containsExactly("Chai", "Chang");
    }
}

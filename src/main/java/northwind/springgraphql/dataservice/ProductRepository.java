package northwind.springgraphql.dataservice;

import java.util.List;

import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.querydsl.QuerydslPredicateExecutor;
import org.springframework.graphql.data.GraphQlRepository;

@GraphQlRepository
public interface ProductRepository extends JpaRepository<Product, Long>, QuerydslPredicateExecutor<Product> {

    // todo: "errors": "message": "No converter found capable of converting from
    // type [northwind.springgraphql.dataservice.Product] to type
    // [northwind.springgraphql.dataservice.ProductResponse]"
    ProductResponse findByName(String name);

    // todo: Sort
    // List<Product> findByName(String name, Sort sort);

    Product save(ProductInput input);
}

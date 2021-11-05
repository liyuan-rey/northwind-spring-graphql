package northwind.springgraphql.dataservice;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.querydsl.QuerydslPredicateExecutor;
import org.springframework.graphql.data.GraphQlRepository;

@GraphQlRepository
public interface ProductRepository extends JpaRepository<Product, Long>, QuerydslPredicateExecutor<Product> {

}

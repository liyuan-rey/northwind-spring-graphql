package northwind.springgraphql.dataservice;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.querydsl.QuerydslPredicateExecutor;
import org.springframework.graphql.data.GraphQlRepository;

@GraphQlRepository
public interface CategoryRepository extends JpaRepository<Category, Long>, QuerydslPredicateExecutor<Category> {

}

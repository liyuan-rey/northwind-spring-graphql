package northwind.springgraphql.dataservice;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.graphql.data.method.annotation.Argument;
import org.springframework.graphql.data.method.annotation.MutationMapping;
import org.springframework.graphql.data.method.annotation.QueryMapping;
import org.springframework.graphql.data.method.annotation.SchemaMapping;
import org.springframework.stereotype.Controller;

@Controller
public class ProductController {

    private static final Logger log = LoggerFactory.getLogger(ProductController.class);

    ProductRepository productRepository;

    @Autowired
    public ProductController(ProductRepository repository) {
        this.productRepository = repository;
    }

    @QueryMapping
    public String greetings() {
        return "Hello world!";
    }

    @QueryMapping
    public ProductResponse myFindProductByName(@Argument String name) {
        log.info("myFindProductByName called");
        return productRepository.findByName(name);
    }

    @MutationMapping
    public Product addProduct(@Argument ProductInput input) {
        log.info("addProduct called");
        log.info(input.toString());
        return productRepository.save(input);
    }
}

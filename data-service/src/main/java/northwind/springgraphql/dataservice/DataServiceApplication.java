package northwind.springgraphql.dataservice;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;

@SpringBootApplication
public class DataServiceApplication {

	public static void main(String[] args) {
		SpringApplication.run(DataServiceApplication.class, args);
	}

	private static final Logger log = LoggerFactory.getLogger(DataServiceApplication.class);

	@Bean
	CommandLineRunner testRepository(ProductRepository pr) {

		return args -> {

			log.info("--- Test ProductRepository ---");

			log.info("product count: {}", pr.count());

			Product product = new Product();
			product.setName("new-product");
			product.setDiscontinued(0);

			product = pr.save(product);
			log.info("create new product, id: {}, name: {}", product.getId(), product.getName());

			product.setName("test-product");
			product = pr.save(product);

			log.info("update product's name with: {}, id: {}", product.getName(), product.getId());

			log.info("product found in db: {}", pr.findById(product.getId()).isPresent());

			pr.delete(product);
			log.info("product removed, now count: {}", pr.count());

			log.info("------");

		};
	}
}

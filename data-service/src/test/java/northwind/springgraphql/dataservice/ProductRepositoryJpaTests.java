package northwind.springgraphql.dataservice;

import static org.junit.jupiter.api.Assertions.assertDoesNotThrow;
import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertTrue;

import java.util.Optional;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;

@DataJpaTest
public class ProductRepositoryJpaTests {
    @Autowired
    private ProductRepository pr;

    @Test
    void testSimpleCRUD() {

        final long count = pr.count();

        Product product = assertDoesNotThrow(() -> {
            Product p = new Product();
            p.setName("new-product");
            p.setDiscontinued(0);
            return pr.save(p);
        });
        final Long id = product.getId();
        assertTrue(id > 0);

        final String name = "test-product";
        product = assertDoesNotThrow(() -> {
            Product p = new Product();
            p.setId(id);
            p.setName(name);
            return pr.save(p);
        });
        assertEquals(id, product.getId());
        assertEquals(name, product.getName());

        Optional<Product> tmp = assertDoesNotThrow(() -> pr.findById(id));
        assertTrue(tmp.isPresent());

        assertDoesNotThrow(() -> {
            Product p = new Product();
            p.setId(id);
            pr.delete(p);
        });
        assertEquals(count, pr.count());
    }
}

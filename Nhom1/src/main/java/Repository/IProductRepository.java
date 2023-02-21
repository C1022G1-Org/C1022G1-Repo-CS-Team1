package repository;

import model.Product;
import model.ProductType;

import java.sql.SQLException;
import java.util.List;

public interface IProductRepository {
    List<Product> selectAll( );
    void insert(Product product) throws SQLException;

    void delete(int id);

    void update(Product product);

    Product select(int id);

//    List<ProductType> showProductTypeList();
}

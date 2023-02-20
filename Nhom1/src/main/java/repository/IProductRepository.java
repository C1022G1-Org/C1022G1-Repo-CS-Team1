package repository;

import model.Product;

import java.sql.SQLException;
import java.util.List;

public interface IProductRepository {
    List<Product> selectAllUsers();
    void insertUser(Product product) throws SQLException;
}

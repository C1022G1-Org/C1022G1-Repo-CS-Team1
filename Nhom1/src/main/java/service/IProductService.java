package service;

import model.Product;

import java.sql.SQLException;
import java.util.List;

public interface IProductService {
     List<Product> selectAllUsers();
     void insertUser(Product product) throws SQLException;
}

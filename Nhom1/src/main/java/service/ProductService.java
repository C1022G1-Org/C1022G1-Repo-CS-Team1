package service;

import model.Product;
import repository.IProductRepository;
import repository.ProductRepository;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ProductService implements IProductService {
    IProductRepository iProductRepository = new ProductRepository();

    @Override
    public List<Product> selectAllUsers() {
        return iProductRepository.selectAllUsers();
    }

    @Override
    public void insertUser(Product product) throws SQLException {
        iProductRepository.insertUser(product);
    }
}

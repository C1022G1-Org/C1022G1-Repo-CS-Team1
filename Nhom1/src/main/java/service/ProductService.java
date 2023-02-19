package service;

import Repository.IProductRepository;
import Repository.ProductRepository;
import model.Product;
import service.IProductService;

import java.sql.*;
import java.util.List;

public class ProductService implements IProductService {
    IProductRepository iProductRepository = new ProductRepository();


    @Override
    public List<Product> selectAll() {
        return iProductRepository.selectAll();
    }

    @Override
    public void insert(Product product) throws SQLException {
        iProductRepository.insert(product);
    }

    @Override
    public void delete(int id) {
        iProductRepository.delete(id);
    }

    @Override
    public void update(Product product) {
        iProductRepository.update(product);

    }

    @Override
    public Product select(int id) {
        return iProductRepository.select(id);
    }
}
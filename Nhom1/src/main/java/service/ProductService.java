package service;

import model.Product;
import model.ProductType;
import repository.IProductRepository;
import repository.ProductRepository;

import java.sql.*;
import java.util.ArrayList;
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

//    @Override
//    public List<ProductType> showProductTypeList() {
//        return iProductRepository.showProductTypeList();
//    }
}

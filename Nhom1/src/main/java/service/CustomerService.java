package service;

import model.Customer;
import repository.CustomerRepository;
import repository.ICustomerRepository;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class CustomerService implements ICustomerService{
    ICustomerRepository iCustomerRepository = new CustomerRepository();

    @Override
    public List<Customer> selectAllCustomer() {
        return iCustomerRepository.selectAllCustomer();
    }

    @Override
    public void insertCustomer(Customer customer) throws SQLException {
        iCustomerRepository.insertCustomer(customer);
    }
}

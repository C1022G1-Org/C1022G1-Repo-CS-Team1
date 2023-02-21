package service;

import model.Customer;

import java.sql.SQLException;
import java.util.List;

public interface ICustomerService {
        List<Customer> selectAllCustomer();
        void insertCustomer(Customer customer) throws SQLException;
        Customer login(String user, String pass) throws SQLException;
}

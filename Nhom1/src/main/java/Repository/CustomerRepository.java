package repository;

import model.Customer;
import service.ICustomerService;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class CustomerRepository implements ICustomerRepository {
    private String jdbcURL = "jdbc:mysql://localhost:3306/bia";
    private String jdbcUsername = "root";
    private String jdbcPassword = "truongasd123";

    private static final String INSERT_USERS_SQL = "INSERT INTO customer(ten_kh,so_dien_thoai,email,pass) VALUES (?,?,?,?);";
    private static final String SELECT_USER_BY_ID = "select id_sp,ten_sp,don_gia from product where id_sp =?";
    private static final String SELECT_ALL_USERS = "select * from customer";
    private static final String DELETE_USERS_SQL = "delete from product where id_sp = ?;";
    private static final String UPDATE_USERS_SQL = "update product set ten_sp = ?,ten_sp= ? where id_sp = ?;";

    public CustomerRepository() {
    }

    protected Connection getConnection() {
        Connection connection = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return connection;
    }
    @Override
    public List<Customer> selectAllCustomer() {
        List<Customer> customers = new ArrayList<>();
        try (Connection connection = getConnection();

             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_USERS);) {
            ResultSet rs = preparedStatement.executeQuery();

            while (rs.next()) {
                int idKH = rs.getInt("id_sp");
                String tenKH = rs.getString("ten_sp");
                String soDienThoai = rs.getString("don_gia");
                String email = rs.getString("so_luong");
                String matKhau = rs.getString("id_lsp");
                customers.add(new Customer(idKH,tenKH,soDienThoai,email,matKhau));
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return customers;
    }

    @Override
    public void insertCustomer(Customer customer) throws SQLException {
        System.out.println(INSERT_USERS_SQL);
        try (Connection connection = getConnection(); PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL)) {
            preparedStatement.setString(1, customer.getTenKH());
            preparedStatement.setString(2, customer.getSoDienThoai());
            preparedStatement.setString(3, customer.getEmail());
            preparedStatement.setString(4, customer.getMatKhau());
            System.out.println(preparedStatement);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            printSQLException(e);
        }
    }
    private void printSQLException(SQLException ex) {
        for (Throwable e : ex) {
            if (e instanceof SQLException) {
                e.printStackTrace(System.err);
                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
                System.err.println("Message: " + e.getMessage());
                Throwable t = ex.getCause();
                while (t != null) {
                    System.out.println("Cause: " + t);
                    t = t.getCause();
                }
            }
        }
    }
}

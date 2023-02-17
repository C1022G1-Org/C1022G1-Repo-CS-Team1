package service;

import model.Product;
<<<<<<< HEAD
import repository.IProductRepository;
import repository.ProductRepository;
=======
>>>>>>> 35843dcfeb4141a873a16bc5fb232eaa4f1c3c38

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ProductService implements IProductService {
<<<<<<< HEAD
    IProductRepository iProductRepository = new ProductRepository();

    @Override
    public List<Product> selectAllUsers() {
        return iProductRepository.selectAllUsers();
=======
    private String jdbcURL = "jdbc:mysql://localhost:3306/bia";
    private String jdbcUsername = "root";
    private String jdbcPassword = "123456";

    private static final String INSERT_USERS_SQL = "INSERT INTO product(ten_sp,don_gia,so_luong,id_lsp) VALUES (?,?,?,?);";
    private static final String SELECT_USER_BY_ID = "select id_sp,ten_sp,don_gia from product where id_sp =?";
    private static final String SELECT_ALL_USERS = "select * from product";
    private static final String DELETE_USERS_SQL = "delete from product where id_sp = ?;";
    private static final String UPDATE_USERS_SQL = "update product set ten_sp = ?,ten_sp= ? where id_sp = ?;";

    public ProductService() {
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
    public List<Product> selectAllUsers() {
        List<Product> products = new ArrayList<>();
        try (Connection connection = getConnection();

             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_USERS);) {
            ResultSet rs = preparedStatement.executeQuery();

            while (rs.next()) {
                int idSP = rs.getInt("id_sp");
                String tenSP = rs.getString("ten_sp");
                String donGia = rs.getString("don_gia");
                String soLuong = rs.getString("so_luong");
                String loaiSanPham = rs.getString("id_lsp");
                products.add(new Product(idSP,tenSP,donGia,soLuong,loaiSanPham));
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return products;
>>>>>>> 35843dcfeb4141a873a16bc5fb232eaa4f1c3c38
    }

    @Override
    public void insertUser(Product product) throws SQLException {
<<<<<<< HEAD
        iProductRepository.insertUser(product);
=======
        System.out.println(INSERT_USERS_SQL);
        try (Connection connection = getConnection(); PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL)) {
            preparedStatement.setString(1, product.getTenSP());
            preparedStatement.setString(2, product.getDonGia());
            preparedStatement.setString(3, product.getSoLuong());
            preparedStatement.setString(4, product.getLoaiSanPham());
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
>>>>>>> 35843dcfeb4141a873a16bc5fb232eaa4f1c3c38
    }
}

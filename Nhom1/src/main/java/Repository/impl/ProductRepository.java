package Repository.impl;

import Repository.IProductRepository;
import model.Product;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ProductRepository implements IProductRepository {

    private String jdbcURL = "jdbc:mysql://localhost:3306/bia";
    private String jdbcUsername = "root";
    private String jdbcPassword = "truongasd123";

    private static final String INSERT_USERS_SQL = "INSERT INTO product(ten_sp,don_gia,so_luong,id_lsp) VALUES (?,?,?,?);";
    private static final String SELECT_USER_BY_ID = "select id_sp,ten_sp,don_gia from product where id_sp =?";
    private static final String SELECT_ALL_USERS = "select * from product";
    private static final String DELETE_USERS_SQL = "delete from product where id_sp = ?;";
    private static final String UPDATE_USERS_SQL = "update product set ten_sp=?,don_gia=?,so_luong=?,id_lsp=? where id_sp=?;";



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
    public List<Product> selectAll() {
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
    }

    @Override
    public void insert(Product product) throws SQLException {
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

    @Override
    public void delete(int id) {
        try {
            Connection connection = getConnection();
            PreparedStatement preparedStatement = connection
                    .prepareStatement("DELETE_USERS_SQL");

            preparedStatement.setInt(1, id);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void update(Product product) {
        try {
            Connection connection = getConnection();
            PreparedStatement preparedStatement = connection
                    .prepareStatement("UPDATE_USERS_SQL");
            preparedStatement.setString(1, product.getTenSP());
            preparedStatement.setString(2, product.getDonGia());
            preparedStatement.setString(3, product.getSoLuong());
            preparedStatement.setInt(4, product.getIdSP());

            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
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

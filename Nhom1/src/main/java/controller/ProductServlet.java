package controller;

import model.Product;
import model.ProductType;
import service.IProductService;
import service.ProductService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "ProductServlet",urlPatterns = "/admin")
public class ProductServlet extends HttpServlet {
    private IProductService productService;

    public void init() {
        productService = new ProductService();
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        try {
            switch (action) {
                case "create":
                    insertUser(request, response);
                    break;
                case "edit":
                    performUpdate(request, response);
                    break;
            }
        } catch (SQLException ex) {
            throw new ServletException(ex);
        }
    }

    private void performUpdate(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String tenSP = request.getParameter("tenSP");
        String donGia = request.getParameter("donGia");
        String soLuong = request.getParameter("soLuong");
        String loaiSanPham = request.getParameter("loaiSanPham");

        int idSP = Integer.parseInt(request.getParameter("id_sp"));

        Product product = productService.select(idSP);
        System.out.println(product);
        product.setTenSP(tenSP);
        product.setDonGia(donGia);
        product.setSoLuong(soLuong);
        product.setLoaiSanPham(loaiSanPham);
        productService.update(product);
        response.sendRedirect("/admin");

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
                String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        try {
            switch (action) {
                case "create":
                    showCreateForm(request, response);
                    break;
                case "edit":
                    showEditForm(request, response);
                    break;
                case "delete":
                    int idSP = Integer.parseInt(request.getParameter("id_sp"));
                    productService.delete(idSP);
                    response.sendRedirect("/admin");
                    break;
                default:
                    listUser(request, response);
                    break;
            }
        } catch (SQLException ex) {
            throw new ServletException(ex);
        }
    }

    private void showEditForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Product> listProduct = productService.selectAll();
        request.setAttribute("listProduct", listProduct);
        RequestDispatcher dispatcher = request.getRequestDispatcher("admin/edit.jsp");
        dispatcher.forward(request, response);
    }

    private void listUser(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {
        List<Product> listProduct = productService.selectAll();
        request.setAttribute("listProduct", listProduct);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/admin/list.jsp");
        dispatcher.forward(request, response);
    }
    private void insertUser(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
                String tenSP = request.getParameter("tenSP");
        String donGia = request.getParameter("donGia");
        String soLuong = request.getParameter("soLuong");
        String loaiSanPham = request.getParameter("loaiSanPham");
        int idLSP = 0;
        switch (loaiSanPham) {
            case "có cồn":
                idLSP = 1;
                break;
            case "không cồn":
                idLSP = 2;
                break;
            case "khác":
                idLSP = 3;
                break;
        }
        Product product = new Product(idLSP,tenSP,donGia,soLuong,loaiSanPham);
        productService.insert(product);
        RequestDispatcher dispatcher = request.getRequestDispatcher("admin/create.jsp");
        dispatcher.forward(request, response);
    }
    private void showCreateForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("admin/create.jsp");
        dispatcher.forward(request, response);
    }
}

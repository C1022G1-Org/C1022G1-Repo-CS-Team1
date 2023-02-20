package controller;

import model.Customer;
import model.Product;
import service.CustomerService;
import service.ICustomerService;
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

@WebServlet(name = "CustomerServlet",urlPatterns = "/index")
public class CustomerServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private ICustomerService iCustomerService;

    public void init() {
        iCustomerService = new CustomerService();
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        try {
            switch (action) {
                case "create":
                    insertCustomer(request, response);
                    break;
                case "edit":
                    break;
            }
        } catch (SQLException ex) {
            throw new ServletException(ex);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        try {
            switch (action) {
                case "create":
                    showNewForm(request, response);
                    break;
                case "edit":
                    break;
                case "delete":
                    break;
                default:
                    listCustomer(request, response);
                    break;
            }
        } catch (SQLException ex) {
            throw new ServletException(ex);
        }
    }
    private void listCustomer(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {
        List<Customer> customers = iCustomerService.selectAllCustomer();
        request.setAttribute("listProduct", customers);
        RequestDispatcher dispatcher = request.getRequestDispatcher("admin/list.jsp");
        dispatcher.forward(request, response);
    }
    private void insertCustomer(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {
        String tenKH = request.getParameter("tenKH");
        String soDienThoai = request.getParameter("soDienThoai");
        String email = request.getParameter("email");
        String matKhau = request.getParameter("matKhau");
        Customer customer = new Customer(tenKH,soDienThoai,email,matKhau);
        iCustomerService.insertCustomer(customer);
        RequestDispatcher dispatcher = request.getRequestDispatcher("index/dang_ky.jsp");
        dispatcher.forward(request, response);
    }
    private void showNewForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("index/dang_ky.jsp");
        dispatcher.forward(request, response);
    }
}

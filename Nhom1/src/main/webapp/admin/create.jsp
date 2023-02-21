<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Trang admin</title>
    <link rel="stylesheet" href="/index/css/bootstrap.css">
    <link rel="stylesheet" href="/index/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
    <style>
        @import url('https://fonts.googleapis.com/css?family=Montserrat:400,700&display=swap');

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            list-style: none;
            font-family: 'Montserrat', sans-serif
        }

        body {
            padding: 10px
        }

        .topnav {
            background-color: #ffff;
            overflow: hidden
        }

        .far.fa-user-circle {
            font-size: 29px;
            color: #726f6f;
            padding-top: 10px
        }

        .input-10 {
            width: 40px;
            color: #4c4c96;
            font-weight: 600
        }

        .fas.fa-search {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            background-color: lightsalmon;
            height: 100%
        }

        .topnav a {
            float: left;
            display: block;
            color: #8d8b8b;
            font-weight: 800;
            font-size: 14px;
            text-transform: uppercase;
            padding: 14px 16px;
            text-decoration: none;
            border-bottom: 3px solid transparent
        }

        .topnav a:hover {
            color: #f7910c;
            border-bottom: 3px solid red
        }

        .topnav .active {
            color: black;
            border-bottom: 3px solid red
        }

        form.example input[type=text] {
            padding: 10px;
            font-size: 17px;
            border: 1px solid grey;
            float: left;
            width: 90%;
            height: 36px;
            background: #fff
        }

        form.example input[type=text]:focus {
            outline: none
        }

        form.example button {
            float: left;
            width: 10%;
            height: 36px;
            padding: 5px;
            border-top-right-radius: 5px;
            border-bottom-right-radius: 5px;
            background: black;
            color: white;
            font-size: 14px;
            border: 1px solid grey;
            border-left: none;
            cursor: pointer
        }

        .navbar-toggler:focus {
            box-shadow: none;
            outline: none;
            border: none
        }

        ::placeholder {
            font-size: 10px
        }

        form.example button:hover {
            background: #0b7dda
        }

        form.example::after {
            content: "";
            clear: both;
            display: table
        }

        .container .table-responsive {
            margin: 20px auto;
            overflow-x: auto
        }

        .container .table-responsive::-webkit-scrollbar {
            height: 5px
        }

        .container .table-responsive::-webkit-scrollbar-thumb {
            border-radius: 5px;
            background-image: linear-gradient(to right, #5D7ECD, #0C91E6)
        }

        .table thead tr th {
            font-size: 11px;
            color: white;
            padding: 10px 10px
        }

        .table tbody tr td {
            font-size: 13.5px;
            padding: 10px 10px
        }

        #navbar {
            width: 20%;
            background-color: black !important;
            height: 50px;
            border: none
        }

        .bg-blight {
            color: #7f7fee;
            font-weight: 600
        }

        .bg-bdark {
            color: #4c4c96;
            font-weight: 600
        }

        #navbar a {
            color: white
        }

        .fas.fa-bars {
            color: white
        }

        #navbar2 {
            width: 80%
        }

        #navbar-items {
            width: 20%;
            height: 500px;
            background-color: white;
        }

        ul#navbar-items li {
            color: black;
            padding: 15px 25px;
            font-weight: 600;
            text-transform: uppercase;
            font-size: 10px;
            display: flex;
            align-items: center
        }

        ul li .fas {
            font-size: 16px
        }

        ul#navbar-items li:hover {
            background-color: #fd7e14;
            color: white
        }

        ul li:hover .fas {
            color: #f7910c
        }

        #topnavbar {
            width: 80%
        }

        .fs13 {
            font-size: 13px
        }

        .fs14 {
            font-size: 18px;
            color: white
        }

        .fas.fa-times {
            color: red
        }

        .fas.fa-check {
            color: greenyellow
        }

        .example {
            width: 50%
        }

        @media (max-width: 780px) {
            #navbar {
                width: 20%
            }

            #topnavbar {
                width: 80%
            }

            .text-decoration-none.fs14 {
                font-size: 10px
            }

            .text-decoration-none .fs13 {
                font-size: 9px
            }
        }

        @media (max-width: 430px) {
            #navbar-items, #topnavbar {
                width: 100%;
                height: 100%
            }

            #navbar-items {
                padding: 20px;
                margin-bottom: 30px
            }

            .topnav a {
                font-size: 12px;
                padding: 12px
            }

            #navbar {
                width: 100%;
                background-color: blue
            }

            .example {
                width: 100%
            }

            .text-decoration-none.fs14 {
                font-size: 14px
            }

            .text-decoration-none .fs13 {
                font-size: 13px
            }
        }

        @media (max-width: 376px) {
            #navbar-items {
                padding: 20px;
                margin-bottom: 30px
            }

            .topnav a {
                font-size: 12px;
                padding: 7px
            }
        }

        @media (max-width: 320px) {
            .topnav a {
                font-size: 10px;
                padding: 4px
            }
        }

        footer {
            background: #101010;
            padding: 86px 0;
        }

        .single-content {
            text-align: center;
            padding: 115px 0;
        }

        .single-box p {
            color: #fff;
            line-height: 1.9;
        }

        .single-box h3 {
            font-size: 16px;
            font-weight: 700;
            color: #fff;
        }

        .single-box .card-area i {
            color: #ffffff;
            font-size: 20px;
            margin-right: 10px;
        }

        .single-box ul {
            list-style: none;
            padding: 0;
        }

        .single-box ul li a {
            text-decoration: none;
            color: #fff;
            line-height: 2.5;
            font-weight: 100;
        }

        .single-box h2 {
            color: #fff;
            font-size: 20px;
            font-weight: 700;
        }

        #basic-addon2 {
            background: #fe1e4f;
            color: #fff;
        }

        .socials i {
            font-size: 18px;
            margin-right: 15px;
        }

        @media (max-width: 767px) {
            .single-box {
                margin-bottom: 50px;
            }
        }

        @media (min-width: 768px) and (max-width: 991px) {
            .single-box {
                margin-bottom: 50px;
            }
        }
    </style>
</head>
<body>
<div class="px-0 bg-light container-fluid">
    <div class="d-flex">
        <div class="d-flex align-items-center " id="navbar">
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbar-items"
                    aria-controls="navbarSupportedContent" aria-expanded="true" aria-label="Toggle navigation"><span
                    class="fas fa-bars"></span></button>
            <a class="text-decoration-none fs14 ps-2" href="#">Nhóm báo thủ<span class="fs13 pe-2"></span></a></div>
        <div id="navbar2" class="d-flex justify-content-end pe-4"><span class="far fa-user-circle "></span></div>
    </div>
    <div class="d-md-flex">
        <ul id="navbar-items" class="p-0">
            <li><span class="fas fa-th-list"></span> <span class="ps-3 name">Quản lý sản phẩm</span></li>
            <li><span class="fas fa-chart-line"></span> <span class="ps-3 name">Quản lý khách hàng</span></li>
            <li><span class="fas fa-clipboard-check"></span> <span class="ps-3 name">Quản lý đơn hàng</span></li>
            <li><span class="fas fa-calendar-alt"></span> <span class="ps-3 name">Quản lý account</span></li>
        </ul>
        <div id="topnavbar">
            <div class="topnav mb-3">
                <div class="d-flex px-1"><a href="#home" class="active">Sản phẩm</a> <a href="#news">Khách Hàng</a> <a
                        href="#contact">Đơn hàng</a> <a href="#contact">Tài Khoản</a></div>
            </div>
<%--            <div class="d-flex align-items-center mb-3 px-md-3 px-2"><span class="text-uppercase fs13 fw-bolder pe-3">Tìm<span--%>
<%--                    class="ps-1">Kiếm</span></span>--%>
<%--                <form class="example d-flex align-items-center"><input type="text"--%>
<%--                                                                       placeholder="Tìm kiếm theo tên và id"--%>
<%--                                                                       name="search">--%>
<%--                    <button type="submit"><i class="fa fa-search"></i></button>--%>
<%--                </form>--%>
<%--            </div>--%>
            <div style="margin-left: 10px">
                <form method="post">
                    <table>
                        <tr>
                            <th style="padding-bottom: 10px">Tên sản phẫm:</th>
                            <td style="padding-bottom: 10px">
                                <input type="text" name="tenSP" id="tenSP" value="${product.ten_sp}" size="45"/>
                            </td>
                        </tr>
                        <tr>
                            <th style="padding-bottom: 10px">Đơn giá:</th>
                            <td style="padding-bottom: 10px">
                                <input type="text" name="donGia" id="donGia" value="${product.don_gia}" size="45"/>
                            </td>
                        </tr>
                        <tr>
                            <th style="padding-bottom: 10px">Số lượng:</th>
                            <td style="padding-bottom: 10px">
                                <input style="padding-right: 255px" type="text" name="soLuong" id="soLuong" value="${product.so_luong}" size="15"/>
                            </td>
                        </tr>
                        <tr>
                            <th style="padding-bottom: 10px">Loại sản phẩm:</th>
                            <td style="padding-bottom: 10px">
                                <input style="padding-right: 255px" type="text" name="loaiSanPham" id="loaiSanPham" value="${product.loai_sp}" size="15"/>
                            </td>
                        </tr>
                        <tr >
                            <%--                            <th style="padding-bottom: 10px">Loại sản phẩm:</th>--%>
                            <%--                            <td>--%>
                            <%--                                <select style="padding-bottom: 10px" name="loaiSanPham" id="ten_lsp">--%>
                            <%--                                    <c:forEach items="${productTypeList}" var="productTypeList" varStatus="stt">--%>
                            <%--                                        <option value="${productTypeList.ten_lsp}">${ productTypeList.ten_lsp}</option>--%>
                            <%--                                    </c:forEach>--%>
                            <%--                                </select>--%>

                            <%--                            </td>--%>
                            <%--                        </tr>--%>
                        <tr>
                            <td colspan="2" align="center">
                                <input type="submit" value="Save"/>
                            </td>
                        </tr>
                    </table>
                </form>
            </div>
        </div>
    </div>
</div>
</div>

</body>
</html>

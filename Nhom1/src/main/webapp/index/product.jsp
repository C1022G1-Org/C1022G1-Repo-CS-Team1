<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 18/02/2023
  Time: 8:48 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Trang sản phẫm</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
        *{
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        body {
            background-color: #eee;
        }

        .nav-tabs .nav-item.show .nav-link, .nav-tabs .nav-link.active {
            color: #495057;
            background-color: transparent;
            border-color: transparent;
            border-bottom: 3px solid #000;
        }

        .nav-tabs > li > a {

            text-transform: uppercase;
            color: #000;
            font-weight: 500;
        }

        .nav-tabs .nav-link:hover {
            border-color: transparent;
            border-bottom: 3px solid #000
        }

        .navbar {
            border-bottom: 1px solid #00000012;
            padding-top: 0rem !important;
            padding-bottom: 0rem !important;
            background-color: #ffffff !important;
        }

        .navbar-brand {

            font-size: 24px;
            text-transform: uppercase;
            font-family: Roboto;
            font-weight: 500;
        }

        .nav-tabs {
            border-bottom: none;
        }

        .card {

            border: none;

        }

        .card-body {
            flex: 1 1 auto;
            padding: 10px;
        }

        .card-text {

            font-size: 13px;
        }

        .guarantee {

            color: #05882c;
            margin-left: 4px;
            font-weight: 700
        }

        hr {
            margin: 0.2rem 0;
            color: #bfbebe;
        }

        .buttons button {

            text-transform: uppercase;
            font-size: 12px;
            border-radius: 2px;
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

        body {
            color: #000000;
            background-color: #CFD8DC;
        }

        .card1 {
            text-transform: uppercase;
            text-align: center;
            color: #ffffff;
            background-color: #000000;
        }

        .card2 {
            margin-bottom: 20px;
            padding-bottom: 40px;
        }

        .bg-black {
            background-color: #000000;
        }

        #summer {
            font-weight: normal;
            font-size: 50px;
            padding-top: 50px;
            margin-bottom: 0;
            transform: scale(1, 1.3);
            color: #FF5252;
            opacity: 0.8;
        }

        #sale {
            font-weight: normal;
            font-size: 70px;
            transform: scale(1.2, 1.2);
            letter-spacing: 8px;
            padding-left: 4px;
            color: #FF5252;
            opacity: 0.8;
        }

        #saveupto {
            color: #00BFA5;
            letter-spacing: 10px;
            transform: scale(1, 1);
            font-size: 20px;
            margin-top: 40px;
            padding-left: 6px;
        }

        #thirty {
            font-size: 70px;
            transform: scale(1.2, 1.5);
        }

        #percent {
            font-weight: normal;
            font-size: 34px;
            margin-bottom: 0;
            padding-left: 10px;
            transform: scale(1.8, 1.6);
        }

        #off {
            font-size: 35px;
            transform: scale(1.2, 1);
            padding-left: 0px;
        }

        @media (max-width: 768px) {
            #percent {
                padding-left: 5px;
            }

            #off {
                padding-left: 0px;
                transform: scale(1.1, 1);
                font-size: 30px;
            }
        }

        #instore {
            border-top: 1px solid grey;
            border-bottom: 1px solid grey;
            padding-bottom: 4px;
            padding-top: 4px;
            color: grey;
            margin-bottom: 80px;
            padding-left: 20px;
            padding-right: 20px;
        }

        .bg-white {
            background-color: #ffffff;
        }

        .subhead1 {
            text-transform: uppercase;
            font-size: 18px;
            padding-top: 70px;
        }

        .subhead2 {
            color: #00BFA5;
            font-weight: normal;
            font-size: 25px;
            padding-top: 30px;
            padding-bottom: 30px;
        }

        input.input-box, textarea.input-box {
            background-color: #CFD8DC;
            color: #212121;
            font-size: 15px;
            padding: 15px auto 15px auto !important;
            height: 55px !important;
            text-align: center;
        }

        input.input-box:focus, textarea.input-box:focus {
            color: #212121;
            background-color: #ECEFF1;
            box-shadow: 0 0 1px 1px #CFD8DC;
        }

        .rm-border:focus {
            border-color: inherit;
            -webkit-box-shadow: none;
            box-shadow: none;
        }

        form .form-control::-webkit-input-placeholder {
            color: #9E9E9E;
        }

        ::-moz-placeholder {
            color: #9E9E9E !important;
        }

        input.btn-red {
            background-color: #D50000;
            padding-left: 0px;
            padding-right: 0px;
            color: #ffffff;
            font-weight: bold;
            height: 55px;
            opacity: 0.8;
        }

        input.btn-red:hover {
            opacity: 1;
        }

        .thanks {
            color: #000000 !important;
            text-align: center;
            text-transform: uppercase;
            padding-bottom: 10px;
        }

        .thanks:hover {
            color: #000000 !important;
            text-decoration: underline;
            padding-bottom: 10px;
        }

        .conditions {
            font-size: 12px;
            color: #546E7A;
            text-align: center;
        }
    </style>
</head>
<body>
<header>
    <div class="container-fluid" style="padding: 0">
        <div class="row">
            <nav class="navbar navbar-expand-lg navbar-light bg-dark" id="header-nav">
                <div class="container-fluid bg-dark">
                    <a class="navbar-brand" href="#"><img src="/index/img/logo.png" alt=""
                                                          style="width: 80px;height: 60px"></a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                            data-bs-target="#navbarScroll" aria-controls="navbarScroll" aria-expanded="false"
                            aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarScroll">
                        <ul class="navbar-nav me-auto my-2 my-lg-0 navbar-nav-scroll"
                            style="--bs-scroll-height: 100px;">
                            <li class="nav-item">
                                <a class="nav-link active text-white" aria-current="page" href="index.jsp">Trang chủ</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link active text-white" aria-current="page" href="product.jsp">Sản phẩm</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link active text-white" aria-current="page" href="#">Chi tiết</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link active text-white" aria-current="page" href="#">Liên hệ</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link active text-white" aria-current="page" href="register.jsp">Đăng ký</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link active text-white" aria-current="page" href="login.jsp">Đăng nhập</a>
                            </li>
                        </ul>
                        <form class="d-flex" style="margin-top: 16px; margin-right: 10px">
                            <input class="form-control me-2" type="search" placeholder="Tìm kiếm" aria-label="Search">
                            <button class="btn btn-outline-warning" type="submit" style="width: 136px">Tìm kiếm</button>
                        </form>
                    </div>
                </div>
            </nav>
        </div>
    </div>
</header>
<div class="container-fluid px-0" style="margin-top: 20px;width: 98.5%">
    <nav class="navbar navbar-expand-lg navbar-light bg-light navbar-fixed">
        <div class="container-fluid d-flex"><a class="navbar-brand" href="#">Danh mục bia</a>
            <ul class="nav nav-tabs" id="myTab" role="tablist">
                <li class="nav-item" role="presentation"><a class="nav-link active" id="home-tab" data-toggle="tab"
                                                            href="#home" role="tab" aria-controls="home"
                                                            aria-selected="true">Corona</a></li>
                <li class="nav-item" role="presentation"><a class="nav-link" id="profile-tab" data-toggle="tab"
                                                            href="#profile" role="tab" aria-controls="profile"
                                                            aria-selected="false">Leffe</a></li>
                <li class="nav-item" role="presentation"><a class="nav-link" id="contact-tab" data-toggle="tab"
                                                            href="#contact" role="tab" aria-controls="contact"
                                                            aria-selected="false">Budweiser</a></li>
            </ul>
        </div>
    </nav>
</div>
<div class="container-fluid mt-2 mb-5">
    <div class="products">
        <div class="tab-content" id="myTabContent">
            <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                <div class="d-flex justify-content-between p-3 bg-white mb-3 align-items-center"><span
                        class="font-weight-bold text-uppercase"></span>
                    <div><img src="https://img.icons8.com/windows/100/000000/list.png" width="30"/> <img
                            src="https://img.icons8.com/ios-filled/100/000000/squared-menu.png" width="25"/></div>
                </div>
                <div class="row g-3">
                    <div class="col-md-4">
                        <div class="card"><img src="img/bai1.jpg" class="card-img-top"
                                               style="width: 488px;height: 450px">
                            <div class="card-body">
                                <div class="d-flex justify-content-between"><span class="font-weight-bold">Bia Coronita Extra</span>
                                    <span class="font-weight-bold">565,000₫</span></div>
                                <p class="card-text mb-1 mt-1"> Thùng 24 Chai 207ml [HCM] [Hà Nội]</p>
                                <div class="d-flex align-items-center flex-row"><img
                                        src="https://i.imgur.com/e9VnSng.png" width="20"> <span class="guarantee">2 Years Guarantee</span>
                                </div>
                            </div>
                            <hr>
                            <div class="card-body">
                                <div class="text-right buttons">
                                    <button class="btn btn-outline-dark">Thêm yêu thích</button>
                                    <button class="btn btn-dark">Thêm giỏ hàng</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card"><img src="img/bai2.jpg" class="card-img-top"
                                               style="width: 488px;height: 450px">
                            <div class="card-body">
                                <div class="d-flex justify-content-between"><span class="font-weight-bold">Bia Corona Extra</span>
                                    <span class="font-weight-bold">819,000₫</span></div>
                                <p class="card-text mb-1 mt-1">Thùng 24 Chai 330ml [HCM] [Hà Nội]</p>
                                <div class="d-flex align-items-center flex-row"><img
                                        src="https://i.imgur.com/e9VnSng.png" width="20"> <span class="guarantee">1 Years Guarantee</span>
                                </div>
                            </div>
                            <hr>
                            <div class="card-body">
                                <div class="text-right buttons">
                                    <button class="btn btn-outline-dark">Thêm yêu thích</button>
                                    <button class="btn btn-dark">Thêm giỏ hàng</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card"><img src="img/bia3.jpg" class="card-img-top"
                                               style="width: 488px;height: 450px">
                            <div class="card-body">
                                <div class="d-flex justify-content-between"><span class="font-weight-bold">Bia Coronita Extra</span>
                                    <span class="font-weight-bold">145,000₫</span></div>
                                <p class="card-text mb-1 mt-1">Lốc 6 Chai 207ml - Bia Nhập Khẩu - Tặng 4 L...</p>
                                <div class="d-flex align-items-center flex-row"><img
                                        src="https://i.imgur.com/e9VnSng.png" width="20"> <span class="guarantee">4 Years Guarantee</span>
                                </div>
                            </div>
                            <hr>
                            <div class="card-body">
                                <div class="text-right buttons">
                                    <button class="btn btn-outline-dark">Thêm yêu thích</button>
                                    <button class="btn btn-dark">Thêm giỏ hàng</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card"><img src="img/bia4.jpg" class="card-img-top"
                                               style="width: 488px;height: 450px">
                            <div class="card-body">
                                <div class="d-flex justify-content-between"><span class="font-weight-bold">Bia Corona Extra</span>
                                    <span class="font-weight-bold">218,000₫</span></div>
                                <p class="card-text mb-1 mt-1">Lốc 6 Chai 330ml - Bia Nhập Khẩu - Tặng 4 Lót...</p>
                                <div class="d-flex align-items-center flex-row"><img
                                        src="https://i.imgur.com/e9VnSng.png" width="20"> <span class="guarantee">3 Years Guarantee</span>
                                </div>
                            </div>
                            <hr>
                            <div class="card-body">
                                <div class="text-right buttons">
                                    <button class="btn btn-outline-dark">Thêm yêu thích</button>
                                    <button class="btn btn-dark">Thêm giỏ hàng</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card"><img src="img/bia5.jpg" class="card-img-top"
                                               style="width: 488px;height: 450px">
                            <div class="card-body">
                                <div class="d-flex justify-content-between"><span class="font-weight-bold">Bia Corona Extra</span>
                                    <span class="font-weight-bold">829,000₫</span></div>
                                <p class="card-text mb-1 mt-1">Thùng 24 Chai 330ml - Bia Nhập Khẩu - Tặng Lố...</p>
                                <div class="d-flex align-items-center flex-row"><img
                                        src="https://i.imgur.com/e9VnSng.png" width="20"> <span class="guarantee">8 Years Guarantee</span>
                                </div>
                            </div>
                            <hr>
                            <div class="card-body">
                                <div class="text-right buttons">
                                    <button class="btn btn-outline-dark">Thêm yêu thích</button>
                                    <button class="btn btn-dark">Thêm giỏ hàng</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card"><img src="img/bia6.jpg" class="card-img-top"
                                               style="width: 488px;height: 450px">
                            <div class="card-body">
                                <div class="d-flex justify-content-between"><span class="font-weight-bold">Bia Coronita Extra</span>
                                    <span class="font-weight-bold">998,000₫</span></div>
                                <p class="card-text mb-1 mt-1"> Combo 2 Thùng Chai 207ml</p>
                                <div class="d-flex align-items-center flex-row"><img
                                        src="https://i.imgur.com/e9VnSng.png" width="20"> <span class="guarantee">2 Years Guarantee</span>
                                </div>
                            </div>
                            <hr>
                            <div class="card-body">
                                <div class="text-right buttons">
                                    <button class="btn btn-outline-dark">Thêm yêu thích</button>
                                    <button class="btn btn-dark">Thêm giỏ hàng</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
                <!--Chairs-->
                <div class="d-flex justify-content-between p-3 bg-white mb-3 align-items-center"><span
                        class="font-weight-bold text-uppercase">Luxury Chairs</span>
                    <div><img src="https://img.icons8.com/windows/100/000000/list.png" width="30"/> <img
                            src="https://img.icons8.com/ios-filled/100/000000/squared-menu.png" width="25"/></div>
                </div>
                <div class="row g-3">
                    <div class="col-md-4">
                        <div class="card"><img src="https://i.imgur.com/2ldaKjy.jpg" class="card-img-top">
                            <div class="card-body">
                                <div class="d-flex justify-content-between"><span class="font-weight-bold">Wodden chairs set-2</span>
                                    <span class="font-weight-bold">$150</span></div>
                                <p class="card-text mb-1 mt-1">Some quick example text to build on the card title and
                                    make up the bulk of the card's content.</p>
                                <div class="d-flex align-items-center flex-row"><img
                                        src="https://i.imgur.com/e9VnSng.png" width="20"> <span class="guarantee">4 Years Guarantee</span>
                                </div>
                            </div>
                            <hr>
                            <div class="card-body">
                                <div class="text-right buttons">
                                    <button class="btn btn-outline-dark">Thêm yêu thích</button>
                                    <button class="btn btn-dark">Thêm giỏ hàng</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card"><img src="https://i.imgur.com/lTgyE2X.jpg" class="card-img-top">
                            <div class="card-body">
                                <div class="d-flex justify-content-between"><span class="font-weight-bold">Wodden Chairs Premium set-2</span>
                                    <span class="font-weight-bold">$200</span></div>
                                <p class="card-text mb-1 mt-1">Some quick example text to build on the card title and
                                    make up the bulk of the card's content.</p>
                                <div class="d-flex align-items-center flex-row"><img
                                        src="https://i.imgur.com/e9VnSng.png" width="20"> <span class="guarantee">2 Years Guarantee</span>
                                </div>
                            </div>
                            <hr>
                            <div class="card-body">
                                <div class="text-right buttons">
                                    <button class="btn btn-outline-dark">Thêm yêu thích</button>
                                    <button class="btn btn-dark">Thêm giỏ hàng</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card"><img src="https://i.imgur.com/NFcMfYE.jpg" class="card-img-top">
                            <div class="card-body">
                                <div class="d-flex justify-content-between"><span class="font-weight-bold">Office Chairs set-2</span>
                                    <span class="font-weight-bold">$500</span></div>
                                <p class="card-text mb-1 mt-1">Some quick example text to build on the card title and
                                    make up the bulk of the card's content.</p>
                                <div class="d-flex align-items-center flex-row"><img
                                        src="https://i.imgur.com/e9VnSng.png" width="20"> <span class="guarantee">7 Years Guarantee</span>
                                </div>
                            </div>
                            <hr>
                            <div class="card-body">
                                <div class="text-right buttons">
                                    <button class="btn btn-outline-dark">Thêm yêu thích</button>
                                    <button class="btn btn-dark">Thêm giỏ hàng</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card"><img src="https://i.imgur.com/eu74Mje.jpg" class="card-img-top">
                            <div class="card-body">
                                <div class="d-flex justify-content-between"><span class="font-weight-bold">Wodden Chair set-3</span>
                                    <span class="font-weight-bold">$350</span></div>
                                <p class="card-text mb-1 mt-1">Some quick example text to build on the card title and
                                    make up the bulk of the card's content.</p>
                                <div class="d-flex align-items-center flex-row"><img
                                        src="https://i.imgur.com/e9VnSng.png" width="20"> <span class="guarantee">3 Years Guarantee</span>
                                </div>
                            </div>
                            <hr>
                            <div class="card-body">
                                <div class="text-right buttons">
                                    <button class="btn btn-outline-dark">Thêm yêu thích</button>
                                    <button class="btn btn-dark">Thêm giỏ hàng</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card"><img src="https://i.imgur.com/L5iInTA.jpg" class="card-img-top">
                            <div class="card-body">
                                <div class="d-flex justify-content-between"><span class="font-weight-bold">Dinning chairs set-4</span>
                                    <span class="font-weight-bold">$200</span></div>
                                <p class="card-text mb-1 mt-1">Some quick example text to build on the card title and
                                    make up the bulk of the card's content.</p>
                                <div class="d-flex align-items-center flex-row"><img
                                        src="https://i.imgur.com/e9VnSng.png" width="20"> <span class="guarantee">8 Years Guarantee</span>
                                </div>
                            </div>
                            <hr>
                            <div class="card-body">
                                <div class="text-right buttons">
                                    <button class="btn btn-outline-dark">Thêm yêu thích</button>
                                    <button class="btn btn-dark">Thêm giỏ hàng</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card"><img src="https://i.imgur.com/64PRDTx.jpg" class="card-img-top">
                            <div class="card-body">
                                <div class="d-flex justify-content-between"><span class="font-weight-bold">Office Chairs set-2</span>
                                    <span class="font-weight-bold">$450</span></div>
                                <p class="card-text mb-1 mt-1">Some quick example text to build on the card title and
                                    make up the bulk of the card's content.</p>
                                <div class="d-flex align-items-center flex-row"><img
                                        src="https://i.imgur.com/e9VnSng.png" width="20"> <span class="guarantee">3 Years Guarantee</span>
                                </div>
                            </div>
                            <hr>
                            <div class="card-body">
                                <div class="text-right buttons">
                                    <button class="btn btn-outline-dark">Thêm yêu thích</button>
                                    <button class="btn btn-dark">Thêm giỏ hàng</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="contact-tab">
                <!--Dining-->
                <div class="d-flex justify-content-between p-3 bg-white mb-3 align-items-center"><span
                        class="font-weight-bold text-uppercase">Luxury Dining</span>
                    <div><img src="https://img.icons8.com/windows/100/000000/list.png" width="30"/> <img
                            src="https://img.icons8.com/ios-filled/100/000000/squared-menu.png" width="25"/></div>
                </div>
                <div class="row g-3">
                    <div class="col-md-4">
                        <div class="card"><img src="img/bia13.jpg" class="card-img-top"
                                               style="width: 488px;height: 450px">
                            <div class="card-body">
                                <div class="d-flex justify-content-between"><span
                                        class="font-weight-bold">Bia Budweiser</span> <span class="font-weight-bold">425,000₫</span>
                                </div>
                                <p class="card-text mb-1 mt-1"> Thùng 24 Lon 330ml - Mua là có quà [HCM, Hà Nội]</p>
                                <div class="d-flex align-items-center flex-row"><img
                                        src="https://i.imgur.com/e9VnSng.png" width="20"> <span class="guarantee">4 Years Guarantee</span>
                                </div>
                            </div>
                            <hr>
                            <div class="card-body">
                                <div class="text-right buttons">
                                    <button class="btn btn-outline-dark">Thêm yêu thích</button>
                                    <button class="btn btn-dark">Thêm giỏ hàng</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card"><img src="img/bia14.jpg" class="card-img-top"
                                               style="width: 488px;height: 450px">
                            <div class="card-body">
                                <div class="d-flex justify-content-between"><span
                                        class="font-weight-bold">Bia Budweiser</span> <span class="font-weight-bold">425,000₫</span>
                                </div>
                                <p class="card-text mb-1 mt-1"> Thùng 24 Lon 330ml.</p>
                                <div class="d-flex align-items-center flex-row"><img
                                        src="https://i.imgur.com/e9VnSng.png" width="20"> <span class="guarantee">6 Years Guarantee</span>
                                </div>
                            </div>
                            <hr>
                            <div class="card-body">
                                <div class="text-right buttons">
                                    <button class="btn btn-outline-dark">Thêm yêu thích</button>
                                    <button class="btn btn-dark">Thêm giỏ hàng</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card"><img src="img/bia15.jpg" class="card-img-top"
                                               style="width: 488px;height: 450px">
                            <div class="card-body">
                                <div class="d-flex justify-content-between"><span class="font-weight-bold">Bia Budweiser Sleek</span>
                                    <span class="font-weight-bold">425,000₫</span></div>
                                <p class="card-text mb-1 mt-1">Can Thùng 24 Lon 330ml</p>
                                <div class="d-flex align-items-center flex-row"><img
                                        src="https://i.imgur.com/e9VnSng.png" width="20"> <span class="guarantee">4 Years Guarantee</span>
                                </div>
                            </div>
                            <hr>
                            <div class="card-body">
                                <div class="text-right buttons">
                                    <button class="btn btn-outline-dark">Thêm yêu thích</button>
                                    <button class="btn btn-dark">Thêm giỏ hàng</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card"><img src="img/bia16.jpg" class="card-img-top"
                                               style="width: 488px;height: 450px">
                            <div class="card-body">
                                <div class="d-flex justify-content-between"><span
                                        class="font-weight-bold">Bia Budweiser</span> <span class="font-weight-bold">1,235,000₫</span>
                                </div>
                                <p class="card-text mb-1 mt-1">Combo 3 Thùng 24 Lon 330ml (Tặng Thùng Coca)</p>
                                <div class="d-flex align-items-center flex-row"><img
                                        src="https://i.imgur.com/e9VnSng.png" width="20"> <span class="guarantee">6 Years Guarantee</span>
                                </div>
                            </div>
                            <hr>
                            <div class="card-body">
                                <div class="text-right buttons">
                                    <button class="btn btn-outline-dark">Thêm yêu thích</button>
                                    <button class="btn btn-dark">Thêm giỏ hàng</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card"><img src="img/bia17.jpg" class="card-img-top"
                                               style="width: 488px;height: 450px">
                            <div class="card-body">
                                <div class="d-flex justify-content-between"><span
                                        class="font-weight-bold">Bia Budweiser</span> <span class="font-weight-bold">850,000₫</span>
                                </div>
                                <p class="card-text mb-1 mt-1">Combo 2 Thùng 24 Lon 330ml - Tặng thùng Mì Omach..</p>
                                <div class="d-flex align-items-center flex-row"><img
                                        src="https://i.imgur.com/e9VnSng.png" width="20"> <span class="guarantee">8 Years Guarantee</span>
                                </div>
                            </div>
                            <hr>
                            <div class="card-body">
                                <div class="text-right buttons">
                                    <button class="btn btn-outline-dark">Thêm yêu thích</button>
                                    <button class="btn btn-dark">Thêm giỏ hàng</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card"><img src="img/bia18.jpg" class="card-img-top"
                                               style="width: 488px;height: 450px">
                            <div class="card-body">
                                <div class="d-flex justify-content-between"><span
                                        class="font-weight-bold">Bia Budweiser</span> <span class="font-weight-bold">835,000₫</span>
                                </div>
                                <p class="card-text mb-1 mt-1">Combo 2 Thùng 24 Lon 330ml - Tặng Thùng Đá Chỉ T...</p>
                                <div class="d-flex align-items-center flex-row"><img
                                        src="https://i.imgur.com/e9VnSng.png" width="20"> <span class="guarantee">6 Years Guarantee</span>
                                </div>
                            </div>
                            <hr>
                            <div class="card-body">
                                <div class="text-right buttons">
                                    <button class="btn btn-outline-dark">Thêm yêu thích</button>
                                    <button class="btn btn-dark">Thêm giỏ hàng</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="" style="
    margin-bottom: 40px;">
    <div class="container-fluid mt-3">
        <div class="row justify-content-center">
            <div class="col-lg-9 px-0">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-4 bg-black">
                            <div class="card rounded-0 border-0 card1">
                                <div class="row justify-content-center">
                                    <div class="col-md-12 col-10">
                                        <h2 id="summer">Spring</h2>
                                    </div>
                                    <div class="col-md-12 col-10">
                                        <h2 id="sale">sale</h2>
                                    </div>
                                </div>
                                <div class="row justify-content-center">
                                    <div class="col-md-12 col-10">
                                        <h2 id="saveupto">save up to</h2>
                                    </div>
                                </div>
                                <div class="row justify-content-center">
                                    <div class="col-11">
                                        <div class="row justify-content-left">
                                            <div class="col-md-6 col-6 text-right">
                                                <h2 id="thirty" class="">30</h2>
                                            </div>
                                            <div class="col-1 px-0"></div>
                                            <div class="col-4 text-left">
                                                <div class="row d-flex">
                                                    <p id="percent">%</p>
                                                </div>
                                                <div class="row d-flex">
                                                    <p id="off">OFF</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row justify-content-center">
                                    <p id="instore">in stores & online</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-8 bg-white">
                            <form class="">
                                <div class="card rounded-0 border-0 card2">
                                    <div class="row justify-content-center">
                                        <div class="col-11">
                                            <h4 class="subhead1 text-center">Nhập email của bạn ở bên dưới</h4>
                                        </div>
                                    </div>
                                    <div class="row justify-content-center">
                                        <div class="col-11">
                                            <h3 class="subhead2 text-center">chúng tôi nên gửi 30% giảm giá của bạn ở
                                                đâu?</h3>
                                        </div>
                                    </div>

                                    <div class="row justify-content-center">
                                        <div class="col-md-10 col-11">
                                            <div class="form-group row">
                                                <div class="col-md-12">
                                                    <input id="email" type="email" placeholder="Email your email here"
                                                           class="form-control input-box rm-border">
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <div class="col-md-12">
                                                    <input type="submit" value="Nhận giảm giá"
                                                           class="btn btn-red rm-border btn-block"
                                                           style="width: 100%; margin-top: 10px">
                                                </div>
                                            </div>
                                            <div class="form-group row justify-content-center mb-0">
                                                <div class="col-md-12 px-3 mt-4">
                                                    <a href="#" style="text-decoration: none;"><p class="thanks">Không,
                                                        cám ơn</p></a>
                                                </div>
                                            </div>

                                            <div class="form-group row justify-content-center mb-0">
                                                <div class="col-md-10 px-3">
                                                    <p class="conditions">Chỉ những người đăng ký lần đầu. *Giảm 30% cho
                                                        các đơn đặt hàng trên 500.000đ và việc nhập email của bạn cũng
                                                        giúp bạn đủ điều kiện nhận các email quảng cáo trong tương
                                                        lai.</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<footer>
    <div class="container">
        <div class="row" style="margin: 0px;padding: 0px">
            <div class="col-lg-3 col-sm-6">
                <div class="single-box">
                    <img src="/index/img/logo.png" alt="" height="60" width="60">
                    <p>Đăng kí nhận thông tin ưu đãi hàng tuần của chúng tôi để kịp thời tham gia các chương trình hấp
                        dẫn. </p>
                    <h3>We Accect</h3>
                </div>
            </div>
            <div class="col-lg-3 col-sm-6">
                <div class="single-box">
                    <h2>Văn phòng</h2>
                    <ul>
                        <li><a href="#">Codegym Đà Nẵng</a></li>
                        <li><a href="#">Số điện thoại: 1900 2237</a></li>
                        <li><a href="#">Email: info@vuabia.com</a></li>
                        <li><a href="#">C1022G1</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-3 col-sm-6">
                <div class="single-box">
                    <h2>Thông tin liên lạc</h2>
                    <ul>
                        <li><a href="#">Nguyễn Lê Văn Khải</a></li>
                        <li><a href="#">Thái Quang Trường</a></li>
                        <li><a href="#">Trần Thuận Kỳ</a></li>
                        <li><a href="#">0702750320</a></li>
                        <li><a href="#">khainguyenlevan@gmail.com</a></li>
                        <li><a href="#">Trường Sơn, Cẩm Lệ, Đà Nẵng</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-3 col-sm-6">
                <div class="single-box">
                    <h2>Đăng ký nhận tin khuyến mãi</h2>
                    <p>Vui lòng nhập email | hoặc số điện thoại | hoặc Facebook của bạn tại ô dưới đây:</p>
                    <div class="input-group mb-3">
                        <input type="text" class="form-control" placeholder="Vui lòng nhập"
                               aria-label="Enter your Email ..." aria-describedby="basic-addon2">
                        <span class="input-group-text" id="basic-addon2"><i class="fa fa-check"></i></span>
                    </div>
                    <h2>Follow us on</h2>
                </div>
            </div>
        </div>
    </div>
</footer>
</body>
</html>

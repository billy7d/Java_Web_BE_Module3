<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 24/09/2020
  Time: 20:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>

    <link rel="stylesheet" href="../../../bootstrap-4.5.2-dist/css/bootstrap.css">

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="index.css">


</head>
<style>
    .carousel-inner img{
        width: 100%;
        height: 100%;
        vertical-align: middle;
        horiz-align: center;
    }

    .carousel-inner h1{
        color: #17a2b8;
        font-weight: bold;
    }

    .nav-item a{
        font-size: large;
    }
    #jumbo-text{
        margin-left: 120px;
    }

    #welcome{
        margin-top: 40px;
    }

    .card{
        margin-left: 70px;
        margin-top: 30px;

    }

    .footer-img{
        margin-left: 70px;
    }
</style>

<body>
<nav class="navbar navbar-expand-sm bg-light navbar-light sticky-top">
    <a class="navbar-brand" href="#"><img src="https://i.pinimg.com/236x/35/93/fc/3593fc6c1af7ea7c1560cb08400d5694.jpg" width="80" height="80"></a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav">
            <li class="nav-item">
                <a class="nav-link active" href="#">Menu</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">Discounts</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">Funfacts</a>
            </li>
        </ul>
    </div>
</nav>

<!-- Image Slider-->
<div id="slides" class="carousel slide" data-ride="carousel">
    <ul class="carousel-indicators">
        <li data-target="#slides" data-slide-to="0" class="active"></li>
        <li data-target="#slides" data-slide-to="1"></li>
        <li data-target="#slides" data-slide-to="2"></li>
    </ul>

    <div class="carousel-inner">
        <div class="carousel-item active">
            <img src="https://wallpapershome.com/images/pages/pic_h/15363.jpg" width="400" height="400" class="slide-img">
            <div class="carousel-caption">
                <h1>LamThon Ice''Shop</h1>
                <h3>có mỗi con wave tàu</h3>
                <button type="button" class="btn btn-outline-light btn-lg">Lam Thon</button>
                <button type="button" class="btn btn-info btn-lg">Hung dzai</button>
            </div>
        </div>
        <div class="carousel-item">
            <img src="https://wallpapershome.com/images/pages/pic_h/15360.jpg" width="400" height="400" class="slide-img">
        </div>
        <div class="carousel-item">
            <img src="https://wallpapershome.com/images/pages/pic_h/488.jpg" width="400" height="400" class="slide-img">
        </div>
    </div>
</div>

<!--Welcome-->
<div class="container-fluid" id="welcome">
    <div class="row welcome text-center">
        <div class="col-12">
            <h1 class="display-4">LamThon Ice''Shop</h1>
        </div>
        <hr>
        <div class="col-12">
            <p class="lead">Ra đời năm 2020 với bề dày lịch sử 2h , cùng với các nghệ nhân điêu nghệ nhất trong ngành
                đã cho ra đời những sản phâm tinh túy nhất đến tay người tiêu dùng</p>
        </div>
    </div>
</div>

<div class="container-fluid">
    <div class="row">
        <div class="card col">
            <img class="card-img-top" src="https://i.pinimg.com/564x/29/b1/a0/29b1a0a2b674398ce1cbfe7bfd8185af.jpg">
            <div class="card-body">
                <h4 class="card-title">Kem Oc Que</h4>
                <h5>56.000VND</h5>
                <p class="card-text">Kem ngon</p>
                <a href="#" class="btn btn-primary">Order</a>
            </div>
        </div>
        <div class="card col">
            <img class="card-img-top" src="https://i.pinimg.com/564x/29/b1/a0/29b1a0a2b674398ce1cbfe7bfd8185af.jpg">
            <div class="card-body col">
                <h4 class="card-title">Kem Oc Que</h4>
                <h5>56.000VND</h5>
                <p class="card-text">Kem ngon</p>
                <a href="#" class="btn btn-primary">Order</a>
            </div>
        </div>
        <div class="card col">
            <img class="card-img-top" src="https://i.pinimg.com/564x/29/b1/a0/29b1a0a2b674398ce1cbfe7bfd8185af.jpg">
            <div class="card-body col">
                <h4 class="card-title">Kem Oc Que</h4>
                <h5>56.000VND</h5>
                <p class="card-text">Kem ngon</p>
                <a href="#" class="btn btn-primary">Order</a>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="card col">
            <img class="card-img-top" src="https://i.pinimg.com/564x/29/b1/a0/29b1a0a2b674398ce1cbfe7bfd8185af.jpg">
            <div class="card-body">
                <h4 class="card-title">Kem Oc Que</h4>
                <h5>56.000VND</h5>
                <p class="card-text">Kem ngon</p>
                <a href="#" class="btn btn-primary">Order</a>
            </div>
        </div>
        <div class="card col">
            <img class="card-img-top" src="https://i.pinimg.com/564x/29/b1/a0/29b1a0a2b674398ce1cbfe7bfd8185af.jpg">
            <div class="card-body col">
                <h4 class="card-title">Kem Oc Que</h4>
                <h5>56.000VND</h5>
                <p class="card-text">Kem ngon</p>
                <a href="#" class="btn btn-primary">Order</a>
            </div>
        </div>
        <div class="card col">
            <img class="card-img-top" src="https://i.pinimg.com/564x/29/b1/a0/29b1a0a2b674398ce1cbfe7bfd8185af.jpg">
            <div class="card-body col">
                <h4 class="card-title">Kem Oc Que</h4>
                <h5>56.000VND</h5>
                <p class="card-text">Kem ngon</p>
                <a href="#" class="btn btn-primary">Order</a>
            </div>
        </div>
    </div>
</div>
<div class="container-fluid">
    <div class="row jumbotron">
        <div class="col"><a href="#"><img src="https://i.pinimg.com/236x/41/b0/ed/41b0edd10bd1fcca1833c2e651fcfdaa.jpg" width="70px" class="footer-img"></a></div>
        <div class="col"><a href="#"><img src="https://i.pinimg.com/236x/41/b0/ed/41b0edd10bd1fcca1833c2e651fcfdaa.jpg" width="70px" class="footer-img"></a></div>
        <div class="col"><a href="#"><img src="https://i.pinimg.com/236x/41/b0/ed/41b0edd10bd1fcca1833c2e651fcfdaa.jpg" width="70px" class="footer-img"></a></div>

    </div>

</div>

</body>
<script src="../../../bootstrap-4.5.2-dist/js/bootstrap.js"></script>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>


</html>

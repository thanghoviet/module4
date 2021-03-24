<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <title>Colorlib Balita &mdash; Minimal Blog Template</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css?family=Josefin+Sans:300, 400,700" rel="stylesheet">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/homePage/css/bootstrap.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/homePage/css/animate.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/homePage/css/owl.carousel.min.css">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/homePage/fonts/ionicons/css/ionicons.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/homePage/fonts/fontawesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/homePage/fonts/flaticon/font/flaticon.css">

    <!-- Theme Style -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/homePage/css/style.css">
</head>
<body>


<header role="banner">
    <div class="top-bar">
        <div class="container">
            <div class="row">
                <div class="col-9 social">
                    <a href="#"><span class="fa fa-twitter"></span></a>
                    <a href="#"><span class="fa fa-facebook"></span></a>
                    <a href="#"><span class="fa fa-instagram"></span></a>
                    <a href="#"><span class="fa fa-youtube-play"></span></a>
                    <a href="#"><span class="fa fa-vimeo"></span></a>
                    <a href="#"><span class="fa fa-snapchat"></span></a>
                </div>
                <div class="col-3 search-top">
                    <!-- <a href="#"><span class="fa fa-search"></span></a> -->
                    <form action="#" class="search-top-form">
                        <span class="icon fa fa-search"></span>
                        <input type="text" id="search" placeholder="Type keyword to search...">
                    </form>
                </div>
                <div class="col-5 text-right">
                    <c:if test="${sessionScope.account == null}">
                        <a class="text-white" href="${pageContext.request.contextPath}/login?action=login">Login |</a>
                        <a class="text-white" href="${pageContext.request.contextPath}/logout?action=logout">Sign up</a>
                    </c:if>
                    <c:if test="${sessionScope.account != null}">
                        <span class="text-white">Hello ${sessionScope.account.alias}</span>
                        <button class="btn btn-black dropdown-toggle " type="button" id="dropdownMenuButton"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"
                                style="border-radius: 50%">
                            <img style="width: 45px; height: 45px; border-radius: 50%"
                                 src="<c:url value="${sessionScope.account.image}" />" alt="">
                        </button>
                        <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                            <a class="dropdown-item" href="${pageContext.request.contextPath}/post?action=listUser">Manager Post</a>
                            <c:if test="${sessionScope.account.role == true}">
                                <a class="dropdown-item" href="${pageContext.request.contextPath}/user?action=listUser">Manager User</a>
                            </c:if>
                            <a class="dropdown-item" href="#">Setting</a>
                        </div>
                        <a class="text-white" href="/logout">logout</a>
                    </c:if>
                </div>

            </div>
        </div>
    </div>

    <div class="container logo-wrap">
        <div class="row pt-5">
            <div class="col-12 text-center">
                <a class="absolute-toggle d-block d-md-none" data-toggle="collapse" href="#navbarMenu" role="button"
                   aria-expanded="false" aria-controls="navbarMenu"><span class="burger-lines"></span></a>
                <h1 class="site-logo"><a href="index.jsp">Blog Masster</a></h1>
            </div>
        </div>
    </div>

    <nav class="navbar navbar-expand-md  navbar-light bg-light">
        <div class="container">


            <div class="collapse navbar-collapse" id="navbarMenu">
                <ul class="navbar-nav mx-auto">
                    <li class="nav-item">
                        <a class="nav-link active" href="${pageContext.request.contextPath}/home?action=home">Home</a>
                    </li>
                    <form action="" method="post">
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="category.jsp" id="dropdown04"
                               data-toggle="dropdown"
                               aria-haspopup="true" aria-expanded="false">Category</a>
                            <div class="dropdown-menu" aria-labelledby="dropdown04">
                                <a class="dropdown-item" href="category.jsp">
                                    <c:forEach items="${categoryList}" var="type">
                                        <a class="dropdown-item" href="category.jsp"
                                           value="${type.id}">${type.title}</a>
                                    </c:forEach>
                                </a>

                            </div>
                        </li>
                    </form>
                    <li class="nav-item">
                        <a class="nav-link" href="about.jsp">About</a>
                    </li>
                </ul>

            </div>
        </div>
    </nav>
</header>
<!-- END header -->

<section class="site-section py-lg">
    <div class="container">

        <div class="row blog-entries">
            <div class="col-md-12 col-lg-8 main-content">
                <h1 class="mb-4">${post.title}</h1>
                <div class="post-meta">
                    <span class="category">${post.category.title}</span>
                    <span class="mr-2">${post.createDate}</span> &bullet;
                    <span class="ml-2"><span class="fa fa-comments"></span> 3</span>
                </div>
                <!-- Post content -->
                <div class="post-content-body">${post.content}</div>

                <div class="pt-5">
                    <h3 class="mb-5">${comments.size()} Comments</h3>
                    <ul class="comment-list">
                        <c:forEach var="cmt" items="${comments}" >
                        <li class="comment">
                            <div class="comment-body">
                                <h3>${cmt.email}</h3>
                                <div class="meta">${cmt.createDate}</div>
                                <p>${cmt.content}</p>
                            </div>
                        </li>
                        </c:forEach>
                    </ul>
                    <!-- END comment-list -->

                    <div class="comment-form-wrap pt-5">
                        <h3 class="mb-5">Leave a comment</h3>
                        <form action="${pageContext.request.contextPath}/home" method="post" class="p-5 bg-light">
                            <input type="hidden" name="action" value="create">

                            <input type="hidden" name="post_id" value="${post.id}">
                            <div class="form-group">
                                <label for="email">Email *</label>
                                <input type="email" class="form-control" id="email" name="email">
                            </div>
                            <div class="form-group">
                                <label for="content">Comment :</label>
                                <textarea name="content" id="content" cols="30" rows="10" class="form-control"></textarea>
                            </div>
                            <div class="form-group">
                                <input type="submit" value="Post Comment" class="btn btn-primary">
                            </div>

                        </form>
                    </div>
                </div>

            </div>

            <!-- END main-content -->

            <div class="col-md-12 col-lg-4 sidebar">
                <div class="sidebar-box search-form-wrap">
                    <form action="#" class="search-form">
                        <div class="form-group">
                            <span class="icon fa fa-search"></span>
                            <input type="text" class="form-control" id="s" placeholder="Type a keyword and hit enter">
                        </div>
                    </form>
                </div>
                <!-- END sidebar-box -->
                <div class="sidebar-box">
                    <div class="bio text-center">
                        <img src="${pageContext.request.contextPath}/homePage/images/person_1.jpg" alt="Image Placeholder" class="img-fluid">
                        <div class="bio-body">
                            <h2>Meagan Smith</h2>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Exercitationem facilis sunt
                                repellendus excepturi beatae porro debitis voluptate nulla quo veniam fuga sit molestias
                                minus.</p>
                            <p><a href="#" class="btn btn-primary btn-sm">Read my bio</a></p>
                            <p class="social">
                                <a href="#" class="p-2"><span class="fa fa-facebook"></span></a>
                                <a href="#" class="p-2"><span class="fa fa-twitter"></span></a>
                                <a href="#" class="p-2"><span class="fa fa-instagram"></span></a>
                                <a href="#" class="p-2"><span class="fa fa-youtube-play"></span></a>
                            </p>
                        </div>
                    </div>
                </div>
                <!-- END sidebar-box -->
                <div class="sidebar-box">
                    <h3 class="heading">Popular Posts</h3>
                    <div class="post-entry-sidebar">
                        <ul>
                            <li>
                                <c:forEach items="${top3Post}" var="post">
                                    <a href="">
                                        <img src="${post.image}" alt="Image placeholder" class="mr-4">
                                        <div class="text">
                                            <h4>${post.sortContent}</h4>
                                            <div class="post-meta">
                                                <span class="mr-2">${post.createDate}</span> &bullet;
                                                <span class="ml-2"><span class="fa fa-comments"></span> 3</span>
                                            </div>
                                        </div>
                                    </a>
                                </c:forEach>
                            </li>

                        </ul>
                    </div>
                </div>
                <!-- END sidebar-box -->

                <div class="sidebar-box">
                    <h3 class="heading">Category</h3>
                    <ul class="tags">
                        <c:forEach items="${categoryList}" var="type">
                            <li> <a  class="dropdown-item" href="category.jsp" value="${type.id}">${type.title}</a></li>
                        </c:forEach>

                    </ul>
                </div>
                <!-- END sidebar-box -->

            </div>
            <!-- END sidebar -->

        </div>
    </div>
</section>

<section class="py-5">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h2 class="mb-3 ">Related Post</h2>
            </div>
        </div>
        <div class="row">
            <c:forEach items="${top3Post}" var="post">
                <div class="col-md-6 col-lg-4">
                    <a href="${pageContext.request.contextPath}/home?action=blogSingle&id=${post.id}" class="a-block d-flex align-items-center height-md"
                       style="background-image: url('${post.image}'); ">
                        <div class="text">
                            <div class="post-meta">
                                <span class="category">${post.category.title}</span>
                                <span class="mr-2">${post.createDate}  </span>
                                <span class="ml-2"><span class="fa fa-comments"></span> 3</span>
                            </div>
                            <h3>${post.title}</h3>
                        </div>
                    </a>
                </div>
            </c:forEach>

        </div>
    </div>


</section>
<!-- END section -->

<footer class="site-footer">
    <div class="container">
        <div class="row mb-5">
            <div class="col-md-4">
                <h3>Paragraph</h3>
                <img src="${pageContext.request.contextPath}/homePage/images/img_1.jpg" alt="Image placeholder" class="img-fluid">
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nisi, accusantium optio unde perferendis
                    eum illum voluptatibus dolore tempora, consequatur minus asperiores temporibus reprehenderit.</p>
            </div>
            <div class="col-md-6 ml-auto">
                <div class="row">
                    <div class="col-md-7">
                        <h3>Latest Post</h3>
                        <div class="post-entry-sidebar">
                            <ul>
                                <li>
                                    <a href="">
                                        <img src="${pageContext.request.contextPath}/homePage/images/img_6.jpg" alt="Image placeholder" class="mr-4">
                                        <div class="text">
                                            <h4>There’s a Cool New Way for Men to Wear Socks and Sandals</h4>
                                            <div class="post-meta">
                                                <span class="mr-2">March 15, 2018 </span> &bullet;
                                                <span class="ml-2"><span class="fa fa-comments"></span> 3</span>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="">
                                        <img src="${pageContext.request.contextPath}/homePage/images/img_3.jpg" alt="Image placeholder" class="mr-4">
                                        <div class="text">
                                            <h4>There’s a Cool New Way for Men to Wear Socks and Sandals</h4>
                                            <div class="post-meta">
                                                <span class="mr-2">March 15, 2018 </span> &bullet;
                                                <span class="ml-2"><span class="fa fa-comments"></span> 3</span>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="">
                                        <img src="${pageContext.request.contextPath}/homePage/images/img_4.jpg" alt="Image placeholder" class="mr-4">
                                        <div class="text">
                                            <h4>There’s a Cool New Way for Men to Wear Socks and Sandals</h4>
                                            <div class="post-meta">
                                                <span class="mr-2">March 15, 2018 </span> &bullet;
                                                <span class="ml-2"><span class="fa fa-comments"></span> 3</span>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-1"></div>

                    <div class="col-md-4">

                        <div class="mb-5">
                            <h3>Quick Links</h3>
                            <ul class="list-unstyled">
                                <li><a href="#">About Us</a></li>
                                <li><a href="#">Travel</a></li>
                                <li><a href="#">Adventure</a></li>
                                <li><a href="#">Courses</a></li>
                                <li><a href="#">Categories</a></li>
                            </ul>
                        </div>

                        <div class="mb-5">
                            <h3>Social</h3>
                            <ul class="list-unstyled footer-social">
                                <li><a href="#"><span class="fa fa-twitter"></span> Twitter</a></li>
                                <li><a href="#"><span class="fa fa-facebook"></span> Facebook</a></li>
                                <li><a href="#"><span class="fa fa-instagram"></span> Instagram</a></li>
                                <li><a href="#"><span class="fa fa-vimeo"></span> Vimeo</a></li>
                                <li><a href="#"><span class="fa fa-youtube-play"></span> Youtube</a></li>
                                <li><a href="#"><span class="fa fa-snapchat"></span> Snapshot</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                Copyright &copy;<script>document.write(new Date().getFullYear());</script>
                All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a
                    href="https://colorlib.com" target="_blank">Colorlib</a>
                <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
            </div>
        </div>
    </div>
</footer>
<!-- END footer -->

<!-- loader -->
<div id="loader" class="show fullscreen">
    <svg class="circular" width="48px" height="48px">
        <circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/>
        <circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10"
                stroke="#f4b214"/>
    </svg>
</div>

<script src="${pageContext.request.contextPath}/homePage/js/jquery-3.2.1.min.js"></script>
<script src="${pageContext.request.contextPath}/homePage/js/jquery-migrate-3.0.0.js"></script>
<script src="${pageContext.request.contextPath}/homePage/js/popper.min.js"></script>
<script src="${pageContext.request.contextPath}/homePage/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/homePage/js/owl.carousel.min.js"></script>
<script src="${pageContext.request.contextPath}/homePage/js/jquery.waypoints.min.js"></script>
<script src="${pageContext.request.contextPath}/homePage/js/jquery.stellar.min.js"></script>


<script src="${pageContext.request.contextPath}/homePage/js/main.js"></script>
</body>
</html>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>MiniGuru</title>
    <link rel="icon" href="/resources/images/logo.png" type="image/x-icon" sizes="32x32">
    <jsp:include page="common-page/common-header.jsp"/>
	<!-- jquery -->
	<script src="/resources/js/jquery-3.4.1.min.js"></script>
	<!-- bootstrap -->
	<script src="/resources/js/bootstrap.bundle.min.js"></script>
</head>
<body>
    <div class="row d-none d-md-block" id="home">
        <div class="col-12">
            <div class="navbar py-3 navbar-light navbar-expand-lg mx-auto sticky-top" id="navbar">
                <a href="index.html" class="navbar-brand text-uppercase text-italic" id="logo"><img class="img-fluid rounded" src="/resources/images/logo.png"  alt=""></a>
                <h1 class="text-white navbar-brand text-uppercase text-italic">Mini Guru</h1>
                <!-- end of logo -->

                <button class="navbar-toggler" type="button" data-toggle="collapse"
                    data-target="#navbarLinks">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <!-- nav button end -->
                <div class="collapse navbar-collapse justify-content-end" id="navbarLinks">
                    <ul class="navbar-nav">
                        <li class="nav-items">
                            <a href="#home" class="nav-link">Home</a>
                        </li>
                        <li class="nav-items">
                                <a href="#aboutUs" class="nav-link">About Us</a>
                        </li>
                        <li class="nav-items">
                                <a href="#product" class="nav-link">Products</a>
                        </li>
                        <li class="nav-items">
                            <a href="#teamMember" class="nav-link">Team</a>
                        </li>
                        <li class="nav-items">
                            <a href="#contactUs" class="nav-link">Contact Us</a>
                        </li>
                    </ul>
                </div>
            </div>   
            <!-- nav element end  -->
        </div>
    </div>
    <!-- end of nav bar -->

   
    <div class="row">
        <div class="col-12 imageBlock">
            <img class="d-block w-100 img-fluid grayscale" src="" alt="" style="height:800px;">
            <div class="imageBlockText text-center"><h1 style="font-size: 52px;"><b>Healthcare</b></h1>
            </div>
        </div>
    </div>
    <!-- End of Parallax Image -->
 
    <div class="container" id="aboutUs">
        <div class="row py-5"></div>
        <div class="row aboutUs my-3">
            <div class="col-12 col-md-6 d-flex justify-content-center align-items-center" id='aboutusImgDiv'>
               <img class="aboutUsImage" src="../images/healthcare.jpg" alt="About-us">
            </div>
            <div class="col-12 col-md-6 ">
                <div class="row py-5">
                    <div class="col">
                        <h3 class="d-flex justify-content-center align-items-center">About Us</h3>
                        <c:forEach var="temp" items="${homepage}" varStatus="loop">
                        	${loop.index+1}. data
                        <ul>
                        	<li>${temp.aboutus}</li>
                        	<li>${temp.content}</li>
                        </ul>
                        	
                        	<br>
                        </c:forEach>
                        <div class="headingLine"></div>
                    </div>
                    <div class="">
                        <div class="aboutUsText">
                            <p class=" mx-5">Lorem ipsum dolor sit amet consectetur adipisicing elit. Quaerat a repudiandae laboriosam sed eligendi amet fuga, esse nesciunt soluta, repellendus suscipit unde repellat adipisci iusto similique porro hic odit neque!</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End of About Us -->

    <div class="container" id="product">
        <div class="row py-3"></div>
        <div class="row my-5">
            <div class="col-12">
                <h2 class="d-flex justify-content-center align-items-center"> Our Products </h2>
                <div class="headingLine"></div>
            </div>
        </div>
        <!-- <div class="row"> -->
            <!-- <figure class="col-md-6 gallery">
                <img alt="picture" src="./images/kawach.jpg" class="img-fluid gallery-image">
                <h3 class="text-center">Kawach Mask</h3>
                <p class="text-center mx-4">KAWACH is developed by IIT Delhi Start-up ETEX which has 98% protection from PM 3 particles and prevent from dust, bacteria, allergen, smog, pollutants, etc. It is approved by of India authorized laboratory SITRA.</p>
            </figure> -->
            <div class="card-deck mx-auto py-3">
                <div class="card">
                    <img class="card-img-top" src="./images/kawach.jpg">
                        <div class="card-body">
                            <h4 class="card-title">Product 1</h4>
                            <p class="card-text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Sint quod cupiditate laboriosam veritatis doloremque sapiente obcaecati natus tenetur asperiores, sit voluptates impedit perferendis facere incidunt architecto? Laboriosam illum itaque voluptatibus.</p>
                        </div>
                </div>
                <div class="card">
                    <img class="card-img-top" src="./images/glucoseMonitor.jpg  ">
                        <div class="card-body">
                            <h4 class="card-title">Product 2</h4>
                            <p class="card-text">Lorem ipsum dolor sit, amet consectetur adipisicing elit. Ea animi necessitatibus enim. Voluptas, non animi. Nemo ipsam porro ex vitae! Facilis quo veniam tempore laborum illum voluptates reprehenderit soluta sunt!</p>
                        </div>
                </div>
            </div>
            <!-- <figure class="col-md-6 gallery">
                <img alt="picture" src="./images/glucoseMonitor.jpg" class="img-fluid gallery-image" />
                <h3 class="text-center">Non-invasive glucose monitoring</h3>
                <p class="text-center mx-4">India being diabetes capital of world with more than 60 million people having diabetes, there is a dire need of a low cost, home based, non-invasive glucose monitoring device for regular usage purpose. Currently under research, this product is expected to go live in 6 months’ time period.</p>
            </figure> -->
        
        <!-- </div> -->
    </div>
    <!-- End of Product Gallery  -->

    <div class="container" id="teamMember">
        <div class="row py-3"></div>
        <div class="row my-3">
            <div class="col-12 py-5">
                <h2 class="py-2 topic text-capitalize text-center d-flex justify-content-center align-items-center">Our Team</h2>
                <div class="headingLine"></div>
            </div>
            <div class="card-deck mx-auto">
                <div class="card">
                    <img class="card-img-top" src="./images/patient1.jpg" alt="Card image cap">
                    <div class="card-body">
                    <h4 class="card-title">Jenny </h5><span><h6 class="person-title"><b>Title</b></h6></span>
                    <p class="card-text card-description">Lorem ipsum dolor sit, amet consectetur adipisicing elit. Animi dignissimos ducimus, at corrupti quos maiores suscipit! Consectetur illum tempore a cum ullam repudiandae minus tenetur! Necessitatibus vitae et voluptates asperiores.</p>
                    </div>
                </div>
                <div class="card">
                    <img class="card-img-top" src="./images/patient2.jpg" alt="Card image cap">
                    <div class="card-body">
                    <h5 class="card-title">Rob</h5><span><h6 class="person-title"><b>Title</b></h6></span>
                    <p class="card-text card-description">Lorem ipsum dolor sit amet consectetur adipisicing elit. Odio eveniet non explicabo ratione ea esse laborum quo est magnam sequi deleniti, amet quibusdam. Eligendi quia est eius rerum beatae tempora!</p>
                    </div>
                </div>
                <div class="card">
                    <img class="card-img-top" src="./images/patient3.jpg" alt="Card image cap">
                    <div class="card-body">
                    <h5 class="card-title">Mark</h5><span><h6 class="person-title"><b>Title</b></h6></span>
                    <p class="card-text card-description">Lorem ipsum, dolor sit amet consectetur adipisicing elit. Ratione molestiae commodi asperiores amet officiis tenetur dicta. Voluptatibus a nesciunt, architecto officia, alias dolores laboriosam non odio ut eaque repellendus qui!</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End of Team Members -->


    <!-- <div class="container">
        <div class="row">
            <div class="col-12">
                    <i class="fab fa-facebook"></i>
            </div>
        </div>
    </div> -->

    <div class="container" id="contactUs">
        <div class="row py-3"></div>
        <div class="row my-5">
            <div class="col-12">
                <h2 class="d-flex justify-content-center align-items-center"> Contact Us</h2>
                <div class="headingLine"></div>
            </div>
        </div>
        <div class="row aboutUs py-3">
            <div class="col-12 col-md-6 mx-auto">
                <div class="container-fluid" >
                    <div class="map-responsive" style="height: 400px;">
                        <iframe src="https://www.google.com/maps/embed/v1/place?key=AIzaSyA0s1a7phLN0iaD6-UE7m4qP-z21pH0eSc&q=india" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
                    </div>
                </div>
            </div>
            <div class="col-12 col-md-6">
                <form ">
                    <div class="form-row">
                        <div class="form-group col-md-6">
                        <label for="inputName4">Name</label>
                        <input type="text" class="form-control" id="inputName4" placeholder="Name" required>
                        </div>
                        <div class="form-group col-md-6">
                        <label for="inputPhone4">Email</label>
                        <input type="email" class="form-control" id="inputPhone4" placeholder="Email" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="inputAddress">Message</label>
                        <textarea type="text-area" class="form-control" id="inputAddress" placeholder="Message:" required></textarea>
                    </div>
                    <div class="form-group text-center">
                        <button type="submit" class="btn btn-info">Submit</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <!-- End of Contact Us -->
    
    <footer id="footer">
        <div class="col-12 text-center">
            <p>All Rights reserved &copy;</p>
            <p>Made with &#10084; by  Haque Web</p>
        </div>
    </footer>



<script>
    document.querySelectorAll('a[href^="#"]')
    .forEach(anchor => {
        anchor.addEventListener('click', function (e) {
            e.preventDefault();

            document.querySelector(this.getAttribute('href')).scrollIntoView({
            behavior: 'smooth'
            });
        });
    });
    window.onscroll = function() {myFunction()};

    var navbar = document.getElementById("navbar");
    var sticky = navbar.offsetTop;

    function myFunction() {
    if (window.pageYOffset >= sticky) {
        navbar.classList.add("sticky")
    } else {
        navbar.classList.remove("sticky");
    }
    }
    $("a").each(function() {
        if ((window.location.pathname.indexOf($(this).attr('active'))) > -1) {
            $(this).addClass('activeMenuItem');
        }
    });
</script>
</body>
</html>
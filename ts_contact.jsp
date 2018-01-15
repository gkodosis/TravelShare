<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="cl.*" %>
<%@ page errorPage="ts_error.jsp" %>

<%
User user = (User) session.getAttribute("user-object");
if(session.getAttribute("user-object") == null) {
	request.setAttribute("message", "You are not authorized to access this resource. Please login.");
%>

<!DOCTYPE html>
<html lang="en">

<head>
  	<%@ include file="common_pages/page_head.html"  %>


</head>

<body>
	<!-- Fixed navbar -->
  <nav class="navbar fixed-top navbar-expand-lg navbar-light bg-light fixed-top">
    <div class="container">
      <a class="navbar-brand" href="ts_index.jsp" style ="font-weight: bold; font-size: 1.38rem;">TravelShare</a>
      <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item">
            <form class="form-inline my-2 my-lg-0 mr-lg-2">
              <div class="input-group">
                <input class="form-control" type="text" placeholder="Search for...">
                <span class="input-group-btn">
                  <button class="btn btn-primary" type="button">
                    <i class="fa fa-search"></i>
                  </button>
                </span>
              </div>
            </form>
          </li>

		<li class="<%= ( request.getRequestURI().replace(request.getContextPath() + "/","").equals("ts_index.jsp")
			|| request.getRequestURI().replace(request.getContextPath() + "/","").equals("about") ? "active":"") %>">
            <a class="nav-link" href="ts_index.jsp#about">About</a>
		</li>
		<li class="<%= (request.getRequestURI().replace(request.getContextPath() + "/","").equals("ts_explore.jsp") ? "active":"") %>">
            <a class="nav-link" href="ts_explore.jsp">Explore</a>
		</li>
          <li class="<%= (request.getRequestURI().replace(request.getContextPath() + "/","").equals("ts_contact.jsp") ? "active":"") %>">
            <a class="nav-link" href="ts_contact.jsp">Contact</a>
		  </li>
          <li class="<%= (request.getRequestURI().replace(request.getContextPath() + "/","").equals("ts_register.jsp") ? "active":"") %>">
            <a class="nav-link" href="ts_register.jsp">Sign up</a>
		  </li>
		  <li class="<%= (request.getRequestURI().replace(request.getContextPath() + "/","").equals("ts_login.jsp") ? "active":"") %>">
            <a class="nav-link" href="ts_login.jsp">Login</a>
		  </li>
	   </ul>

	  </div>


	<!--/.nav-collapse -->
	</div>
	</nav>
	<!-- /.Fixed navbar -->

    <!-- Page Content -->
    <div class="container">

      <ol class="breadcrumb">
        <li class="breadcrumb-item">
          <a href="ts_index.html">Home</a>
        </li>
        <li class="breadcrumb-item active">Contact</li>
      </ol>

      <!-- Content Row -->
      <div class="row">
        <!-- Map Column -->
        <div class="col-lg-8 mb-4">
          <!-- Embedded Google Map -->
          <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3144.2735055142957!2d23.730246715323894!3d37.994080479720175!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x14a1a2ccc0f74c4d%3A0x98bfad208765bc87!2zzp_Ouc66zr_Ovc6_zrzOuc66z4wgzqDOsc69zrXPgM65z4PPhM6uzrzOuc6_IM6RzrjOt869z47OvQ!5e0!3m2!1sel!2sgr!4v1513783101254" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>      
        </div>
        <!-- Contact Details Column -->
        <div class="col-lg-4 mb-4">
          <h3>Contact Details</h3>
          <p>
            28is Oktovriou 76, Athina 104 34

            <br>
          </p>
          <p>
            <abbr title="Phone">Phone Number</abbr>: 21 0820 3911
          </p>
          <p>
            <abbr title="Email">Email</abbr>:
            <a href="mailto:name@example.com">gxkont@gmail.com            </a>
            <a href="mailto:name@example.com">nisso.iasonas@gmail.com     </a>

          </p>
          <p>
            <abbr title="Hours">Working Hours</abbr>: Monday - Friday: 9:00 to 17:00
          </p>
        </div>
      </div>
      <!-- /.row -->

      <!-- Contact Form -->
      <!-- In order to set the email address and subject line for the contact form go to the bin/contact_me.php file. -->
      <div class="row">
        <div class="col-lg-8 mb-4">
          <h3>Send us a Message</h3>
          <form name="sentMessage" id="contactForm" novalidate>
            <div class="control-group form-group">
              <div class="controls">
                <label>Full Name:</label>
                <input type="text" class="form-control" id="name" required data-validation-required-message="Please enter your name.">
                <p class="help-block"></p>
              </div>
            </div>
            <div class="control-group form-group">
              <div class="controls">
                <label>Phone Number:</label>
                <input type="tel" class="form-control" id="phone" required data-validation-required-message="Please enter your phone number.">
              </div>
            </div>
            <div class="control-group form-group">
              <div class="controls">
                <label>Email Address:</label>
                <input type="email" class="form-control" id="email" required data-validation-required-message="Please enter your email address.">
              </div>
            </div>
            <div class="control-group form-group">
              <div class="controls">
                <label>Message:</label>
                <textarea rows="10" cols="100" class="form-control" id="message" required data-validation-required-message="Please enter your message" maxlength="999" style="resize:none"></textarea>
              </div>
            </div>
            <div id="success"></div>
            <!-- For success/fail messages -->
            <button type="submit" class="btn btn-primary" id="sendMessageButton">Send Message</button>
          </form>
        </div>

      </div>
      <!-- /.row -->

    </div>
    <!-- /.container -->

    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
    <!-- Page level plugin JavaScript-->
    <script src="vendor/chart.js/Chart.min.js"></script>
    <script src="vendor/datatables/jquery.dataTables.js"></script>
    <script src="vendor/datatables/dataTables.bootstrap4.js"></script>
    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin.min.js"></script>
    <!-- Custom scripts for this page-->
    <script src="js/sb-admin-datatables.min.js"></script>
    <script src="js/sb-admin-charts.min.js"></script>
  </div>
  <!-- Footer -->
  <footer class="py-5 bg-light">
    <div class="container">
      <p class="m-0 text-center">Copyright &copy; TravelShare 2017</p>
    </div>
  </footer>
</body>
</html>

<%
} else {
	UserDAO udao = new UserDAO();
%>

<!DOCTYPE html>
<html lang="en">

<head>
  	<%@ include file="common_pages/page_head.html"  %>


</head>

<body>

  	<%@ include file="common_pages/navigation_menu.jsp"  %>
	<!-- Page Content -->
    <div class="container">

      <ol class="breadcrumb">
        <li class="breadcrumb-item">
          <a href="ts_index.html">Home</a>
        </li>
        <li class="breadcrumb-item active">Contact</li>
      </ol>

      <!-- Content Row -->
      <div class="row">
        <!-- Map Column -->
        <div class="col-lg-8 mb-4">
          <!-- Embedded Google Map -->
          <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3144.2735055142957!2d23.730246715323894!3d37.994080479720175!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x14a1a2ccc0f74c4d%3A0x98bfad208765bc87!2zzp_Ouc66zr_Ovc6_zrzOuc66z4wgzqDOsc69zrXPgM65z4PPhM6uzrzOuc6_IM6RzrjOt869z47OvQ!5e0!3m2!1sel!2sgr!4v1513783101254" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>      
        </div>
        <!-- Contact Details Column -->
        <div class="col-lg-4 mb-4">
          <h3>Contact Details</h3>
          <p>
            28is Oktovriou 76, Athina 104 34

            <br>
          </p>
          <p>
            <abbr title="Phone">Phone Number</abbr>: 21 0820 3911
          </p>
          <p>
            <abbr title="Email">Email</abbr>:
            <a href="mailto:name@example.com">gxkont@gmail.com            </a>
            <a href="mailto:name@example.com">nisso.iasonas@gmail.com     </a>

          </p>
          <p>
            <abbr title="Hours">Working Hours</abbr>: Monday - Friday: 9:00 to 17:00
          </p>
        </div>
      </div>
      <!-- /.row -->

      <!-- Contact Form -->
      <!-- In order to set the email address and subject line for the contact form go to the bin/contact_me.php file. -->
      <div class="row">
        <div class="col-lg-8 mb-4">
          <h3>Send us a Message</h3>
          <form name="sentMessage" id="contactForm" novalidate>
            <div class="control-group form-group">
              <div class="controls">
                <label>Full Name:</label>
                <input type="text" class="form-control" id="name" required data-validation-required-message="Please enter your name.">
                <p class="help-block"></p>
              </div>
            </div>
            <div class="control-group form-group">
              <div class="controls">
                <label>Phone Number:</label>
                <input type="tel" class="form-control" id="phone" required data-validation-required-message="Please enter your phone number.">
              </div>
            </div>
            <div class="control-group form-group">
              <div class="controls">
                <label>Email Address:</label>
                <input type="email" class="form-control" id="email" required data-validation-required-message="Please enter your email address.">
              </div>
            </div>
            <div class="control-group form-group">
              <div class="controls">
                <label>Message:</label>
                <textarea rows="10" cols="100" class="form-control" id="message" required data-validation-required-message="Please enter your message" maxlength="999" style="resize:none"></textarea>
              </div>
            </div>
            <div id="success"></div>
            <!-- For success/fail messages -->
            <button type="submit" class="btn btn-primary" id="sendMessageButton">Send Message</button>
          </form>
        </div>

      </div>
      <!-- /.row -->

    </div>
    <!-- /.container -->

    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
    <!-- Page level plugin JavaScript-->
    <script src="vendor/chart.js/Chart.min.js"></script>
    <script src="vendor/datatables/jquery.dataTables.js"></script>
    <script src="vendor/datatables/dataTables.bootstrap4.js"></script>
    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin.min.js"></script>
    <!-- Custom scripts for this page-->
    <script src="js/sb-admin-datatables.min.js"></script>
    <script src="js/sb-admin-charts.min.js"></script>
  </div>
  <!-- Footer -->
  <footer class="py-5 bg-light">
    <div class="container">
      <p class="m-0 text-center">Copyright &copy; TravelShare 2017</p>
    </div>
  </footer>
</body>
</html>

<%
}
%>

	

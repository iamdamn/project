<!DOCTYPE HTML>
<html>
<head>
<%@ include file="head.jsp"%>
</head>
<body>

	<!-- Header -->
	<div id="header">

		<!-- Logo -->
		<h1>
			<a href="index.jsp" id="logo">Voting Ballot</em></a>
		</h1>

		<!-- Nav -->
		<nav id="nav">
			<ul>

				<%
					String email = (String) request.getSession().getAttribute("email");
					if (email != null) {
				%>
				<li><a href="welcome.jsp">Home</a></li>
				<li><a href="about.jsp">About</a></li>
				<li><a href='electionList'>Election</a></li>
				<li><a href='resultList'>Result</a></li>

				<li class='current'><a href="dev.jsp">Developers</a></li>

				<%
					} else {
				%>
				<li><a href="index.jsp">Home</a></li>
				<li><a href="about.jsp">About</a></li>

				<li><a href="">Access</a>

					<ul>
						<li><a href="login.jsp">Login</a></li>
						<li><a href="register.jsp">Register</a></li>


						<!-- 						<li><a href="">Submenu</a> -->
						<!-- 							<ul> -->
						<!-- 								<li><a href="#">Lorem dolor</a></li> -->
						<!-- 								<li><a href="#">Phasellus magna</a></li> -->
						<!-- 								<li><a href="#">Magna phasellus</a></li> -->
						<!-- 								<li><a href="#">Etiam nisl</a></li> -->
						<!-- 								<li><a href="#">Veroeros feugiat</a></li> -->
						<!-- 							</ul></li> -->
					</ul></li>
				<li class="current"><a href="dev.jsp">Developers</a></li>
				<%
					}
				%>


			</ul>
		</nav>

	</div>
	<div class='container'>
		<%
			if (email != null) {
		%>
		<h3>
			Welcome
			<%=email%>. -- <a href='logout'> Logout</a>
		</h3>
		<%
			}
		%>
	</div>

	<!-- Main -->
	<section class="wrapper style1">
		<div class="container">
			<!-- Gigantic Heading -->
			<section class="wrapper style2">
				<div class="container">
					<header class="major">
						<h2>Amruta Institute of Engineering and Management Sciences</h2>
						<p>Final year project work 2016</p>
					</header>
				</div>
			</section>

			<!-- Posts -->
			<section class="wrapper style1">
				<div class="container">
					<div class="row">
						<section class="6u 12u(narrower)">
							<div class="box post">
								<a href="#" class="image left"><img src="C:\Users\NANDITHA\Desktop\proj pics\Bhargavi.jpg"
									alt="" /></a>
								<div class="inner">
									<h3>Navya</h3>
									<p>
										1AR11CS005<br>
									</p>
								</div>
							</div>
						</section>
						<section class="6u 12u(narrower)">
							<div class="box post">
								<a href="#" class="image left"><img src="C:\Users\NANDITHA\Desktop\proj pics\Divya.jpg"
									alt="" /></a>
								<div class="inner">
									<h3>Rahul</h3>
									<p>
										1CS11CS013<br>
									</p>
								</div>
							</div>
						</section>
					</div>
					<div class="row">
						<section class="6u 12u(narrower)">
							<div class="box post">
								<a href="#" class="image left"><img src="C:\Users\NANDITHA\Desktop\proj pics\Nanditha.jpg"
									alt="" /></a>
								<div class="inner">
									<h3>Lekhashree</h3>
									<p>
										1AR11CS029<br>
									</p>
								</div>
							</div>
						</section>
						<section class="6u 12u(narrower)">
							<div class="box post">
								<a href="#" class="image left"><img src="images/.jpg"
									alt="" /></a>
								<div class="inner">
									<h3>Pavithra</h3>
									<p>
										1AR11CS053<br>
									</p>
								</div>
							</div>
						</section>
					</div>
				</div>
			</section>


		</div>

	</section>
	<%@include file='footer.jsp'%>

</body>
</html>
<%@page import="java.util.*,com.voting.pojo.*,java.text.*"%>
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
				<li class='current'><a href='electionList'>Election</a></li>
				<li><a href='resultList'>Result</a></li>

				<li><a href="dev.jsp">Developers</a></li>

				<%
					} else {
				%>
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
			} else {
				response.sendRedirect("login.jsp?res=fail");
			}
		%>
	</div>

	<section class="wrapper style1">

		<div class='container'>

			<div class='row'>

				<div class='twelve columns'>
					<%
						List<Election> result = (List<Election>) request.getAttribute("res");
																	List<Integer> history = (List<Integer>) request.getAttribute("history");
																		if (result == null) {
					%>
					<h3>Something went wrong. Unable to pull the elections list at
						this time.</h3>
					<%
						} else if (result.size() == 0) {
					%>
					<h3>No Elections have been registered yet.</h3>
					<%
						} else {
					%>
					<h3>Elections List</h3>

					<table id='req'>
						<thead>
							<tr align="left">
								<th>ID</th>
								<th>Description</th>
								<th>Assembly</th>
								<th>Commence Date</th>
								<th>Start Time</th>
								<th>End Time</th>

								<th>Status</th>
								<th>Action</th>

							</tr>
						</thead>

						<tbody>
							<%
								for (Election e : result) {
							%>
							<tr valign="top">
								<td><%=e.getId()%></td>
								<td><%=e.getDescp()%></td>
								<td><%=e.getAssembly()%></td>
								<td>
									<%
										SimpleDateFormat sdf = new SimpleDateFormat("MMMM dd, yyyy");
										SimpleDateFormat sdf2 = new SimpleDateFormat("hh : mm");
									%> <%=sdf.format(e.getCommencedate())%></td>
								<td><%=sdf2.format(e.getBegintime())%></td>
								<td><%=sdf2.format(e.getEndtime())%></td>
								<td><%=e.getState()%></td>
								<td>
									<%
										if (e.getState().equals("NEW")) {
									%> UPCOMING <%
										} else if (e.getState().equals("LIVE")) {
											if ( !((String)session.getAttribute("assembly")).equals(e.getAssembly()) ){
									%> <a
									href='votenow?eid=<%=e.getId()%>&desc=<%=e.getDescp()%>&assembly=<%=e.getAssembly()%>'
									class='button'>VIEW PARTICIPANTS</a> <%
 	} 
   									
   									else if (!history.contains(e.getId()) && ((String)session.getAttribute("assembly")).equals(e.getAssembly()))  {
 %> <a
									href='votenow?eid=<%=e.getId()%>&desc=<%=e.getDescp()%>&assembly=<%=e.getAssembly()%>'
									class='button'>VOTE NOW</a> <%
 	} else {
 %> ALREADY VOTED <%
 	} }
 %>

								</td>
							</tr>
							<%
								}
							%>
						</tbody>
					</table>
					<%
						}
					%>



				</div>
			</div>



		</div>


	</section>

	<%@include file='footer.jsp'%>
</body>
</html>




<script>
	����function my_function() {
			window.location = location.href;
		}
	$(document).ready(function() {
		setInterval("my_function();", 3000);

		$('#req').dataTable({
			"pagingType" : "full_numbers"
		});

	});
</script>
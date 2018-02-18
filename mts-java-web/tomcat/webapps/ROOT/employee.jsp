<%@page contentType="text/html;charset=UTF-8" language="java" session="false" %>
<!doctype html>
<html lang="en">
<%@include file="head.jsp"%>
<body>
    <%@include file="menu.jsp"%>
	<center><h1>Register Employee</h1></center>
	<div class="container">
		<form>
			<br>
			<div class="form-row">
				<div class="form-group col-md-6">
					<label for="employeeName">Name</label>
					<input type="text" class="form-control" id="employeeName" placeholder="Name">
				</div>
				<div class="form-group col-md-6">
					<label for="employeeNumber">Number</label>
					<input type="text" class="form-control" id="employeeNumber" placeholder="Number">
				</div>
			</div>
			<div class="form-row">
				<div class="form-group col-md-4">
					<label for="employeePosition">Position</label>
					<select id="employeePosition" class="form-control">
						<option selected>Standard (SD)</option>
						<option>Crew Trainer (CT)</option>
						<option>Team Leader (TL)</option>
						<option>Supervisor (SV)</option>
						<option>Assistant Manager (AM)</option>
						<option>Manager (MG)</option>
					</select>
				</div>
				<div class="form-group col-md-4">
					<label for="employeePermission">Permission</label>
					<select id="employeePermission" class="form-control">
						<option selected>A+</option>
						<option>A</option>
						<option>B+</option>
						<option>B</option>
						<option>C+</option>
						<option>C</option>
					</select>
				</div>
				<div class="form-check form-check-inline">
					<input class="form-check-input" type="radio" name="employeeTime" id="employeePartTime" value="PT" checked>
					<label class="form-check-label" for="employeePartTime">Part Time</label>
				</div>
				<div class="form-check form-check-inline">
					<input class="form-check-input" type="radio" name="employeeTime" id="employeeFullTime" value="FT">
					<label class="form-check-label" for="employeeFullTime">Full Time</label>
				</div>
			</div>
			<div class="form-row">
				<div class="form-group col-md-12">
					<label for="employeeSectorTrained">Sector Trained</label>
					<select multiple class="form-control" id="employeeSectorTrained">
						<option>Prep</option>
						<option>WipeDown</option>
						<option>Cash & Sale</option>
						<option>Detail</option>
					</select>
				</div>
			</div>
			<button type="button" class="btn btn-primary">New Employee</button>
			<button type="submit" class="btn btn-primary">Save Employee</button>
			<button type="button" class="btn btn-danger">Delete Employee</button>
			</br>
		</form>
	</div>

	<div class="container">
		<table class="table">
			<thead>
				<tr>
					<th scope="col">Name</th>
					<th scope="col">Position</th>
					<th scope="col">Permission</th>
					<th scope="col">Full/Part Time</th>
					<th scope="col">Trained Sector</th>
				</tr>
			</thead>
			<tbody>
<%
			ResultSet rs = st.executeQuery(
				"SELECT e.employee_name as name, p.position_initial as position,"+ 
				"pe.permission_initial as permission, e.employee_time as time "+
				"FROM tbemployee e "+
				"inner join tbposition p on e.employee_position_id = p.position_id "+
				"inner join tbpermission pe on e.employee_permission_id = pe.permission_id "+
				"order by e.employee_name asc");
			while (rs.next()) {
%>
				<tr>
					<th><%=rs.getString("name")%></th>
					<td><%=rs.getString("position")%></td>
					<td><%=rs.getString("permission")%></td>
					<td><%=rs.getInt("time")==0?"Partial Time":"Full Time"%></td>
					<td>N/D</td>
				</tr>
<%
			}
%>
			</tbody>
		</table>
	</div>
    <%@include file="js.jsp"%>
</body>
</html>
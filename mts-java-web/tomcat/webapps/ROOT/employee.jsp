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
				<tr>
					<th>Junior C.</th>
					<td>TL</td>
					<td>A+</td>
					<td>Full Time</td>
					<td>PR/WD</td>
				</tr>
				<tr>
					<th>Cassio</th>
					<td>ST</td>
					<td>A+</td>
					<td>Full Time</td>
					<td>PR/WD</td>
				</tr>
				<tr>
					<th>Michael</th>
					<td>CT</td>
					<td>A+</td>
					<td>Part Time</td>
					<td>PR/WD</td>
				</tr>
				<tr>
					<th>Sanjiv</th>
					<td>CT</td>
					<td>A+</td>
					<td>Full Time</td>
					<td>PR/WD</td>
				</tr>
				<tr>
					<th>Nick H.</th>
					<td>ST</td>
					<td>A+</td>
					<td>Full Time</td>
					<td>PR/WD</td>
				</tr>
				<tr>
					<th>Kelly</th>
					<td>SD</td>
					<td>A+</td>
					<td>Part Time</td>
					<td>WD</td>
				</tr>
				<tr>
					<th>Abebe</th>
					<td>SD</td>
					<td>A</td>
					<td>Full Time</td>
					<td>PR</td>
				</tr>
			</tbody>
		</table>
		<nav aria-label="Page navigation example">
			<ul class="pagination">
				<li class="page-item">
					<a class="page-link" href="#">Previous</a>
				</li>
				<li class="page-item">
					<a class="page-link" href="#">1</a>
				</li>
				<li class="page-item">
					<a class="page-link" href="#">2</a>
				</li>
				<li class="page-item">
					<a class="page-link" href="#">3</a>
				</li>
				<li class="page-item">
					<a class="page-link" href="#">Next</a>
				</li>
			</ul>
		</nav>
	</div>
    <%@include file="js.jsp"%>
</body>
</html>
<!doctype html>
<html lang="en">
<%@include file="head.jsp"%>
<body>
    <%@include file="menu.jsp"%>
	<center><h1>Register Position</h1></center>

	<div class="container">
		<form>
			<br>
			<div class="form-row">
				<div class="form-group col-md-1">
					<label for="positionInitial">Initial</label>
					<input type="text" class="form-control" id="positionInitial" placeholder="Initial">
				</div>
				<div class="form-group col-md-12">
					<label for="positionDescription">Description</label>
					<input type="text" class="form-control" id="positionDescription" placeholder="Description">
				</div>
			</div>
			<button type="button" class="btn btn-primary">New Position</button>
			<button type="submit" class="btn btn-primary">Save Position</button>
			<button type="button" class="btn btn-danger">Delete Position</button>
			</br>
		</form>
	</div>
	<div class="container">
		<table class="table">
			<thead>
				<tr>
					<th scope="col">Initial</th>
					<th scope="col">Description</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th>SD</th>
					<td>Standard</td>
				</tr>
				<tr>
					<th>CT</th>
					<td>Crew Trainer</td>
				</tr>
				<tr>
					<th>TL</th>
					<td>Team Leader</td>
				</tr>
				<tr>
					<th>SV</th>
					<td>Supervisor</td>
				</tr>
				<tr>
					<th>AM</th>
					<td>Assistent Manager</td>
				</tr>
				<tr>
					<th>MG</th>
					<td>Manager</td>
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
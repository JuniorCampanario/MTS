<!doctype html>
<html lang="en">
<%@include file="head.jsp"%>
<body>
    <%@include file="menu.jsp"%>
	<center><h1>Register Sector</h1></center>

	<div class="container">
		<form>
			<br>
			<div class="form-row">
				<div class="form-group col-md-1">
					<label for="positionInitial">Initial</label>
					<input type="text" class="form-control" id="positionInitial" placeholder="Initial">
				</div>
				<div class="form-group col-md-12">
					<label for="sectorDescription">Description</label>
					<input type="text" class="form-control" id="sectorDescription" placeholder="Description">
				</div>
			</div>
			<button type="button" class="btn btn-primary">New Sector</button>
			<button type="submit" class="btn btn-primary">Save Sector</button>
			<button type="button" class="btn btn-danger">Delete Sector</button>
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
					<th>PR</th>
					<td>Prep</td>
				</tr>
				<tr>
					<th>WD</th>
					<td>WipeDown</td>
				</tr>
				<tr>
					<th>CS</th>
					<td>Cash & Sale</td>
				</tr>
				<tr>
					<th>DT</th>
					<td>Detail</td>
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
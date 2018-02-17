<!doctype html>
<html lang="en">
<%@include file="head.jsp"%>
<body>
    <%@include file="menu.jsp"%>
	<center><h1>Register Permission</h1></center>

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
					<textarea class="form-control" id="positionDescription" placeholder="Description" rows="3"></textarea>
				</div>
			</div>
			<button type="button" class="btn btn-primary">New Permission</button>
			<button type="submit" class="btn btn-primary">Save Permission</button>
			<button type="button" class="btn btn-danger">Delete Permission</button>
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
					<th>A+</th>
					<td>Trained in all positions and "High Risk" driving
						<br> Wipedown: Interior/wipedown/"High Risk" driving
						<br> Prep: Vacuum/Pressure wash/drive on/"High Risk" driving
					</td>
				</tr>
				<tr>
					<th>A</th>
					<td>Trained in all positions and ALLOWED TO DRIVE EXCLUDING "High Risk"
						<br> Wipedown: Interior/wipedown/driving
						<br> Prep: Vacuum/Pressure wash/drive on/driving
					</td>
				</tr>
				<tr>
					<th>B+</th>
					<td>Trained in third position for respected end and ALLOWED TO DRIVE EXCLUDING "High Risk"
						<br> Wipedown: Trained in car checking and back seat interiors and driving
						<br> Prep: Trained in vacuuming/pressure washing and driving
					</td>
				</tr>
				<tr>
					<th>B</th>
					<td>Trained in second position for respected end and ALLOWED TO DRIVE EXCLUDING "High Risk"
						<br> Wipedown: Trained in car checking and driving
						<br> Prep: Trained in vacuuming and driving
					</td>
				</tr>
				<tr>
					<th>C+</th>
					<td>Trained in second position and NOT ALLOWED TO DRIVE
						<br> Wipedown: Trained in wipedown/back seat interiors/no licence
						<br> Prep: Trained in vacuuming/pressure washing/no licence
					</td>
				</tr>
				<tr>
					<th>C</th>
					<td>Trained in first position and NOT ALLOWED TO DRIVE
						<br> Wipedown: Trained in wipedown and no licence
						<br> Prep: Trained in vacuuming and no licence
					</td>
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
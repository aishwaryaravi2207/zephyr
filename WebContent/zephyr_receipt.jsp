<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Zephr | Bill</title>
<link type="text/css" rel="stylesheet" href="css/receipt.css">
<link rel="icon" href="images/logo.jpg" type="image/x-icon" />
</head>

<body>
	<div class="wrapper">
		<div class="header">
			<div class="logo">
				<img class="logo-image" src="images/logo.jpg" />
			</div>
			<div class="question">Thankyou for ordering, Come back soon!!</div>
		</div>
		<div class="content">
			<div class="content-info">
				<div class="options">
					<table border="1">
						<tr>
							<th>Type</th>
							<th>Item</th>
							<th>Price</th>
						</tr>
						<c:forEach var="item" items="${LIST}">
							<tr>
								<td>${item.getItem_type()}</td>
								<td>${item.getItem_name()}</td>
								<td class="price">${item.getItem_price()}</td>
							</tr>
						</c:forEach>
						<tr>
							<td colspan="2" class="tax">Tax</td>
							<td id="tax">5%</td>
						</tr>
						<tr>
							<td colspan="2" class="total">Total</td>
							<td id="totalPrice"></td>
						</tr>
					</table>
				</div>
			</div>
			<div class="navigations">
				<div class="nav-options">
					<div class="home">
						<div class="back-button"
							onclick="window.location.href='zephyr_home.jsp' ; return false;">Close</div>
					</div>
				</div>
			</div>
		</div>
		<script>
			// Calculate and display the sum
			window.onload = function() {
				var table = document.getElementById('billTable');
				var totalPriceCell = document.getElementById('totalPrice');
				var prices = document.getElementsByClassName('price');
				var sum = 0;

				for (var i = 0; i < prices.length; i++) {
					sum += parseFloat(prices[i].textContent);
				}

				sum += (sum * .05);

				totalPriceCell.textContent = sum.toFixed(2); // Display the sum with two decimal places
			};
		</script>
</body>
</html>
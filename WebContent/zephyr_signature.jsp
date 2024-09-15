<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Zephr | Signature</title>
<link type="text/css" rel="stylesheet" href="css/signature.css">
<link rel="icon" href="images/logo.jpg" type="image/x-icon" />
</head>

<body>
	<div class="wrapper">
		<div class="header">
			<div class="logo">
				<img class="logo-image" src="images/logo.jpg" />
			</div>
			<div class="question">Try Our Signature Combos</div>
		</div>
		<div class="content">
			<form class="form-one" action="ZephyrBaseServlet" method="GET">
				<div class="selections">
					<input type="hidden" name="command" value="CALCULATE" /> <input
						type="hidden" name="treat" value="2" />
					<div class="input-box">
						<label for="dropdown">Select Combo</label> <select id="dropdown"
							name="combo" required>
							<option value="" disabled selected>Select an option</option>
							<option value="27">POG (Passion Fruit, Orange, Guava)</option>
							<option value="28">Rose Kanani (Passion Fruit, Guava,
								Mango)</option>
							<option value="29">Forest (Passion Fruit, Pineapple,
								Raspberry)</option>
							<option value="30">Berry Lemonade (Strawberry, Bluberry,
								Lemon)</option>
							<option value="31">Caymon (Banana, Guava, Coconut)</option>
							<option value="32">Pacific Peach (Peach, Pineapple,
								Coconut)</option>
						</select>
					</div>
					<div class="input-box">
						<label for="dropdown">Select size</label> <select id="dropdown"
							name="size" required>
							<option value="" disabled selected>Select an option</option>
							<option value="3">Small</option>
							<option value="4">Large</option>
						</select>
					</div>
					<div class="input-box">
						<label for="dropdown">Select Ice-cream</label> <select
							id="dropdown" name="icecream" required>
							<option value="" disabled selected>Select an option</option>
							<option value="5">Classic Vanilla</option>
							<option value="6">Macadamia Nut</option>
						</select>
					</div>
					<div class="input-box">
						<label for="dropdown">Select Toppings</label> <select
							id="dropdown" name="toppings" required>
							<option value="" disabled selected>Select an option</option>
							<option value="24">Snow Cap</option>
							<option value="25">Toasted Cocunut</option>
							<option value="26">Li Hinge Powder</option>
						</select>
					</div>
				</div>
				<div class="navigations">
					<div class="buttons">
						<button id="cancel"
							onclick="window.location.href='zephyr_select_treat.jsp' ; return false;"
							class="btn">Back</button>
						<button type="submit" id="submit" class="btn">Confirm</button>
					</div>
				</div>
			</form>
		</div>
	</div>
</body>
</html>
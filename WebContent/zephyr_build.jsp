<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Zephr | Build</title>
<link type="text/css" rel="stylesheet" href="css/signature.css">
<link rel="icon" href="images/logo.jpg" type="image/x-icon" />
</head>

<body>
	<div class="wrapper">
		<div class="header">
			<div class="logo">
				<img class="logo-image" src="images/logo.jpg" />
			</div>
			<div class="question">Build Your Own Combo</div>
		</div>
		<div class="content">
			<form class="form-one" action="ZephyrBaseServlet" method="GET">
				<div class="selections">
					<input type="hidden" name="command" value="CALCULATE" /> <input
						type="hidden" name="treat" value="1" />
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
					<div class="input-box">
						<label for="dropdown">Syrup</label> <select id="dropdown"
							name="syrup" required>
							<option value="" disabled selected>Select an option</option>
							<option value="7">Raspberry</option>
							<option value="8">Cherry</option>
							<option value="9">Strawberry</option>
							<option value="10">Watermelon</option>
							<option value="11">Cantaloupe</option>
							<option value="12">Orange</option>
							<option value="13">Peach</option>
							<option value="14">Mango</option>
							<option value="15">Banana</option>
							<option value="16">Pineapple</option>
							<option value="17">Lemon</option>
							<option value="18">Kiwi</option>
							<option value="19">Peach</option>
							<option value="20">Lime</option>
							<option value="21">Blueberry</option>
							<option value="22">Passion fruit</option>
							<option value="23">Guava</option>
							<option value="24">Coconut</option>
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
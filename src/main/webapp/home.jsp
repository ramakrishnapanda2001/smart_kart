<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="navigation.jsp"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Product Listing Page</title>
<link rel="stylesheet" href="home.css">
<link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css'
	rel='stylesheet'>
</head>
<body>
	<!-- Product Sections -->
	<section class="shop_container">
		<h2 class="section-title">Shop Products</h2>
		<div class="shop_contents" id="container">
			<!-- Product Box 1 -->
			<div class="product-box card" id="Samsung-Pro-Watch">
				<a href="product_details_page.jsp?p_id=101"><img id="prod-img-1"
					src="assets/img/watch-1.png" alt="tshirt" class="prod-img"></a>
				<h2 id="prod-title-1" class="product-title">Samsung Pro Watch</h2>
				<span id="prod-price-1" class="price"><i class='bx bx-rupee'></i>25000</span>
				<i class='bx bx-shopping-bag add-cart'></i>
			</div>
			<!-- Product Box 2 -->
			<div class="product-box card" id="Apple-Pro">
				<a href="product_details_page.jsp?p_id=102"><img id="prod-img-2"
					src="assets/img/watch-2.png" alt="earbuds" class="prod-img"></a>
				<h2 id="prod-title-2" class="product-title">Apple Pro</h2>
				<span id="prod-price-2" class="price"><i class='bx bx-rupee'></i>28000</span>
				<i class='bx bx-shopping-bag add-cart'></i>
			</div>
			<!--Product Box3-->
			<div class="product-box card" id="Fireboltt-Pro-Watch">
				<a href="product_details_page.jsp?p_id=103"><img id="prod-img-3"
					src="assets/img/watch-3.png" alt="jacket" class="prod-img"></a>
				<h2 id="prod-title-3" class="product-title">Fireboltt Pro Watch</h2>
				<span id="prod-price-3" class="price"><i class='bx bx-rupee'></i>4999</span>
				<i class='bx bx-shopping-bag add-cart'></i>
			</div>
			<!--Product Box 4-->
			<div class="product-box card" id="Crossbeats-Pro-Watch">
				<a href="product_details_page.jsp?p_id=104"><img id="prod-img-4"
					src="assets/img/watch-4.png" alt="bottle" class="prod-img"></a>
				<h2 id="prod-title-4" class="product-title">CrossBeats Pro
					Watch</h2>
				<span id="prod-price-4" class="price"><i class='bx bx-rupee'></i>7999</span>
				<i class='bx bx-shopping-bag add-cart'></i>
			</div>
			<!--Product Box 5-->
			<div class="product-box card" id="Noise-Pro-Watch">
				<a href="product_details_page.jsp?p_id=105"><img id="prod-img-5"
					src="assets/img/watch-5.png" alt="sunglass" class="prod-img"></a>
				<h2 id="prod-title-5" class="product-title">Noise Pro Watch</h2>
				<span id="prod-price-5" class="price"><i class='bx bx-rupee'></i>9999</span>
				<i class='bx bx-shopping-bag add-cart'></i>
			</div>
			<!--Product Box 6-->
			<div class="product-box card" id="HONOR-Band-Pro-Watch">
				<a href="product_details_page.jsp?p_id=106"><img id="prod-img-6"
					src="assets/img/watch-6.png" alt="cap" class="prod-img"></a>
				<h2 id="prod-title-6" class="product-title">HONOR Band Pro
					Watch</h2>
				<span id="prod-price-6" class="price"><i class='bx bx-rupee'></i>12999</span>
				<i class='bx bx-shopping-bag add-cart'></i>
			</div>
			<!--Product Box 7-->
			<div class="product-box card" id="Amzifit-Pro-Watch">
				<a href="product_details_page.jsp?p_id=107"><img id="prod-img-7"
					src="assets/img/watch-4.png" alt="bag" class="prod-img"></a>
				<h2 id="prod-title-7" class="product-title">Amazfit Pro Watch</h2>
				<span id="prod-price-7" class="price"><i class='bx bx-rupee'></i>11999</span>
				<i class='bx bx-shopping-bag add-cart'></i>
			</div>
			<!--Product Box 8-->
			<div class="product-box card" id="Fastrack-Reflex-Pro"">
				<a href="product_details_page.jsp?p_id=108"><img id="prod-img-8"
					src="assets/img/watch-3.png" alt="shoe" class="prod-img"></a>
				<h2 id="prod-title-8" class="product-title">Fastrack Reflex Pro</h2>
				<span id="prod-price-8" class="price"><i class='bx bx-rupee'></i>5999</span>
				<i class='bx bx-shopping-bag add-cart'></i>
			</div>
			<!--Product Box 9-->
			<div class="product-box card" id="GOQii-Pro-Watch">
				<a href="product_details_page.jsp?p_id=109"><img id="prod-img-9"
					src="assets/img/watch-1.png" alt="shoe" class="prod-img"></a>
				<h2 id="prod-title-9" class="product-title">GOQii Pro Watch</h2>
				<span id="prod-price-9" class="price"><i class='bx bx-rupee'></i>6999</span>
				<i class='bx bx-shopping-bag add-cart'></i>
			</div>
			<!--Product Box 10-->
			<div class="product-box card" id="Gramin-Pro-Watch">
				<a href="product_details_page.jsp?p_id=110"><img
					id="prod-img-10" src="assets/img/watch-4.png" alt="shoe"
					class="prod-img"></a>
				<h2 id="prod-title-10" class="product-title">Garmin Pro Watch</h2>
				<span id="prod-price-10" class="price"><i class='bx bx-rupee'></i>8999</span>
				<i class='bx bx-shopping-bag add-cart'></i>
			</div>
		</div>
		<div class="empty-text" id="empty-text" style="display: none;">
			<h2 style='text-align: center; color: red;'>No records found !</h2>
			<br>
			<h4 style="color: blue; text-align: center;">Please try
				searching something else to see if you could find some.</h4>
		</div>
	</section>




	<!--Code For Search Filter-->


	<script type="text/javascript">
		function showCards() {

			var input, filter, container, cards, a, i, txtValue, counter = 0;

			console.log("showCards()");

			input = document.getElementById("search-cards");
			filter = input.value.toUpperCase();

			container = document.getElementById("container");
			cards = container.getElementsByClassName("card");

			for (i = 0; i < cards.length; i++) {

				h2 = cards[i].getElementsByTagName("h2")[0];
				id = cards[i].id;

				txtValue = h2.textContent || h2.innerText;

				if (txtValue.toUpperCase().indexOf(filter) > -1
						|| id.toUpperCase().indexOf(filter) > -1) {
					cards[i].style.display = "";
				} else {
					cards[i].style.display = "none";
				}
			}

			for (i = 0; i < cards.length; i++) {

				if (cards[i].style.display == "") {
					counter++;
				}
			}

			console.log(counter);
			document.getElementById('')
			if (counter == 0) {
				document.getElementById('empty-text').style.display = "block";
			} else if (counter != 0) {
				document.getElementById('empty-text').style.display = "none";
			}

			console.log(cards.length);
			counter = cards.length;

			/*  Cart code ......*/
		}
	</script>

</body>

</html>
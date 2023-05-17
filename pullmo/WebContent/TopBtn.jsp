<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>


	<style>
		.to-top {
			width: 65px;
			height: 65px;
			position: fixed;
			bottom: 14%;
			right: 10%;
			background: #75d32b;
			color: #fff;
			border-radius: 50%;
			font-size: 15px;
			display: flex;
			align-items: center;
			font-weight: bold;
			justify-content: center;
			border: none;
			opacity: 0;
			transform: translateY(100%);
			transition: 0.5s;
		}

		.to-top.active {
			opacity: 1;
			transform: translateY(0%);
			transition: 0.5s;
		}
	</style>

	<button type="button" class="to-top" style="cursor:pointer">Top</button>
	<script src="https://code.jquery.com/jquery-3.6.3.js"
		integrity="sha256-nQLuAZGRRcILA+6dMBOvcRh5Pe310sBpanc6+QBmyVM=" crossorigin="anonymous"></script>

	<script>

		$(function () {
			var winTop;
			var topBtn = $('.to-top');


			function getEvent() {
				winTop = $(window).scrollTop();
				if (winTop >= 350) {
					topBtn.addClass('active');
				} else {
					topBtn.removeClass('active');
				}
			};
			
			topBtn.click(function(){
				$('html, body').animate({ scrollTop: 0 }, 400);
			});

			$(window).scroll(function () {
				getEvent();
			});

			function init() {
				getEvent();
			};

			init();
		});



	</script>
$(document)
		.ready(
				function() {
					/**###################################################################################################################*/
					$('#ingresar2').click(
							function() {
								var nuevo = $('#elemento').load(
										"bronea/pages/Ingresar.html");
								nuevo.slideToggle("slow");
							})

					$('.goIngresar').click(function() {
						$('.goIngresarForm').submit();
					});

					$('#registrar')
							.click(
									function() {
										var nuevo = $('#elemento')
												.html(
														"<form action='registrar' class='goRegistrarForm'><p><label for='user'>User</label><input type='text'></p><p><label for='pass'>Password</label><input type='pass'></p><p><label for='email'>Email</label><input type='email'></p><p><button class='goRegistrar'>registrar</button></p></form>");
										nuevo.slideToggle("slow");
									})

					$('.goRegistrar').click(function() {
						$('.goRegistrarForm').submit();
					});
					/**###################################################################################################################*/
					$('#ingresar').click(function(){
						$('#elementoUser').load()
						
					});
					/**###################################################################################################################*/

				});

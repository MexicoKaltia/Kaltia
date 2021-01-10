<!DOCTYPE html>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<html lang="">
<body>
	<div class="bodyQRE" id="bodyQRE">
		
			<h2>Menu</h2>
			<!-- carrusel -->
			<div id="carouselBodyQRE" class="carousel slide"
				data-interval="false">
				<div class="carousel-inner container">
					<s:set var="conta" value="0" />
					<s:subset source="body.bodyQRE" start="0">
						<s:iterator var="bodyQRE">
							<s:if test="#conta == 0">
								<div class="carousel-item active col-12 text-center">
							</s:if>
							<s:else>
								<div class="carousel-item col-12 text-center">
							</s:else>
							<section>
								<img class="btmspace-30"
									src="<s:property value='identidadVO.ambiente'/><s:property value='identidadVO.action'/>/images/<s:property value='#bodyQRE.objetoVO.get(0)'/>"
									alt="<s:property value='#bodyQRE.objetoVO.get(0)'/>">
								<div class="carousel-caption d-none d-md-block">
									<h5><s:property value='#bodyQRE.objetoVO.get(1)' /></h5>
									<p><s:property value='#bodyQRE.objetoVO.get(2)' /></p>
								</div>
							</section>
								</div>
				<s:set var="conta" value="#conta+1" />
				</s:iterator>
				</s:subset>
				<script type="text/javascript">var contaObjetoQRE = <s:property value='#conta'/></script>
			</div>
			<a class="carousel-control-prev" href="#carouselBodyQRE"
				role="button" data-slide="prev"> <span
				class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="sr-only">Previous</span>
			</a> <a class="carousel-control-next" href="#carouselBodyQRE"
				role="button" data-slide="next"> <span
				class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="sr-only">Next</span>
			</a>
			<ol class="carousel-indicators">
				<li data-target="#carouselBodyQRE" data-slide-to="0" class="active"></li>
				<li data-target="#carouselBodyQRE" data-slide-to="1"></li>
				<li data-target="#carouselBodyQRE" data-slide-to="2"></li>
			</ol>
		</div>
		<!-- fin carrusel -->


	</div>
</body>
</html>



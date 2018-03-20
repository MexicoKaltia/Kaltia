<!DOCTYPE html>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<html lang="">
<body>

<div class="wrapper row3">
  <main class="container clear"> 
    <!-- main body -->
    <!-- ################################################################################################ -->
    <div class="group">
      <div class="<s:property value='body.bodySeccionArray1.get(0).objetoVO.get(0)' />">
        <h2 class="heading btmspace-50"><s:property value='body.bodySeccionArray1.get(0).objetoVO.get(1)' /></h2>
        <figure id="featuredpost"><img src="<%=request.getContextPath()%>/empresa/<s:property value='identidadVO.idAction'/>/images/<s:property value='body.bodySeccionArray1.get(0).objetoVO.get(2)' />" alt="">
          <figcaption>
            <h2 class="heading"><s:property value='body.bodySeccionArray1.get(0).objetoVO.get(3)' /></h2>
            <p class="shortintro"><s:property value='body.bodySeccionArray1.get(0).objetoVO.get(4)' />&hellip;</p>
            <p class="link"><a class="btn" href="<s:property value='identidadVO.idAction'/>/<s:property value='body.bodySeccionArray1.get(0).objetoVO.get(5)' />">
            <s:property value='body.bodySeccionArray1.get(0).objetoVO.get(6)' /> &raquo;</a></p>
          </figcaption>
        </figure>
      </div>
      <div class="one_half">
        <h2 class="heading btmspace-50"><s:property value='body.bodySeccionArray1.get(0).objetoVO.get(7)' /></h2>
        <ul id="latestposts" class="nospace">
      	 <s:subset start="1" source ="body.bodySeccionArray1">
      	 <s:iterator  var="bodySeccionArray1">
          <li class="clear">
            <figure class="one_quarter first">
            <img class="borderedbox inspace-5" src="<%=request.getContextPath()%>/empresa/<s:property value='identidadVO.idAction'/>/images/<s:property value='#bodySeccionArray1.objetoVO.get(0)' />" alt=""></figure>
            <article class="three_quarter">
              <h2 class="heading"><s:property value='#bodySeccionArray1.objetoVO.get(1)' /></h2>
              <div class="meta">
                <address>
                By <a href="<s:property value='identidadVO.idAction'/>/<s:property value='#bodySeccionArray1.objetoVO.get(4)' />"><s:property value='identidadVO.empresa'/></a>
                </address>
                <time datetime="2045-04-06T08:15+00:00"><s:property value='#bodySeccionArray1.objetoVO.get(2)' /></time>
              </div>
              <p class="shortintro"><s:property value='#bodySeccionArray1.objetoVO.get(3)' />&hellip;</p>
              <p class="link"><a class="btn" href="<s:property value='identidadVO.idAction'/>/<s:property value='#bodySeccionArray1.objetoVO.get(4)' />">
              <s:property value='#bodySeccionArray1.objetoVO.get(5)' /> &raquo;</a></p>
            </article>
          </li>
          </s:iterator>
          </s:subset>
        </ul>
      </div>
    </div>
    <!-- / main body -->
    <div class="clear"></div>
  </main>
</div>
<!-- ################################################################################################ -->
<div class="wrapper row4">
  <section id="cta" class="clear"> 
    <div class="center btmspace-50">
      <h2 class="nospace"><s:property value='body.bodySeccionArray2.get(0).objetoVO.get(0)' /></h2>
      <p class="nospace"><s:property value='body.bodySeccionArray2.get(0).objetoVO.get(1)' /></p>
    </div>
    <div class="group">
      <div class="colour-1 one_half first">
        <article class="group colour-1"> 
          
          <div class="one_half first"><img src="<%=request.getContextPath()%>/empresa/<s:property value='identidadVO.idAction'/>/images/<s:property value='body.bodySeccionArray2.get(1).objetoVO.get(0)' />" alt=""></div>
          <div class="one_half">
            <h6 class="heading"><s:property value='body.bodySeccionArray2.get(1).objetoVO.get(1)' /></h6>
            <p class="link"><a class="btn" href="<s:property value='identidadVO.idAction'/>/<s:property value='body.bodySeccionArray2.get(1).objetoVO.get(2)' />">
            <s:property value='body.bodySeccionArray2.get(1).objetoVO.get(3)' /> &raquo;</a></p>
          </div>
        </article>
      </div>
                
      <div class="colour-2 one_half">
        <article class="group colour-2"> 
          <div class="one_half first"><img src="<%=request.getContextPath()%>/empresa/<s:property value='identidadVO.idAction'/>/images/<s:property value='body.bodySeccionArray2.get(2).objetoVO.get(0)' />" alt=""></div>
          <div class="one_half">
            <h6 class="heading"><s:property value='body.bodySeccionArray2.get(2).objetoVO.get(1)' /></h6>
            <p class="link"><a class="btn" href="<s:property value='identidadVO.idAction'/>/<s:property value='body.bodySeccionArray2.get(2).objetoVO.get(2)' />">
            <s:property value='body.bodySeccionArray2.get(2).objetoVO.get(3)' /> &raquo;</a></p>
          </div>
        </article>
      </div>
    </div>
<!-- ################################################################################################ -->
    <div class="clear"></div>
  </section>
</div>


</body>
</html>
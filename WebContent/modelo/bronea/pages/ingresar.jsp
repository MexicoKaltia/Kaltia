<!DOCTYPE html>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<link href="<%=request.getContextPath()%>/<s:property value='header.headerEstilo'/>/layout/styles/layout.css"
	rel="stylesheet" type="text/css" media="all">
	
	<div id="comments">
<form action="ingresar" method="post">
	<div class="one_third first">
		<label for="name">User <span>*</span></label> <input type="text"
			name="name" id="name" value="" size="22" required>
	</div>
	<div class="one_third">
		<label for="password">Password <span>*</span></label> <input type="password"
			name="password" id="password" value="" size="22" required>
	</div>
	<div>
		<input type="submit" name="submit" value="Submit Form"> &nbsp;
		<input type="reset" name="reset" value="Reset Form">
	</div>
</form>
</div>
</html>
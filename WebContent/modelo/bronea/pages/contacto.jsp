<!DOCTYPE html>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<link href="<%=request.getContextPath()%>/<s:property value='header.headerEstilo'/>/<s:property value='identidadVO.idAction'/>/layout/styles/layout.css"
	rel="stylesheet" type="text/css" media="all">
	
	<div id="comments">
<form action="#" method="post">
	<div class="one_third first">
		<label for="name">Name <span>*</span></label> <input type="text"
			name="name" id="name" value="" size="22" required>
	</div>
	<div class="one_third">
		<label for="email">Mail <span>*</span></label> <input type="email"
			name="email" id="email" value="" size="22" required>
	</div>
	<div class="one_third">
		<label for="url">Website</label> <input type="url" name="url" id="url"
			value="" size="22">
	</div>
	<div class="block clear">
		<label for="comment">Your Comment</label>
		<textarea name="comment" id="comment" cols="25" rows="10"></textarea>
	</div>
	<div>
		<input type="submit" name="submit" value="Submit Form"> &nbsp;
		<input type="reset" name="reset" value="Reset Form">
	</div>
</form>
</div>
</html>
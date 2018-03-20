<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
      <s:div>Email Form</s:div>
      <s:text name = "Please fill in the form below:" />
      
      <s:form action = "hello" method = "post" enctype = "multipart/form-data">
         <s:hidden name = "secret" value = "abracadabra"/>
         <s:textfield key = "email.from" name = "from" />
         <s:password key = "email.password" name = "password" />
         <s:textfield key = "email.to" name = "to" />
         <s:textfield key = "email.subject" name = "subject" />
         <s:textarea key = "email.body" name = "email.body" />
         <s:label for = "attachment" value = "Attachment"/>
         <s:file name = "attachment" accept = "text/html,text/plain" />
         <s:token />
         <s:submit key = "submit" />
         
      </s:form>
      



</body>
</html>
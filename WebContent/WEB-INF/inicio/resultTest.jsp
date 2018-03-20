<%@ taglib prefix="s" uri="/struts-tags"%>
<html>

<body>
	<h1>Result Test</h1>

	<div class="ads-in-post hide_if_width_less_800">
		<script async
			src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
		<!-- leaderboard -->
		<ins class="adsbygoogle"
			style="display: inline-block; width: 728px; height: 90px"
			data-ad-client="ca-pub-xxxxxxxxxxxxxxxx" data-ad-slot="1234567890"></ins>
		<script>
			(adsbygoogle = window.adsbygoogle || []).push({});
		</script>
	</div>


	<h2>
		File Name :
		<s:property value="fileUploadFileName" />
	</h2>

	<h2>
		Content Type :
		<s:property value="fileUploadContentType" />
	</h2>

	<h2>
		File :
		<s:property value="fileUpload" />
	</h2>

</body>
</html>
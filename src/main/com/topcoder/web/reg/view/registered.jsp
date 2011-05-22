<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<s:include value="/includes/html_head.jsp">
		<s:param name="pageTitle">ACTIVATED</s:param>
	</s:include>
	
	<body class="activeAccountPage">
	<div class="wrapper">

	<div id="header">
		<div class="inner">
			<h1><a href="javascript:;" class="logo" title="TopCoder">TopCoder</a></h1>
		</div>
	</div><!-- #header -->

	<div id="container">
		<div id="main">
			<!-- #mainTitle -->
			<div id="mainTitle">
				<div class="mainTitleRight">
					<div class="mainTitleCenter">
						<h2><span class="titleWrapper"><img src="i/font-mainTitle-active.png" alt="ACTIVATE YOUR ACCOUNT" /></span></h2>
					</div>
				</div>
			</div>
			<!-- end #mainTitle -->
			
			<!-- #mainContent -->
			<div id="mainContent">
			
				<div class="mainContentInner">
					<div class="accoutSummery">
						<h3>Your account has been registered</h3>
						<p>We will send you a confirmation email. Please check your email to activate your account.</p>
						<p>If you don't receive any confirmation email, <a href="<s:url action='sendActivateEmail'>
							 <s:param name='handle'><s:property value='handle'/>
							 </s:param>
							</s:url>">Click here</a> to send the confirmation again.</p>
					</div>
				</div>
				
			</div>
			<!-- end #mainContent -->
			
			<!-- #mainFooter -->
			<div id="mainFooter">
				<div class="mainFooterRight">
					<div class="mainFooterCenter"></div>
				</div>
			</div>
			<!-- end #mainFooter -->
			
		</div>
	</div><!-- #container -->

	<div id="footer">
	Lorem ipsum dolor sit amet, consectetur adipiscing elit.Nunc vitae magna augue. Cras luctus, enim eget egestas vulputate, est diam
	</div><!-- #footer -->

	</div><!-- .wrapper -->

	</body>
</html>
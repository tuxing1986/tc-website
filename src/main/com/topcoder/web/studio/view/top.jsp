<%@ page import="com.topcoder.shared.util.ApplicationServer" %>
<%@ page import="com.topcoder.web.studio.Constants" %>
<%@ page import="com.topcoder.web.studio.controller.request.Login" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="studio.tld" prefix="studio" %>

<%
    String section = request.getParameter("section") == null ? "" : request.getParameter("section");
%>

    <div id="header2">
        <div class="wrapper2">
            
<%-- MASTHEAD AND LOGO --%>
            <h1><a href="http://<%=ApplicationServer.STUDIO_SERVER_NAME%>" title="TopCoder"><span>TopCoder Direct</span></a></h1>
			
			
	<%-- LOGIN FORM (NEW) --%>
			<c:choose>
				<c:when test="${sessionInfo.anonymous}">	
					<div id="loginform">
						<div id="login_left"></div>
						<div id="login_right"></div>
			
						<form method="post" name="frmLogin" action="http://<%=ApplicationServer.STUDIO_SERVER_NAME%>">
						<input type="hidden" name="module" value="Login" />
						<div id="left">
							<div>Handle</div>
							<div><input type="text" name="<%=Login.USER_NAME%>"  maxlength="15" type="text" value="" /></div>
							<div><input type="checkbox" name="<%=Login.REMEMBER_USER%>" value="Remember me" /> Remember me</div>
						</div>
						<div id="right"><a href="#" class="button">Login</a>
							<div class="register"><a href="http://<%=ApplicationServer.SERVER_NAME%>/reg/" title="Register">Register today!</a></div>
						</div>
			
						<div id="middle">
							<div>Password</div>
							<div><input type="password" name="<%=Login.PASSWORD%>"  maxlength="30" value="" /></div>
							<div><a href="http://<%=ApplicationServer.SERVER_NAME%>/tc?module=RecoverPassword" title="Forgot your password?" >Forgot your password?</a></div>
						</div>
						</form>
					</div>
				</c:when>
			</c:choose>
	<%-- END LOGIN FORM --%>
	
       <h2 id="ready_engage"><span>Ready.. ENGAGE</span></h2>
          <div id="studio_menu">
				<ul>
					<li class="left"><a href="/">{ }</a></li>
					<li><a href="/?module=ViewActiveContests" <% if (section.equals("contest")) {%> class="active"<% } %>>Contests</a></li>
					<li><a href="/forums" <% if (section.equals("forums")) {%> class="active"<% } %>>Forums</a></li>
					<li><a href="/?module=Static&amp;d1=support&amp;d2=getStarted" <% if (section.equals("howitworks")) {%> class="active"<% } %>>How It Works</a></li>
					<li><a href="/?module=Static&d1=digitalrun&d2=2008v2&d3=home" <% if (section.equals("cup")) {%> class="active"<% } %>>Studio Cup</a></li>
					<li><a href="/?module=MyStudioHome" <% if (section.equals("my_studio")) {%> class="active"<% } %>>My Studio</a></li>
					<li><a href="http://studio.topcoder.com/blog/" <% if (section.equals("blog")) {%> class="active"<% } %>>Blog</a></li>
					<li><a href="/?module=Static&amp;d1=portfolio&amp;d2=portfolio" <% if (section.equals("portfolio")) {%> class="active"<% } %>>Portfolio</a></li>
					<li class="right"><a href="/?module=Static&amp;d1=contactUs" <% if (section.equals("contact")) {%> class="active"<% } %>>Contact Us</a></li>
				</ul>
			</div>
		  
<%-- MAIN NAVIGATION --%>
            <div id="nav">
                <h3 class="hide">Main Navigation</h3>
                <ul>
                    <li class="left"><a href="http://www.topcoder.com/">TopCoder Home</a></li>
                    <li><a href="http://software.topcoder.com/">Engage</a>
                        <ul>
                           	<li><a href="http://<%=ApplicationServer.SERVER_NAME%>/direct/cockpit/cockpit.jsp">TopCoder Direct</a></li>
                            <li><a href="http://<%=ApplicationServer.SOFTWARE_SERVER_NAME%>/catalog/">Components</a></li>
                            <li><a href="http://<%=ApplicationServer.SOFTWARE_SERVER_NAME%>/indexTCS.jsp">Software</a></li>
                            <li><a href="http://<%=ApplicationServer.SOFTWARE_SERVER_NAME%>/TCD/platform-tools.jsp">Platform Tools</a></li>
                            <li><a href="http://<%=ApplicationServer.SOFTWARE_SERVER_NAME%>/TCD/training.jsp">Training &amp; Mentoring</a></li>
                            <li><a href="http://<%=ApplicationServer.SOFTWARE_SERVER_NAME%>/TCD/support.jsp">Support &amp; Maintenance</a></li>
                            <li class="last-li"><a href="http://<%=ApplicationServer.SOFTWARE_SERVER_NAME%>/contact.jsp">Contact Us</a></li>
                        </ul>
                    </li>
                    <li><a href="http://www.topcoder.com/tc">Compete</a>
                        <ul>
                            <li><a href="http://<%=ApplicationServer.SERVER_NAME%>/tc?module=ActiveContests&amp;pt=23">Conceptualization</a></li>
                    	    <li><a href="http://<%=ApplicationServer.SERVER_NAME%>/tc?module=ActiveContests&amp;pt=6">Specification</a></li>
                    	    <li><a href="http://<%=ApplicationServer.SERVER_NAME%>/tc?module=ActiveContests&amp;pt=7">Architecture</a></li>
                            <li><a href="http://<%=ApplicationServer.SERVER_NAME%>/tc?module=ViewActiveContests&amp;ph=112">Component Design</a></li>
                            <li><a href="http://<%=ApplicationServer.SERVER_NAME%>/tc?module=ViewActiveContests&amp;ph=113">Component Development</a></li>
                            <li><a href="http://<%=ApplicationServer.SERVER_NAME%>/tc?module=ViewAssemblyActiveContests">Assembly</a></li>
                            <li><a href="http://<%=ApplicationServer.SERVER_NAME%>/longcontest/?module=ViewActiveContests">Marathon Matches</a></li>
                            <li><a href="http://<%=ApplicationServer.SERVER_NAME%>/wiki/display/tc/Bug+Races">Bug Races</a></li>
                            <li class="last-li"><a href="http://<%=ApplicationServer.STUDIO_SERVER_NAME%>/?module=ViewActiveContests">Studio Competitions</a></li>
                        </ul>
                    </li>
                    <li   id="studio" class="on" ><a href="http://studio.topcoder.com/">Studio</a>
               		<%--<ul>
                            <li><a href="http://<%=ApplicationServer.STUDIO_SERVER_NAME%>/?module=ViewActiveContests">Active Contests</a></li>
                            <li><a href="http://<%=ApplicationServer.SERVER_NAME%>/direct/">Launch a Contest</a></li>
                            <li><a href="http://<%=ApplicationServer.STUDIO_SERVER_NAME%>/forums">Studio Forums</a></li>
                            <li><a href="http://<%=ApplicationServer.STUDIO_SERVER_NAME%>/blog/">Studio Blog</a></li>
                            <li><a href="http://<%=ApplicationServer.STUDIO_SERVER_NAME%>/?module=MyStudioHome">My Studio</a></li>
                            <li class="last-li"><a href="http://<%=ApplicationServer.STUDIO_SERVER_NAME%>/?module=Static&amp;d1=contactUs">Contact Studio</a></li>
                        </ul>--%>
                    </li>
                    <li><a href="http://www.topcoder.com/tc">Community</a>
                        <ul>
                            <li><a href="http://<%=ApplicationServer.SERVER_NAME%>/reg/">Join TopCoder</a></li>
                            <li><a href="http://<%=ApplicationServer.SERVER_NAME%>/tc?module=MyHome">My TopCoder</a></li>
                            <li><a href="http://<%=ApplicationServer.FORUMS_SERVER_NAME%>/">TopCoder Forums</a></li>
                            <li class="last-li"><a href="http://<%=ApplicationServer.STUDIO_SERVER_NAME%>/forums">Studio Forums</a></li>
                        </ul>
                    </li>
                </ul>
            </div><%-- #navigation ends --%>
            
            <%-- SUB NAVIGATION --%>
            <div id="nav_support">
                <h3 class="hide">SUB Navigation</h3>
                <ul>
                    <li class="left"><a href="http://<%=ApplicationServer.SERVER_NAME%>/?module=Static&d1=support&d2=getStarted">FAQ</a></li>
                    <li><a href="http://<%=ApplicationServer.SERVER_NAME%>/tc?module=Static&amp;d1=pressroom&amp;d2=index">News</a></li>
                    <li><a href="http://<%=ApplicationServer.SERVER_NAME%>/?module=Static&amp;d1=contactUs">Contact Us</a></li>  
					
					<c:choose>
						<c:when test="${sessionInfo.anonymous}">     
							<li><a class="gMetal" id="login_link" href="#">Login</a></li>
						</c:when>
						<c:otherwise> 
							<li class="handle"><span class="welcome">Hello,&nbsp;</span><studio:handle coderId="${sessionInfo.userId}"/></li>
							<li class="logout gMetal"><a href="http://<%=ApplicationServer.STUDIO_SERVER_NAME%>/?<%=Constants.MODULE_KEY%>=Logout" id="logout_link">Logout</a></li>
						</c:otherwise>
					</c:choose>	    
				</ul>
            </div><%-- #navigation ends --%>
        </div>
      <%-- .wrapper ends --%>
    </div><%-- #header ends --%>


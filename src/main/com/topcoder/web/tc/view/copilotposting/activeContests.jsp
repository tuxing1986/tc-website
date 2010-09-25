<%--
  - Author: TCSASSEMBLER
  - Version: 1.0
  - Copyright (C) 2010 TopCoder Inc., All Rights Reserved.
  -
  - Description: This page lists all the copilot postings. This page is modified based on active contests page for
  the other project types and is customized specically for copilot posting. It will not display DR, 

--%>
<%@ page language="java" %>
<%@ page import="com.topcoder.shared.dataAccess.resultSet.ResultSetContainer" %>
<%@ page import="com.topcoder.shared.util.ApplicationServer" %>
<%@ page import="com.topcoder.web.tc.Constants" %>
<%@ page import="java.util.Map"%>
<%@ taglib uri="rsc-taglib.tld" prefix="rsc" %>
<%@ taglib uri="tc.tld" prefix="tc" %>
<%@ taglib uri="tc-webtags.tld" prefix="tc-webtag" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% ResultSetContainer contests = (ResultSetContainer) request.getAttribute("contests");%>

<c:set value="<%=Constants.ARCHITECTURE_PROJECT_TYPE%>" var="ARCHITECTURE_TYPE_ID"/>
<c:set value="<%=Constants.CONCEPTUALIZATION_PROJECT_TYPE%>" var="CONCEPTUALIZATION_TYPE_ID"/>
<c:set value="<%=Constants.SPECIFICATION_PROJECT_TYPE%>" var="SPECIFICATION_TYPE_ID"/>
<c:set value="<%=Constants.ASSEMBLY_PROJECT_TYPE%>" var="ASSEMBLY_TYPE_ID"/>
<c:set value="<%=Constants.TEST_SUITES_PROJECT_TYPE%>" var="TEST_SUITES_TYPE_ID"/>
<c:set value="<%=Constants.TEST_SCENARIOS_PROJECT_TYPE%>" var="TEST_SCENARIOS_TYPE_ID"/>
<c:set value="<%=Constants.UI_PROTOTYPE_PROJECT_TYPE%>" var="UI_PROTOTYPE_TYPE_ID"/>
<c:set value="<%=Constants.RIA_BUILD_PROJECT_TYPE%>" var="RIA_BUILD_TYPE_ID"/>
<c:set value="<%=Constants.RIA_COMPONENT_PROJECT_TYPE%>" var="RIA_COMPONENT_TYPE_ID"/>


<%@ page contentType="text/html;charset=utf-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
   "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<jsp:useBean id="sessionInfo" scope="request" class="com.topcoder.web.common.SessionInfo"/>
<head>
    <title>TopCoder :: Active Contests</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link type="image/x-icon" rel="shortcut icon" href="/i/favicon.ico"/>
    <jsp:include page="../script.jsp"/>
    <jsp:include page="../style.jsp">
        <jsp:param name="key" value="tc_stats"/>
    </jsp:include>
</head>

<body>

<jsp:include page="../top.jsp">
    <jsp:param name="level1" value="development"/>
</jsp:include>

<table width="100%" border="0" cellpadding="0" cellspacing="0">
<tbody>
    <tr valign="top">
<%-- Left Column Begins--%>
        <td width="180">
          <c:choose>
            <c:when test="${pt == TEST_SUITES_TYPE_ID}">
                <jsp:include page="/includes/global_left.jsp">
                    <jsp:param name="node" value="test_suites_compete"/>
                </jsp:include>
            </c:when>
            <c:when test="${pt == TEST_SCENARIOS_TYPE_ID}">
                <jsp:include page="/includes/global_left.jsp">
                    <jsp:param name="node" value="test_scenarios_compete"/>
                </jsp:include>
            </c:when>
            <c:when test="${pt == CONCEPTUALIZATION_TYPE_ID}">
                <jsp:include page="/includes/global_left.jsp">
                    <jsp:param name="node" value="conceptualization_compete"/>
                </jsp:include>
            </c:when>
            <c:when test="${pt == SPECIFICATION_TYPE_ID}">
                <jsp:include page="/includes/global_left.jsp">
                    <jsp:param name="node" value="specification_compete"/>
                </jsp:include>
            </c:when>
            <c:when test="${pt == ARCHITECTURE_TYPE_ID}">
                <jsp:include page="/includes/global_left.jsp">
                    <jsp:param name="node" value="architecture_compete"/>
                </jsp:include>
            </c:when>
            <c:when test="${pt == ASSEMBLY_TYPE_ID}">
                <jsp:include page="/includes/global_left.jsp">
                    <jsp:param name="node" value="assembly_compete"/>
                </jsp:include>
            </c:when>
            <c:when test="${pt == UI_PROTOTYPE_TYPE_ID}">
                <jsp:include page="/includes/global_left.jsp">
                    <jsp:param name="node" value="ui_prototype_compete"/>
                </jsp:include>
            </c:when>
            <c:when test="${pt == RIA_BUILD_TYPE_ID}">
                <jsp:include page="/includes/global_left.jsp">
                    <jsp:param name="node" value="ria_build_compete"/>
                </jsp:include>
            </c:when>
            <c:when test="${pt == RIA_COMPONENT_TYPE_ID}">
                <jsp:include page="/includes/global_left.jsp">
                    <jsp:param name="node" value="ria_component_compete"/>
                </jsp:include>
            </c:when>
          </c:choose>
        </td>
<%-- Left Column Ends --%>

<%-- Center Column Begins --%>
        <td width="100%" align="left" class="bodyColumn">

      <c:choose>
        <c:when test="${pt == TEST_SUITES_TYPE_ID}">
            <jsp:include page="/page_title.jsp">
                <jsp:param name="image" value="test_suites"/>
                <jsp:param name="title" value="Active Contests"/>
            </jsp:include>
        </c:when>
        <c:when test="${pt == TEST_SCENARIOS_TYPE_ID}">
            <jsp:include page="/page_title.jsp">
                <jsp:param name="image" value="test_scenarios"/>
                <jsp:param name="title" value="Active Contests"/>
            </jsp:include>
        </c:when>
        <c:when test="${pt == ARCHITECTURE_TYPE_ID}">
            <jsp:include page="/page_title.jsp">
                <jsp:param name="image" value="architecture"/>
                <jsp:param name="title" value="Active Contests"/>
            </jsp:include>
        </c:when>
        <c:when test="${pt == ASSEMBLY_TYPE_ID}">
            <jsp:include page="/page_title.jsp">
                <jsp:param name="image" value="assembly"/>
                <jsp:param name="title" value="Active Contests"/>
            </jsp:include>
        </c:when>
        <c:when test="${pt == CONCEPTUALIZATION_TYPE_ID}">
            <jsp:include page="/page_title.jsp">
                <jsp:param name="image" value="conceptualization"/>
                <jsp:param name="title" value="Active Contests"/>
            </jsp:include>
        </c:when>
        <c:when test="${pt == SPECIFICATION_TYPE_ID}">
            <jsp:include page="/page_title.jsp">
                <jsp:param name="image" value="specification"/>
                <jsp:param name="title" value="Active Contests"/>
            </jsp:include>
        </c:when>
        <c:when test="${pt == UI_PROTOTYPE_TYPE_ID}">
            <jsp:include page="/page_title.jsp">
                <jsp:param name="image" value="ui_prototype"/>
                <jsp:param name="title" value="Active Contests"/>
            </jsp:include>
        </c:when>
        <c:when test="${pt == RIA_BUILD_TYPE_ID}">
            <jsp:include page="/page_title.jsp">
                <jsp:param name="image" value="ria_build"/>
                <jsp:param name="title" value="Active Contests"/>
            </jsp:include>
        </c:when>
        <c:when test="${pt == RIA_COMPONENT_TYPE_ID}">
            <jsp:include page="/page_title.jsp">
                <jsp:param name="image" value="ria_component"/>
                <jsp:param name="title" value="Active Contests"/>
            </jsp:include>
        </c:when>
      </c:choose>

<table cellpadding="0" cellspacing="0" border="0" width="100%" style="margin-bottom:10px;">
    <tr>
      <c:choose>
        <c:when test="${hasDR}">
            <td>
                <a href="/dr"><img src="/i/development/digitalRun.gif" alt="The Digital Run" border="0"/></a>
            </td>
        </c:when>
        <c:otherwise>
            <td width="100%" height="23px">&nbsp;</td>
        </c:otherwise>
        </c:choose>

        <td align="right">
          <c:choose>
            <c:when test="${pt == TEST_SUITES_TYPE_ID}">
                <a href="/wiki/display/tc/How+to+Compete+in+Test+Suites+Competitions"><img src="/i/development/get_started.gif" alt="Getting Started" border="0"/></a><br /><br />
          		<!--<a href="http://www.topcoder.com/tc?module=Static&d1=tournaments&d2=tco10&d3=overview&d4=patron"><img src="/i/tournament/tco10/banners/tco10-nsa-510x100.png" alt="NSA - TCO10 Event Patron" /></a><br /><br />-->
                <!--<a href="<tc-webtag:linkTracking link='http://www.topcoder.com/tc?module=Static&d1=tournaments&d2=tco10&d3=overview&d4=sponsor1' refer='active contest' />"><img src="/i/tournament/tco10/banners/tco10-yandex-510x100.png" alt="Yandex - Event Sponsor - 2010 TopCoder Open" /></a><br /><br /> -->
            </c:when>
            <c:when test="${pt == TEST_SCENARIOS_TYPE_ID}">
                <a href="/wiki/display/tc/How+to+Compete+in+Test+Scenarios+Competitions"><img src="/i/development/get_started.gif" alt="Getting Started" border="0"/></a><br /><br />
          		<!--<a href="http://www.topcoder.com/tc?module=Static&d1=tournaments&d2=tco10&d3=overview&d4=patron"><img src="/i/tournament/tco10/banners/tco10-nsa-510x100.png" alt="NSA - TCO10 Event Patron" /></a><br /><br />-->
                <!--<a href="<tc-webtag:linkTracking link='http://www.topcoder.com/tc?module=Static&d1=tournaments&d2=tco10&d3=overview&d4=sponsor1' refer='active contest' />"><img src="/i/tournament/tco10/banners/tco10-yandex-510x100.png" alt="Yandex - Event Sponsor - 2010 TopCoder Open" /></a><br /><br /> -->
            </c:when>
            <c:when test="${pt == ARCHITECTURE_TYPE_ID}">
                <a href="/wiki/display/tc/How+to+Compete+in+Architecture+Competitions"><img src="/i/development/get_started.gif" alt="Getting Started" border="0"/></a><br /><br />
          		<!--<a href="http://www.topcoder.com/tc?module=Static&d1=tournaments&d2=tco10&d3=overview&d4=patron"><img src="/i/tournament/tco10/banners/tco10-nsa-510x100.png" alt="NSA - TCO10 Event Patron" /></a><br /><br />-->
                <!--<a href="<tc-webtag:linkTracking link='http://www.topcoder.com/tc?module=Static&d1=tournaments&d2=tco10&d3=overview&d4=sponsor1' refer='active contest' />"><img src="/i/tournament/tco10/banners/tco10-yandex-510x100.png" alt="Yandex - Event Sponsor - 2010 TopCoder Open" /></a><br /><br /> -->
            </c:when>
            <c:when test="${pt == ASSEMBLY_TYPE_ID}">
                <a href="http://<%=ApplicationServer.WIKI_SERVER_NAME%>/display/tc/How+to+Compete+in+Assembly+Competitions"><img src="/i/development/get_started.gif" alt="Getting Started" border="0"/></a><br /><br />
          		<!--<a href="http://www.topcoder.com/tc?module=Static&d1=tournaments&d2=tco10&d3=overview&d4=patron"><img src="/i/tournament/tco10/banners/tco10-nsa-510x100.png" alt="NSA - TCO10 Event Patron" /></a><br /><br />-->
                <!--<a href="<tc-webtag:linkTracking link='http://www.topcoder.com/tc?module=Static&d1=tournaments&d2=tco10&d3=overview&d4=sponsor1' refer='active contest' />"><img src="/i/tournament/tco10/banners/tco10-yandex-510x100.png" alt="Yandex - Event Sponsor - 2010 TopCoder Open" /></a><br /><br /> -->
            </c:when>
            <c:when test="${pt == CONCEPTUALIZATION_TYPE_ID}">
                <a href="/wiki/display/tc/How+to+Compete+in+Conceptualization+Competitions"><img src="/i/development/get_started.gif" alt="Getting Started" border="0"/></a><br /><br />
          		<!--<a href="http://www.topcoder.com/tc?module=Static&d1=tournaments&d2=tco10&d3=overview&d4=patron"><img src="/i/tournament/tco10/banners/tco10-nsa-510x100.png" alt="NSA - TCO10 Event Patron" /></a><br /><br />-->
                <!--<a href="<tc-webtag:linkTracking link='http://www.topcoder.com/tc?module=Static&d1=tournaments&d2=tco10&d3=overview&d4=sponsor1' refer='active contest' />"><img src="/i/tournament/tco10/banners/tco10-yandex-510x100.png" alt="Yandex - Event Sponsor - 2010 TopCoder Open" /></a><br /><br /> -->
            </c:when>
            <c:when test="${pt == SPECIFICATION_TYPE_ID}">
                <a href="/wiki/display/tc/How+to+Compete+in+Specification+Competitions"><img src="/i/development/get_started.gif" alt="Getting Started" border="0"/></a><br /><br />
          		<!--<a href="http://www.topcoder.com/tc?module=Static&d1=tournaments&d2=tco10&d3=overview&d4=patron"><img src="/i/tournament/tco10/banners/tco10-nsa-510x100.png" alt="NSA - TCO10 Event Patron" /></a><br /><br />-->
                <!--<a href="<tc-webtag:linkTracking link='http://www.topcoder.com/tc?module=Static&d1=tournaments&d2=tco10&d3=overview&d4=sponsor1' refer='active contest' />"><img src="/i/tournament/tco10/banners/tco10-yandex-510x100.png" alt="Yandex - Event Sponsor - 2010 TopCoder Open" /></a><br /><br /> -->
            </c:when>
            <c:when test="${pt == UI_PROTOTYPE_TYPE_ID}">
                <a href="/wiki/display/tc/How+to+Compete+in+Studio+Prototype+Competitions"><img src="/i/development/get_started.gif" alt="Getting Started" border="0"/></a><br /><br />
          		<!--<a href="http://www.topcoder.com/tc?module=Static&d1=tournaments&d2=tco10&d3=overview&d4=patron"><img src="/i/tournament/tco10/banners/tco10-nsa-510x100.png" alt="NSA - TCO10 Event Patron" /></a><br /><br />-->
                <!--<a href="<tc-webtag:linkTracking link='http://www.topcoder.com/tc?module=Static&d1=tournaments&d2=tco10&d3=overview&d4=sponsor1' refer='active contest' />"><img src="/i/tournament/tco10/banners/tco10-yandex-510x100.png" alt="Yandex - Event Sponsor - 2010 TopCoder Open" /></a><br /><br /> -->
            </c:when>
            <c:when test="${pt == RIA_BUILD_TYPE_ID}">
                <a href="/wiki/display/tc/How+to+Compete+in+Studio+Build+Competitions"><img src="/i/development/get_started.gif" alt="Getting Started" border="0"/></a><br /><br />
          		<!--<a href="http://www.topcoder.com/tc?module=Static&d1=tournaments&d2=tco10&d3=overview&d4=patron"><img src="/i/tournament/tco10/banners/tco10-nsa-510x100.png" alt="NSA - TCO10 Event Patron" /></a><br /><br />-->
                <!--<a href="<tc-webtag:linkTracking link='http://www.topcoder.com/tc?module=Static&d1=tournaments&d2=tco10&d3=overview&d4=sponsor1' refer='active contest' />"><img src="/i/tournament/tco10/banners/tco10-yandex-510x100.png" alt="Yandex - Event Sponsor - 2010 TopCoder Open" /></a><br /><br /> -->
            </c:when>
            <c:when test="${pt == RIA_COMPONENT_TYPE_ID}">
                <a href="/wiki/display/tc/How+to+Compete+in+Studio+Component+Competitions"><img src="/i/development/get_started.gif" alt="Getting Started" border="0"/></a><br /><br />
          		<!--<a href="http://www.topcoder.com/tc?module=Static&d1=tournaments&d2=tco10&d3=overview&d4=patron"><img src="/i/tournament/tco10/banners/tco10-nsa-510x100.png" alt="NSA - TCO10 Event Patron" /></a><br /><br />-->
                <!--<a href="<tc-webtag:linkTracking link='http://www.topcoder.com/tc?module=Static&d1=tournaments&d2=tco10&d3=overview&d4=sponsor1' refer='active contest' />"><img src="/i/tournament/tco10/banners/tco10-yandex-510x100.png" alt="Yandex - Event Sponsor - 2010 TopCoder Open" /></a><br /><br /> -->
            </c:when>
          </c:choose>
        </td>
    </tr>
</table>

<div align="right" style="padding-top: 10px">
      <c:choose>
        <c:when test="${pt == ARCHITECTURE_TYPE_ID}">
            Competition opportunities via RSS -
            <a href="/tc?module=BasicRSS&amp;c=rss_Architecture_Registration_Open&amp;dsid=28">Subscribe Now</a>
            <a href="/tc?module=BasicRSS&amp;c=rss_Architecture_Registration_Open&amp;dsid=28"><img src="/i/interface/emblem/rss.gif" alt="RSS" style="vertical-align:middle;"/></a>
        </c:when>
        <c:when test="${pt == ASSEMBLY_TYPE_ID}">
            Competition opportunities via RSS -
            <a href="/tc?module=BasicRSS&amp;c=rss_Assembly_Registration_Open&amp;dsid=28">Subscribe Now</a>
            <a href="/tc?module=BasicRSS&amp;c=rss_Assembly_Registration_Open&amp;dsid=28"><img src="/i/interface/emblem/rss.gif" alt="RSS" style="vertical-align:middle;"/></a>
        </c:when>
        <c:when test="${pt == CONCEPTUALIZATION_TYPE_ID}">
            Competition opportunities via RSS -
            <a href="/tc?module=BasicRSS&amp;c=rss_Conceptualization_Registration_Open&amp;dsid=28">Subscribe Now</a>
            <a href="/tc?module=BasicRSS&amp;c=rss_Conceptualization_Registration_Open&amp;dsid=28"><img src="/i/interface/emblem/rss.gif" alt="RSS" style="vertical-align:middle;"/></a>
        </c:when>
        <c:when test="${pt == SPECIFICATION_TYPE_ID}">
            Competition opportunities via RSS -
            <a href="/tc?module=BasicRSS&amp;c=rss_Specification_Registration_Open&amp;dsid=28">Subscribe Now</a>
            <a href="/tc?module=BasicRSS&amp;c=rss_Specification_Registration_Open&amp;dsid=28"><img src="/i/interface/emblem/rss.gif" alt="RSS" style="vertical-align:middle;"/></a>
        </c:when>
        <c:when test="${pt == UI_PROTOTYPE_TYPE_ID}">
            Competition opportunities via RSS -
            <a href="/tc?module=BasicRSS&amp;c=rss_UI_Prototype_Registration_Open&amp;dsid=28">Subscribe Now</a>
            <a href="/tc?module=BasicRSS&amp;c=rss_UI_Prototype_Registration_Open&amp;dsid=28"><img src="/i/interface/emblem/rss.gif" alt="RSS" style="vertical-align:middle;"/></a>
        </c:when>
        <c:when test="${pt == RIA_BUILD_TYPE_ID}">
            Competition opportunities via RSS -
            <a href="/tc?module=BasicRSS&amp;c=rss_RIA_Build_Registration_Open&amp;dsid=28">Subscribe Now</a>
            <a href="/tc?module=BasicRSS&amp;c=rss_RIA_Build_Registration_Open&amp;dsid=28"><img src="/i/interface/emblem/rss.gif" alt="RSS" style="vertical-align:middle;"/></a>
        </c:when>
        <c:when test="${pt == RIA_COMPONENT_TYPE_ID}">
            Competition opportunities via RSS -
            <a href="/tc?module=BasicRSS&amp;c=rss_RIA_Component_Registration_Open&amp;dsid=28">Subscribe Now</a>
            <a href="/tc?module=BasicRSS&amp;c=rss_RIA_Component_Registration_Open&amp;dsid=28"><img src="/i/interface/emblem/rss.gif" alt="RSS" style="vertical-align:middle;"/></a>
        </c:when>
        <c:when test="${pt == TEST_SUITES_TYPE_ID}">
            Competition opportunities via RSS -
            <a href="/tc?module=BasicRSS&amp;c=rss_Registration_Open&dsid=28&pt=13>">Subscribe Now</a>
            <a href="/tc?module=BasicRSS&amp;c=rss_Registration_Open&dsid=28&pt=13"><img src="/i/interface/emblem/rss.gif" alt="RSS" style="vertical-align:middle;"/></a>
        </c:when>
        <c:when test="${pt == TEST_SCENARIOS_TYPE_ID}">
            Competition opportunities via RSS -
            <a href="/tc?module=BasicRSS&amp;c=rss_Registration_Open&dsid=28&pt=26">Subscribe Now</a>
            <a href="/tc?module=BasicRSS&amp;c=rss_Registration_Open&dsid=28&pt=26"><img src="/i/interface/emblem/rss.gif" alt="RSS" style="vertical-align:middle;"/></a>
        </c:when>
      </c:choose>
    <br /><br />
</div>

<table class="stat" cellpadding="0" cellspacing="0" width="100%">
    <tr>
          <c:choose>
            <c:when test="${hasDR}">
                <td class="title" colspan="10">
            </c:when>
            <c:otherwise>
                <td class="title" colspan="9">
            </c:otherwise>
          </c:choose>

          <c:choose>
            <c:when test="${pt == TEST_SUITES_TYPE_ID}">
                Active Test Suites Contests</td>
            </c:when>
            <c:when test="${pt == TEST_SCENARIOS_TYPE_ID}">
                Active Test Scenarios Contests</td>
            </c:when>
            <c:when test="${pt == ARCHITECTURE_TYPE_ID}">
                Active Software Architecture Contests</td>
            </c:when>
            <c:when test="${pt == ASSEMBLY_TYPE_ID}">
                Active Software Assembly Contests</td>
            </c:when>
            <c:when test="${pt == CONCEPTUALIZATION_TYPE_ID}">
                Active Software Conceptualization Contests</td>
            </c:when>
            <c:when test="${pt == SPECIFICATION_TYPE_ID}">
                Active Software Specification Contests</td>
            </c:when>
            <c:when test="${pt == UI_PROTOTYPE_TYPE_ID}">
                Active UI Prototype Contests</td>
            </c:when>
            <c:when test="${pt == RIA_BUILD_TYPE_ID}">
                Active RIA Build Contests</td>
            </c:when>
            <c:when test="${pt == RIA_COMPONENT_TYPE_ID}">
                Active RIA Component Contests</td>
            </c:when>
          </c:choose>
    </tr>
    <tr>
      <td class="header" width="30%"><a href="<%=sessionInfo.getServletPath()%>?<tc-webtag:sort column="1" includeParams="true"/>">Contest</a></td>
      <td class="header" width="10%">&#160;</td>
      <td class="header" width="10%">&#160;</td>
      <td class="headerC" width="10%"><a href="<%=sessionInfo.getServletPath()%>?<tc-webtag:sort column="2" includeParams="true"/>">Register by</a></td>
      <td class="headerC" width="10%"><a href="<%=sessionInfo.getServletPath()%>?<tc-webtag:sort column="0" includeParams="true"/>">Submit by</a></td>
      <td class="headerC" width="10%"><a href="<%=sessionInfo.getServletPath()%>?<tc-webtag:sort column="10" includeParams="true"/>">Payment</a></td>
      <td class="headerC" width="10%"><a href="<%=sessionInfo.getServletPath()%>?<tc-webtag:sort column="99" includeParams="true"/>">Reliability Bonus</a></td>
      <c:if test="${hasDR}">
          <td class="headerC" width="10%">
              <div align="center">
                  <a href="/dr"><img src="/i/interface/emblem/digitalrun.png" alt="" onMouseOver="postPopUpText('globalPopupText','The Digital Run'); popUp(this,'globalPopup');" onMouseOut="popHide()" /></a>
              </div>
              <div align="center">
                  <a href="<%=sessionInfo.getServletPath()%>?<tc-webtag:sort column="11" includeParams="true"/>">Points</a>
              </div>
          </td>
      </c:if>
      <td class="headerC" width="10%">
      <a href="<%=sessionInfo.getServletPath()%>?<tc-webtag:sort column="5" includeParams="true"/>">Registrants</a><br />
      <a href="<%=sessionInfo.getServletPath()%>?<tc-webtag:sort column="4" includeParams="true"/>">Rated</a>/
      <a href="<%=sessionInfo.getServletPath()%>?<tc-webtag:sort column="6" includeParams="true"/>">Unrated</a>
      </td>
      <td class="headerC" width="10%"><a href="<%=sessionInfo.getServletPath()%>?<tc-webtag:sort column="7" includeParams="true"/>">Submissions</a></td>
   </tr>

    <% boolean even = false; %>
    <rsc:iterator list="<%=contests %>" id="resultRow">
        <tr class="<%=even?"dark":"light"%>">
            <td class="value">
                <a href="/tc?module=ProjectDetail&amp;pj=<rsc:item name="project_id" row="<%=resultRow%>"/>">
                    <rsc:item name="contest_name" row="<%=resultRow%>"/>
                </a>
            </td>
            <td class="value">
          <% if (resultRow.getIntItem("tourny_project") > 0) { %>
                <div align="center">
                  <a href='/tc?module=Static&d1=tournaments&d2=tco10&d3=overview&d4=overview'><img class="emblem" src="/i/tournament/tco10/emblem.png" alt="" border="0" onMouseOver="postPopUpText('globalPopupText','Eligible for the TopCoder Open'); popUp(this,'globalPopup');" onMouseOut="popHide()" /></a>
                </div>
           <% } else if (resultRow.isValidColumn("paypal_brand") && resultRow.getItem("paypal_brand").getResultData() != null && resultRow.getIntItem("paypal_brand") > 0) { %>
                <div align="center">
                  <img class="emblem" src="/i/development/smPayPalX.gif" alt="PayPal X" border="0" /></a>
                </div>
              <% } else { %>
                &nbsp;
              <% } %>
            </td>
            <td class="value">
              <% if (resultRow.getIntItem("sensations_project") > 0) { %>
                <div align="center">
                    <a href='http://sensations.aol.com'><img class="emblem" src="/i/tournament/tco09/tc-sdc-icon.png" alt="" border="0" onMouseOver="postPopUpText('globalPopupText','Part of the AOL/TopCoder Sensations Challenge'); popUp(this,'globalPopup');" onMouseOut="popHide()" /></a>
                </div>
              <% } else { %>
                &nbsp;
              <% } %>
            </td>
            <td class="valueC" nowrap="nowrap">
                <% if (resultRow.getBooleanItem("is_reg_closed")) { %>
                <rsc:item name="reg_end_date" row="<%=resultRow%>" format="MM.dd.yyyy'<br />'HH:mm z"/>
                <% } else { %>
                <rsc:item name="reg_end_date" row="<%=resultRow%>" format="'<strong>'MM.dd.yyyy'</strong><br />'HH:mm z"/>
                <% } %>
            </td>
            <td class="valueC" nowrap="nowrap">
                <rsc:item name="initial_submission_date" row="<%=resultRow%>" format="'<strong>'MM.dd.yyyy'</strong><br />'HH:mm z"/></td>
            <td class="valueC">
                <rsc:item name="price" row="<%=resultRow%>" format="$###,###.00"/></td>
            <td class="valueC">
                <rsc:item name="reliability_bonus" row="<%=resultRow%>" format="$###,###.00"/></td>
            <c:if test="${hasDR}">
                <td class="valueC">
                    <rsc:item name="dr_points" row="<%=resultRow%>" format="######"/>
                </td>
            </c:if>
            <td class="valueC">
         <% if (resultRow.getIntItem("total_inquiries") > 0) { %>
         <a href="/tc?module=ViewRegistrants&amp;<%=Constants.PROJECT_ID%>=<rsc:item name="project_id" row="<%=resultRow%>"/>">
         <% } %>
         <rsc:item name="total_rated_inquiries" row="<%=resultRow%>"/>/<rsc:item name="total_unrated_inquiries" row="<%=resultRow%>"/>
         <% if (resultRow.getIntItem("total_inquiries") > 0) { %>
         </a>
         <% } %>
            </td>
            <td class="valueC">
                <rsc:item name="total_submissions" row="<%=resultRow%>"/>
            </td>
        </tr>
    <% even = !even;%>
    </rsc:iterator>
</table>
<div align="right" style="padding-top: 10px">
    Stay informed with our <a href="/wiki/display/tc/Upcoming+Contests">Upcoming Contests page</a> or subscribe to the RSS feed
    <a href="/tc?module=BasicRSS&amp;c=rss_Upcoming_Contests&amp;dsid=29"><img src="/i/interface/emblem/rss.gif" alt="RSS" style="vertical-align:middle;"/></a>
</div>

        </td>
<%-- Center Column Ends --%>

<%-- Right Column Begins --%>
        <td width="170">
            <jsp:include page="../public_right.jsp">
        <jsp:param name="level1" value="branded"/>
    </jsp:include>
        </td>
<%-- Right Column Ends --%>

    </tr>
</tbody>
</table>

<jsp:include page="../foot.jsp"/>

</body>

</html>
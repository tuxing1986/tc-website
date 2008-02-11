<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" %>
<%@ page import="com.topcoder.shared.dataAccess.DataAccessConstants, com.topcoder.shared.dataAccess.resultSet.ResultSetContainer,
                 com.topcoder.web.common.model.EventType,
                 com.topcoder.web.common.tag.HandleTag,
                 com.topcoder.web.tc.Constants,
                 com.topcoder.web.tc.controller.request.tournament.AdvancersBase" %>

<%@ taglib uri="rsc-taglib.tld" prefix="rsc" %>
<%@ taglib uri="tc.tld" prefix="tc" %>
<%@ taglib uri="tc-webtags.tld" prefix="tc-webtag" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:useBean id="sessionInfo" class="com.topcoder.web.common.SessionInfo" scope="request" />

<!--  To set up a new contest, please complete the corresponding rounds ids for each part of the competition -->
<!--  Leave empty if the round doesn't exist or it's not finished -->

<c:set value="/longcontest/stats/?module=ViewOverview&amp;rd=" var="details_link"/>
<!-- 
<c:set var="round1_id" value="11130"/>
<c:set var="round2_id" value="11131"/>
<c:set var="round3_id" value="11132"/>
<c:set var="finals_id" value="12020"/>
 -->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>2008 TopCoder Open - Computer Programming Tournament</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link type="image/x-icon" rel="shortcut icon" href="/i/favicon.ico"/>
    <link type="text/css" rel="stylesheet" href="/css/tournaments/tco08.css"/>
    <link type="text/css" rel="stylesheet" href="/css/coders.css"/>
    <jsp:include page="../../script.jsp" />

    <script type="text/javascript">
  function next() {
    var myForm = document.advancersForm;
    myForm.<%=DataAccessConstants.START_RANK%>.value= parseInt(myForm.<%=DataAccessConstants.START_RANK%>.value) + parseInt(myForm.<%=DataAccessConstants.NUMBER_RECORDS%>.value);
    myForm.<%=DataAccessConstants.SORT_COLUMN%>.value='<%=request.getParameter(DataAccessConstants.SORT_COLUMN)==null?"":request.getParameter(DataAccessConstants.SORT_COLUMN)%>';
    myForm.<%=DataAccessConstants.SORT_DIRECTION%>.value='<%=request.getParameter(DataAccessConstants.SORT_DIRECTION)==null?"":request.getParameter(DataAccessConstants.SORT_DIRECTION)%>';
    myForm.submit();
  }
  function previous() {
    var myForm = document.advancersForm;
    myForm.<%=DataAccessConstants.START_RANK%>.value-=parseInt(myForm.<%=DataAccessConstants.NUMBER_RECORDS%>.value);
    myForm.<%=DataAccessConstants.SORT_COLUMN%>.value='<%=request.getParameter(DataAccessConstants.SORT_COLUMN)==null?"":request.getParameter(DataAccessConstants.SORT_COLUMN)%>';
    myForm.<%=DataAccessConstants.SORT_DIRECTION%>.value='<%=request.getParameter(DataAccessConstants.SORT_DIRECTION)==null?"":request.getParameter(DataAccessConstants.SORT_DIRECTION)%>';

    myForm.submit();
  }
</script>
</head>
<body id="page_sub">

<div id="wrapper">

<% ResultSetContainer rsc = (ResultSetContainer) request.getAttribute("result"); %>

        <jsp:include page="../nav.jsp" >
        <jsp:param name="tabLev1" value="<%=EventType.MARATHON_TOURNAMENT_ID%>"/>
        <jsp:param name="tabLev2" value="advancers"/>
        <jsp:param name="tabLev3" value="overview"/>
        </jsp:include>


                <h2>Advancers</h2>

                <form name="advancersForm" action='<jsp:getProperty name="sessionInfo" property="servletPath"/>' method="get">
                <tc-webtag:hiddenInput name="<%=Constants.MODULE_KEY%>" value="MarathonAdvancers"/>
                <tc-webtag:hiddenInput name="<%=DataAccessConstants.SORT_COLUMN%>"/>
                <tc-webtag:hiddenInput name="<%=DataAccessConstants.SORT_DIRECTION%>"/>
                <tc-webtag:hiddenInput name="<%=AdvancersBase.FULL_LIST%>"/>

                <div align="center">
                <a href="/tco08?module=MarathonAdvancers">Reset sorting</a>

                <c:choose>
                    <c:when test="${full}">
                        | <a href="/tco08?module=MarathonAdvancers&amp;full=false">Pages</a>
                        | Full view
                    </c:when>
                    <c:otherwise>
                        | Page view
                        | <a href="/tco08?module=MarathonAdvancers&amp;full=true">Full view</a>
                    </c:otherwise>
                </c:choose>

                <br />
                    <c:if test="${!full}">
                        <div class="pagingBox">
                            <%=(rsc.croppedDataBefore()?"<a href=\"Javascript:previous()\" class=\"bcLink\">&lt;&lt; prev</a>":"&lt;&lt; prev")%>
                            | <%=(rsc.croppedDataAfter()?"<a href=\"Javascript:next()\" class=\"bcLink\">next &gt;&gt;</a>":"next &gt;&gt;")%>
                        </div>
                    </c:if>
                </div>
                <br /><br />
            <table cellpadding="0" cellspacing="0" class="stat" width="100%;">
            <thead>
                <tr><th colspan="7">Marathon Match Advancers</th></tr>
                <tr>
                    <th class="headerC">
                        <a href="/tco08?<tc-webtag:sort includeParams='true' column="<%=rsc.getColumnIndex("seed")%>"/>">Seed</a>
                    </th>
                    <th class="header" nowrap="nowrap">
                        <a href="/tco08?<tc-webtag:sort includeParams='true' column="<%=rsc.getColumnIndex("handle_sort")%>"/>">Handle</a>
                        <br /><tc-webtag:textInput name="<%=Constants.HANDLE%>" size="16" style="border: 1px solid #999999; color: #999999;" onClick="this.style.color='#333333';" maxlength="100"/>
                    </th>
                    <th class="headerR">
                        <a href="/tco08?<tc-webtag:sort includeParams='true' column="<%=rsc.getColumnIndex("rating")%>"/>">Rating</a>
                    </th>
                    <th class="headerC">
                        <a href="/tco08?<tc-webtag:sort includeParams='true' column="<%=rsc.getColumnIndex("round1_sort")%>"/>">Round 1</a><br />
                        <c:if test = "${not empty round1_id}"><a href="${details_link}${round1_id}">details</a></c:if>
                    </th>
                    <th class="headerC">
                        <a href="/tco08?<tc-webtag:sort includeParams='true' column="<%=rsc.getColumnIndex("round2_sort")%>"/>">Round 2</a><br />
                        <c:if test = "${not empty round2_id}"><a href="${details_link}${round2_id}">details</a></c:if>
                    </th>
                    <th class="headerC">
                        <a href="/tco08?<tc-webtag:sort includeParams='true' column="<%=rsc.getColumnIndex("round3_sort")%>"/>">Round 3</a><br />
                        <c:if test = "${not empty round3_id}"><a href="${details_link}${round3_id}">details</a></c:if>
                    </th>
                    <th class="headerC">
                        <a href="/tco08?<tc-webtag:sort includeParams='true' column="<%=rsc.getColumnIndex("finals_sort")%>"/>">Final</a><br />
                        <c:if test = "${not empty finals_id}"><a href="${details_link}${finals_id}">details</a></c:if>
                    </th>
                </tr>
            </thead>
            <tbody>
<%-- formatting this crappy to save space in the download to the client --%>
<%boolean even = false;%>
<rsc:iterator list="<%=rsc%>" id="resultRow">
<tr class="<%=even?"dark":"light"%>">
<td class="valueC">${resultRow.map["seed"]}</td>
<td class="value"><tc-webtag:handle coderId="${resultRow.map['coder_id']}" context="<%=HandleTag.MARATHON_MATCH%>"/></td>
<td class="valueC">${resultRow.map["rating"]}</td>
<td class="${resultRow.map['round1'] == 'Eliminated' ? 'valueCE' : 'valueCA'}">${resultRow.map["round1"]}</td>
<td class="${resultRow.map['round2'] == 'Eliminated' ? 'valueCE' : 'valueCA'}">${resultRow.map["round2"]}</td>
<td class="${resultRow.map['round3'] == 'Eliminated' ? 'valueCE' : 'valueCA'}">${resultRow.map["round3"]}</td>
<td class="${resultRow.map['final'] == 'Eliminated' ? 'valueCE' : 'valueCA'}">${resultRow.map["final"]}</td>
</tr>
<%even=!even;%>
</rsc:iterator>
            </tbody>
            </table>
                <br />
                    <c:if test="${!full}">
                        <div align="center">
                            <div class="pagingBox">
                               <%=(rsc.croppedDataBefore()?"<a href=\"Javascript:previous()\" class=\"bcLink\">&lt;&lt; prev</a>":"&lt;&lt; prev")%>
                               | <%=(rsc.croppedDataAfter()?"<a href=\"Javascript:next()\" class=\"bcLink\">next &gt;&gt;</a>":"next &gt;&gt;")%>
                            
                               <br />
                            
                               View &#160;
                               <tc-webtag:textInput name="<%=DataAccessConstants.NUMBER_RECORDS%>" size="4" maxlength="4"/>
                               &#160;at a time starting with &#160;
                               <tc-webtag:textInput name="<%=DataAccessConstants.START_RANK%>" size="4" maxlength="4"/>
                                <button name="nameSubmit" value="submit" type="submit">Go</button>
                            </div>
                        </div>
                    </c:if>
                </form>
            

<jsp:include page="../footer.jsp" />

</div><%-- #wrapper --%>

</body>
</html>
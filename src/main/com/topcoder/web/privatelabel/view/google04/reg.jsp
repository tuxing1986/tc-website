<%@ page contentType="text/html; charset=ISO-8859-1" %>
<%@ page import="com.topcoder.web.privatelabel.Constants,
                 com.topcoder.shared.dataAccess.resultSet.ResultSetContainer,
                 com.topcoder.web.common.BaseServlet,
                 com.topcoder.shared.util.ApplicationServer" %>
<%@ taglib uri="/tc-webtags.tld" prefix="tc-webtag" %>
<jsp:usebean id="sessionInfo" class="com.topcoder.web.common.SessionInfo" scope="request" />
<jsp:usebean id="regInfo" class="com.topcoder.web.privatelabel.model.FullRegInfo" scope="session" />
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<link type="text/css" rel="stylesheet" class="bodyText_link" href="/css/google04.css"/>
<title>Google Code Jam 2004, Powered by TopCoder</title>
<jsp:include page="../script.jsp" />
</head>
<body>

<SCRIPT type="text/javascript">
function submitEnter(e) {
    var keycode;
    if (window.event) keycode = window.event.keyCode;
    else if (e) keycode = e.which;
    else return true;
    if (keycode == 13) {
     document.frmLogin.submit();
     return false;
    } else return true;
  }
</SCRIPT>

<table border=0 width=100% cellpadding=0 cellspacing=0>
	<tr>
		<td width="49%">&#160;</td>
		<td align=center>
			<table border=0 width=100% cellpadding=0 cellspacing=0>
				<tr>
					<td width="49%"></td>
					<td valign=bottom align=center><img border=0 src="/i/events/google2004/codejamLogo.gif" alt="Google Code Jam logo"></td>
					<td width="49%" valign=bottom align=right><a href="/"><img align="right" src="/i/events/google2003/google_pbtc.gif" border="0"></a></td>
				</tr>
			</table>
		</td>
		<td width="49%"></td>
	</tr>
	<tr>
		<td width="49%">&#160;</td>
		<td>
			<div class=greenBigBox>
			
			<!-- Tab bar links-->
			<div align=center>
			<jsp:include page="links.jsp" >
			<jsp:param name="selectedTab" value="registration"/>
			</jsp:include>
			</div>


			<br/><br/>
			<span class=bigTitle>Registration</span>

			<table cellpadding="0" cellspacing="5" class="bodyText" align="center" width="100%" border="0">
			<form action="<jsp:getProperty name="sessionInfo" property="ServletPath"/>" method="POST" name="regForm">
            <input type="hidden" name="<%=Constants.MODULE_KEY%>" value="<%=Constants.GOOGLE04_REG_DEMOG%>"/>
            <input type="hidden" name="<%=Constants.COMPANY_ID%>" value="<jsp:getProperty name="regInfo" property="CompanyId"/>"/>
            <input type="hidden" name="<%=Constants.EVENT_ID%>" value="<jsp:getProperty name="regInfo" property="EventId"/>"/>
            <tr>
                <td colspan="2" class="errorText" align="center">
                    <tc-webtag:errorIterator id="err" name="<%=Constants.HANDLE%>"><%=err%><br/></tc-webtag:errorIterator>
                </td>
            </tr>
            <tr>
                <td align="right" width="50%" nowrap>
                    Handle
                </td>
                <td align="left" width="50%">
                    <tc-webtag:textInput name="<%=Constants.HANDLE%>"  size="15" maxlength="<%=Constants.MAX_HANDLE_LENGTH%>" editable="<%=regInfo.isNew()%>"/>
                </td>
            </tr>

            <tr>
                <td colspan="2" class="errorText" align="center">
                    <tc-webtag:errorIterator id="err" name="<%=Constants.FIRST_NAME%>"><%=err%><br/></tc-webtag:errorIterator>
                </td>
            </tr>
            <tr>
                <td align="right" nowrap>
                    First Name
                </td>
                <td align="left">
                    <tc-webtag:textInput name="<%=Constants.FIRST_NAME%>"  size="15" maxlength="50"/>
                </td>
            </tr>

            <tr>
                <td colspan="2" class="errorText" align="center">
                    <tc-webtag:errorIterator id="err" name="<%=Constants.MIDDLE_NAME%>"><%=err%><br/></tc-webtag:errorIterator>
                </td>
            </tr>
            <tr>
                <td align="right" nowrap>
                    Middle Initial
                </td>
                <td align="left">
                    <tc-webtag:textInput name="<%=Constants.MIDDLE_NAME%>"  size="1" maxlength="1"/>
                </td>
            </tr>

            <tr>
                <td colspan="2" class="errorText" align="center">
                    <tc-webtag:errorIterator id="err" name="<%=Constants.LAST_NAME%>"><%=err%><br/></tc-webtag:errorIterator>
                </td>
            </tr>
            <tr>
                <td align="right" nowrap>
                    Last Name
                </td>
                <td align="left">
                    <tc-webtag:textInput name="<%=Constants.LAST_NAME%>"  size="15" maxlength="50"/>
                </td>
            </tr>

            <tr>
                <td colspan="2" class="errorText" align="center">
                    <tc-webtag:errorIterator id="err" name="<%=Constants.PASSWORD%>"><%=err%><br/></tc-webtag:errorIterator>
                </td>
            </tr>
            <tr>
                <td align="right" nowrap>
                    Password
                </td>
                <td align="left">
                    <tc-webtag:textInput name="<%=Constants.PASSWORD%>" passw="true" size="15" maxlength="<%=Constants.MAX_PASSWORD_LENGTH%>"/> (<%=Constants.MIN_PASSWORD_LENGTH%> to <%=Constants.MAX_PASSWORD_LENGTH%> characters)
                </td>
            </tr>

            <tr>
                <td colspan="2" class="errorText" align="center">
                    <tc-webtag:errorIterator id="err" name="<%=Constants.PASSWORD_CONFIRM%>"><%=err%><br/></tc-webtag:errorIterator>
                </td>
            </tr>
            <tr>
                <td align="right" nowrap>
                    Confirm Password
                </td>
                <td align="left">
                    <tc-webtag:textInput name="<%=Constants.PASSWORD_CONFIRM%>" passw="true" size="15" maxlength="<%=Constants.MAX_PASSWORD_LENGTH%>"/>
                </td>
            </tr>

            <tr>
                <td colspan="2" class="errorText" align="center">
                    <tc-webtag:errorIterator id="err" name="<%=Constants.EMAIL%>"><%=err%><br/></tc-webtag:errorIterator>
                </td>
            </tr>
            <tr>
                <td align="right" nowrap>
                    Email Address
                </td>
                <td align="left">
                    <tc-webtag:textInput name="<%=Constants.EMAIL%>"  size="15" maxlength="<%=Constants.MAX_EMAIL_LENGTH%>"/>
                </td>
            </tr>

            <tr>
                <td colspan="2" class="errorText" align="center">
                    <tc-webtag:errorIterator id="err" name="<%=Constants.EMAIL_CONFIRM%>"><%=err%><br/></tc-webtag:errorIterator>
                </td>
            </tr>
            <tr>
                <td align="right" nowrap>
                    Confirm Email Address
                </td>
                <td align="left">
                    <tc-webtag:textInput name="<%=Constants.EMAIL_CONFIRM%>"  size="15" maxlength="<%=Constants.MAX_EMAIL_LENGTH%>"/>
                </td>
            </tr>

            <tr>
                <td colspan="2" class="errorText" align="center">
                    <tc-webtag:errorIterator id="err" name="<%=Constants.ADDRESS1%>"><%=err%><br/></tc-webtag:errorIterator>
                </td>
            </tr>
            <tr>
                <td align="right" nowrap>
                    Address1
                </td>
                <td align="left">
                    <tc-webtag:textInput name="<%=Constants.ADDRESS1%>"  size="30" maxlength="50"/>
                </td>
            </tr>

            <tr>
                <td colspan="2" class="errorText" align="center">
                    <tc-webtag:errorIterator id="err" name="<%=Constants.ADDRESS2%>"><%=err%><br/></tc-webtag:errorIterator>
                </td>
            </tr>
            <tr>
                <td align="right" nowrap>
                    Address2
                </td>
                <td align="left">
                    <tc-webtag:textInput name="<%=Constants.ADDRESS2%>"  size="30" maxlength="50"/>
                </td>
            </tr>

            <tr>
                <td colspan="2" class="errorText" align="center">
                    <tc-webtag:errorIterator id="err" name="<%=Constants.ADDRESS3%>"><%=err%><br/></tc-webtag:errorIterator>
                </td>
            </tr>
            <tr>
                <td align="right" nowrap>
                    Address3
                </td>
                <td align="left">
                    <tc-webtag:textInput name="<%=Constants.ADDRESS3%>"  size="30" maxlength="50"/>
                </td>
            </tr>

            <tr>
                <td colspan="2" class="errorText" align="center">
                    <tc-webtag:errorIterator id="err" name="<%=Constants.CITY%>"><%=err%><br/></tc-webtag:errorIterator>
                </td>
            </tr>
            <tr>
                <td align="right" nowrap>
                    City
                </td>
                <td align="left">
                    <tc-webtag:textInput name="<%=Constants.CITY%>"  size="15" maxlength="50"/>
                </td>
            </tr>

            <tr>
                <td colspan="2">
                    <tc-webtag:errorIterator id="err" name="<%=Constants.STATE_CODE%>"><%=err%><br/></tc-webtag:errorIterator>
                </td>
            </tr>
            <tr>
                <td align="right" nowrap>
                    State
                </td>
                <td align="left">
                    <% ResultSetContainer stateRsc = (ResultSetContainer)request.getAttribute("stateList"); %>
                    <tc-webtag:rscSelect name="<%=Constants.STATE_CODE%>" list="<%=stateRsc%>" fieldText="state_name" fieldValue="state_code"/>
                </td>
            </tr>
            <tr>
                <td colspan="2" class="errorText" align="center">
                    <tc-webtag:errorIterator id="err" name="<%=Constants.PROVINCE%>"><%=err%><br/></tc-webtag:errorIterator>
                </td>
            </tr>
            <tr>
                <td align="right" nowrap>Province</td>
                <td align="left">
                    <tc-webtag:textInput name="<%=Constants.PROVINCE%>"  size="15" maxlength="50"/>
                </td>
            </tr>
            <tr>
                <td colspan="2" class="errorText" align="center">
                    <tc-webtag:errorIterator id="err" name="<%=Constants.ZIP%>"><%=err%><br/></tc-webtag:errorIterator>
                </td>
            </tr>
            <tr>
                <td align="right" nowrap>
                    Zip Code
                </td>
                <td align="left">
                    <tc-webtag:textInput name="<%=Constants.ZIP%>"  size="10" maxlength="15"/>
                </td>
            </tr>

            <tr>
                <td colspan="2" class="errorText" align="center">
                    <tc-webtag:errorIterator id="err" name="<%=Constants.COUNTRY_CODE%>"><%=err%><br/></tc-webtag:errorIterator>
                </td>
            </tr>
            <tr>
                <td align="right" nowrap>
                    Country
                </td>
                <td align="left">
                    <% ResultSetContainer countryRsc = (ResultSetContainer)request.getAttribute("countryList"); %>
                    <tc-webtag:rscSelect name="<%=Constants.COUNTRY_CODE%>" list="<%=countryRsc%>" fieldText="country_name" fieldValue="country_code"/>
                </td>
            </tr>
            <tr>
                <td ccolspan="2" class="errorText" align="center">
                    <tc-webtag:errorIterator id="err" name="<%=Constants.CODER_TYPE%>"><%=err%><br/></tc-webtag:errorIterator>
                </td>
            </tr>
            <tr>
                <td align="right" valign=bottom nowrap>
                    Student/Professional
                </td>
                <td align="left" valign=bottom>
                    Student: <input type="radio" name="<%=Constants.CODER_TYPE%>" value ="<%=Constants.STUDENT%>" <%=regInfo.isStudent()?"checked":""%>>
                    Professional: <input type="radio" name="<%=Constants.CODER_TYPE%>" value ="<%=Constants.PROFESSIONAL%>" <%=regInfo.isProfessional()?"checked":""%>>
                </td>
            </tr>
            <tr>
               <td colspan="2" align="center">
                  <p align="center"><a href="javascript: document.regForm.submit();">Submit</a></p> 
               </td>
            </tr>
            </form>
		</table>

			<br/><br/>
			To find out more detailed information about the Google Code Jam 2004, including a list of the prizes, please read the <a href="/pl/?&module=Static&d1=google04&d2=rules">Terms and Conditions</a>.
			</div>
		</td>
		<td width="49%">&#160;</td>
	<tr>
</table>
<jsp:include page="foot.jsp" />
</body>

<%@ page import="com.topcoder.shared.dataAccess.resultSet.ResultSetContainer"%>
<%@ page language="java"  %>
<%@ taglib uri="rsc-taglib.tld" prefix="rsc" %>
<%@ taglib uri="tc.tld" prefix="tc" %>
<jsp:usebean id="memberSearch" class="com.topcoder.web.tc.model.MemberSearch" scope="request" />
<% ResultSetContainer results = memberSearch.getResults();%>
          <a name="data"/>
          <table  border="0" cellspacing="0" cellpadding="5" width="510" align="center" class="bodyText">
              <tr valign="middle">
                  <td colspan="6" class="bodyText">Search Results:
                          &#160;&#160;<jsp:getProperty name="memberSearch" property="start"/>
                          to
                          <jsp:getProperty name="memberSearch" property="end"/>
                          of
                          <jsp:getProperty name="memberSearch" property="total"/>
                  </td>
              </tr>
        </table>

          <table  border="0" cellspacing="0" cellpadding="5" width="510" align="center" class="formFrame">
              <tr>
                  <td class="searchHeaders" valign="middle" width="20%">Handle</td>
                  <td class="searchHeaders" valign="middle" align="right" width="15%">Rating</td>
                  <td class="searchHeaders" valign="middle" align="center" width="15%">State</td>
                  <td class="searchHeaders" valign="middle" align="left" width="25%">Country</td>
                  <td class="searchHeaders" valign="middle" align="center" width="12%">Rated<br/>Events</td>
                  <td class="searchHeaders" valign="middle" align="center" width="12%">Last<br/>Event</td>
              </tr>

              <%boolean even = false;%>
              <rsc:iterator list="<%=results%>" id="resultRow">
              <tr>
                  <td align="left" class="formHandleEven" valign="top" nowrap>
                      <a href="/stat?c=member_profile&cr=<rsc:item row="<%=resultRow%>" name="user_id"/>" class="<tc:ratingStyle rating='<%=resultRow.getIntItem("rating")%>'/>"><rsc:item row="<%=resultRow%>" name="handle"/></a>
                  </td>
                  <td class="formHandleEven" valign="middle" align="right"><rsc:item row="<%=resultRow%>" name="rating"/>&#160;&#160;</td>
                  <td class="formHandleEven" valign="middle" align="center"><rsc:item row="<%=resultRow%>" name="state_code"/></td>
                  <td class="formHandleEven" valign="middle" align="left" nowrap><rsc:item row="<%=resultRow%>" name="country_name"/></td>
                  <td class="formHandleEven" valign="middle" align="right"><rsc:item row="<%=resultRow%>" name="num_ratings"/>&#160;&#160;&#160;&#160;&#160;&#160;</td>
                  <td class="formHandleEven" valign="middle" align="center"><rsc:item row="<%=resultRow%>" name="last_competed" format="MM.dd.yyyy" ifNull="N/A"/></td>
              </tr>
              <%even=!even;%>
              </rsc:iterator>
        </table>

          <table  border="0" cellspacing="0" cellpadding="5" width="510" align="center" class="bodyText">
              <tr valign="middle">
                  <td class="bodyText" colspan="6" align="center">
                    <%=(results.croppedDataBefore()?"<a href=\"Javascript:previous()\" class=\"bodyText\">&lt;&lt; prev</a>":"&lt;&lt; prev")%>
                    | <%=(results.croppedDataAfter()?"<a href=\"Javascript:next()\" class=\"bodyText\">next &gt;&gt;</a>":"next &gt;&gt;")%>
                  </td>
              </tr>
          </table>

<div align="center">
    <div class="searchTable">
        <div class="searchHeadRow">
            <div class="searchHeadCell">Handle</div>            
            <div class="searchHeadCell">Rating</div>            
            <div class="searchHeadCell">State</div>            
            <div class="searchHeadCell">Country</div>            
            <div class="searchHeadCell">Rated<br/>Events</div>            
            <div class="searchHeadCell">Last<br/>Event</div>            
        </div>
        <div class="searchBodyRow">
            <div class="searchBodyCell">body</div>            
            <div class="searchBodyCell">body</div>            
            <div class="searchBodyCell">body</div>            
            <div class="searchBodyCell">body</div>            
            <div class="searchBodyCell">body</div>            
            <div class="searchBodyCell">body</div>            
        </div>
        <div class="searchBodyRow">
            <div class="searchBodyCell">body</div>            
            <div class="searchBodyCell">body</div>            
            <div class="searchBodyCell">body</div>            
            <div class="searchBodyCell">body</div>            
            <div class="searchBodyCell">body</div>            
            <div class="searchBodyCell">body</div>            
        </div>
        <div class="searchBodyRow">
            <div class="searchBodyCell">body</div>            
            <div class="searchBodyCell">body</div>            
            <div class="searchBodyCell">body</div>            
            <div class="searchBodyCell">body</div>            
            <div class="searchBodyCell">body</div>            
            <div class="searchBodyCell">body</div>            
        </div>
        <div class="searchBodyRow">
            <div class="searchBodyCell">body</div>            
            <div class="searchBodyCell">body</div>            
            <div class="searchBodyCell">body</div>            
            <div class="searchBodyCell">body</div>            
            <div class="searchBodyCell">body</div>            
            <div class="searchBodyCell">body</div>            
        </div>
    </div>
</div>
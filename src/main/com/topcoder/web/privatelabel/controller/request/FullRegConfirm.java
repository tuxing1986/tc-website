package com.topcoder.web.privatelabel.controller.request;

import com.topcoder.shared.dataAccess.DataAccessInt;
import com.topcoder.shared.dataAccess.Request;
import com.topcoder.shared.dataAccess.resultSet.ResultSetContainer;
import com.topcoder.web.common.NavigationException;
import com.topcoder.web.common.TCWebException;
import com.topcoder.web.privatelabel.Constants;
import com.topcoder.web.privatelabel.model.DemographicQuestion;
import com.topcoder.web.privatelabel.model.DemographicResponse;
import com.topcoder.web.privatelabel.model.FullRegInfo;
import com.topcoder.web.privatelabel.model.SimpleRegInfo;

import java.util.Iterator;
import java.util.Map;

/**
 *
 * @author gpaul 07.07.2003
 */
public class FullRegConfirm extends FullRegBase {

    protected void registrationProcessing() throws TCWebException {

        /*
          check the 2nd page input, no reason to do the first page again
          we got it from the persistor at this point, so we can assume it
          has already been checked.
        */
        checkRegInfo(regInfo);

        try {
            if (hasErrors()) {
                getRequest().setAttribute("questionList", getQuestionList());
                setNextPage(Constants.VERIZON_REG_DEMOG_PAGE);
                setDefaults(regInfo);
            } else {
                getRequest().setAttribute("responseList", ((FullRegInfo) regInfo).getResponses());
                getRequest().setAttribute("questionMap", questions);
                regInfo.setCountryName(findCountry(regInfo.getCountryCode()));
                regInfo.setStateName(findState(regInfo.getStateCode()));
                setNextPage(Constants.VERIZON_REG_CONFIRM_PAGE);
            }
        } catch (Exception e) {
            throw new TCWebException(e);
        }
        setIsNextPageInContext(true);
    }


    /**
     * Check the extended type information only.
     * @param info
     * @throws TCWebException
     */
    protected void checkRegInfo(SimpleRegInfo info) throws TCWebException {
        if (!(((FullRegInfo)info).getCoderType() == Constants.STUDENT || ((FullRegInfo)info).getCoderType() == Constants.PROFESSIONAL)) {
            addError(Constants.CODER_TYPE, "Please choose either Student or Professional.");
        }

        //check demographic answers
        DemographicResponse r = null;
        DemographicQuestion q = null;
        try {
            for (Iterator it = ((FullRegInfo)info).getResponses().iterator(); it.hasNext();) {
                r = (DemographicResponse) it.next();
                q = findQuestion(r.getQuestionId());
                if (q.getAnswerType() == DemographicQuestion.SINGLE_SELECT ||
                        q.getAnswerType() == DemographicQuestion.MULTIPLE_SELECT) {
                    if (!validResponse(r)) {
                        addError(Constants.DEMOG_PREFIX + r.getQuestionId(), "Please choose an answer from the list.");
                    }
                } else if (q.getAnswerType() == DemographicQuestion.FREE_FORM) {
                    if (r.getText().length() > 255) {
                        addError(Constants.DEMOG_PREFIX + r.getQuestionId(), "Please enter a shorter answer.");
                    } else if (q.isRequired() && r.getText().length() < 1) {
                        addError(Constants.DEMOG_PREFIX + r.getQuestionId(), "Please enter a valid answer.");
                    }
                }
            }
        } catch (Exception e) {
            throw new TCWebException(e);
        }

    }

    private boolean validResponse(DemographicResponse response) throws Exception {
        DataAccessInt dataAccess = getDataAccess(db, true);
        Request r = new Request();
        r.setContentHandle("demographic_answer_list");
        r.setProperty("dq", String.valueOf(response.getQuestionId()));
        Map aMap = dataAccess.getData(r);
        ResultSetContainer answers = (ResultSetContainer) aMap.get("demographic_answer_list");

        ResultSetContainer.ResultSetRow aRow = null;
        boolean found = false;
        for (Iterator it = answers.iterator(); it.hasNext() && !found;) {
            aRow = (ResultSetContainer.ResultSetRow) it.next();
            found = (aRow.getIntItem("demographic_answer_id") == response.getAnswerId());
        }
        return found;
    }

    protected SimpleRegInfo makeRegInfo() throws Exception {
        if (getRegInfoFromPersistor() == null) {
            //perhaps we should load it up from the db...in the case of updates...
            throw new NavigationException("Sorry, your session has expired, you'll have to begin again.");
        } else {
            return super.makeRegInfo();
        }
    }


}

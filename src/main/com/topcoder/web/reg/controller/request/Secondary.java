package com.topcoder.web.reg.controller.request;

import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

import com.topcoder.shared.security.ClassResource;
import com.topcoder.web.common.NavigationException;
import com.topcoder.web.common.PermissionException;
import com.topcoder.web.common.TCWebException;
import com.topcoder.web.common.model.Address;
import com.topcoder.web.common.model.AlgoRating;
import com.topcoder.web.common.model.AlgoRatingType;
import com.topcoder.web.common.model.CoderType;
import com.topcoder.web.common.model.Company;
import com.topcoder.web.common.model.Email;
import com.topcoder.web.common.model.Notification;
import com.topcoder.web.common.model.Phone;
import com.topcoder.web.common.model.Preference;
import com.topcoder.web.common.model.RegistrationType;
import com.topcoder.web.common.model.TimeZone;
import com.topcoder.web.common.model.User;
import com.topcoder.web.common.model.UserPreference;
import com.topcoder.web.reg.Constants;
import com.topcoder.web.reg.RegFieldHelper;
/**
 * @author dok
 * @version $Revision$ Date: 2005/01/01 00:00:00
 *          Create Date: Mar 29, 2006
 */
public class Secondary extends Base {

    protected void registrationProcessing() throws Exception {
        User u = getRegUser();
        if (u == null) {
            throw new NavigationException("Sorry, your session has timed out.");
        } else {

            Set fields = RegFieldHelper.getMainFieldSet(getRequestedTypes(), u);
            if ("POST".equals(getRequest().getMethod())) {
                if (u.isNew() || userLoggedIn()) {
                    Map params = getMainUserInput();
                    checkMainFields(params);

                    if (hasErrors()) {
                        Map.Entry me;
                        for (Iterator it = params.entrySet().iterator(); it.hasNext();) {
                            me = (Map.Entry) it.next();
                            if (me.getKey().equals(Constants.NOTIFICATION)) {
                                List a = (List) me.getValue();
                                for (Iterator it1 = a.iterator(); it1.hasNext();) {
                                    setDefault(Constants.NOTIFICATION + ((Notification) it1.next()).getId(), String.valueOf(true));
                                }
                            } else {
                                setDefault((String) me.getKey(), me.getValue());
                            }
                        }

                        setDefault(Constants.MEMBER_CONTACT, String.valueOf(params.get(Constants.MEMBER_CONTACT) != null));
                        if (!u.isNew()) {
                            setDefault(Constants.HANDLE, u.getHandle());
                        }
                        List nots = getFactory().getNotificationDAO().getNotifications(getRequestedTypes());
                        if (nots != null) {
                            getRequest().setAttribute("notifications", nots);
                        }
                        getRequest().setAttribute(Constants.FIELDS, fields);
                        getRequest().setAttribute(Constants.REQUIRED_FIELDS,
                                RegFieldHelper.getMainRequiredFieldSet(getRequestedTypes(), u));
                        getRequest().setAttribute("countries", getFactory().getCountryDAO().getCountries());
                        getRequest().setAttribute("coderTypes", getFactory().getCoderTypeDAO().getCoderTypes());
                        getRequest().setAttribute("timeZones", getFactory().getTimeZoneDAO().getTimeZones());
                        getRequest().setAttribute("regTerms", getFactory().getTermsOfUse().find(new Integer(Constants.REG_TERMS_ID)));
                        setNextPage("/main.jsp");
                        setIsNextPageInContext(true);
                    } else {
                        loadFieldsIntoUserObject(fields, params);
                        Set secondaryFields = RegFieldHelper.getSecondaryFieldSet(getRequestedTypes(), u);
                        log.debug("we have " + secondaryFields.size() + " secondary fields");
                        if (secondaryFields.isEmpty()) {
                            getRequest().setAttribute(Constants.FIELDS, fields);
                            setNextPage("/confirm.jsp");
                            HashSet h = new HashSet();
                            for (Iterator it = getRequestedTypes().iterator(); it.hasNext();) {
                                h.add(((RegistrationType) it.next()).getId());
                            }
                            getRequest().setAttribute(Constants.REG_TYPES, h);
                            setIsNextPageInContext(true);
                        } else {
                            //set the fields in the user object
                            getRequest().setAttribute("demographicAssignments", getAssignments(u));
                            getRequest().setAttribute("referrals", getReferrals(u));
                            setSecondaryDefaults(u);
                            getRequest().setAttribute(Constants.FIELDS, secondaryFields);
                            getRequest().setAttribute(Constants.REQUIRED_FIELDS,
                                    RegFieldHelper.getSecondaryRequiredFieldSet(getRequestedTypes(), u));
                            setNextPage("/secondary.jsp");
                            setIsNextPageInContext(true);
                        }


                    }
                } else {
                    throw new PermissionException(getUser(), new ClassResource(this.getClass()));
                }
            } else {
                Set secondaryFields = RegFieldHelper.getSecondaryFieldSet(getRequestedTypes(), u);
                if (secondaryFields.isEmpty()) {
                    getRequest().setAttribute(Constants.FIELDS, fields);
                    setNextPage("/confirm.jsp");
                    setIsNextPageInContext(true);
                } else {
                    getRequest().setAttribute("demographicAssignments", getAssignments(u));
                    getRequest().setAttribute("referrals", getReferrals(u));
                    setSecondaryDefaults(u);
                    getRequest().setAttribute(Constants.FIELDS, secondaryFields);
                    getRequest().setAttribute(Constants.REQUIRED_FIELDS,
                            RegFieldHelper.getSecondaryRequiredFieldSet(getRequestedTypes(), u));
                    setNextPage("/secondary.jsp");
                    setIsNextPageInContext(true);
                }
            }
        }
    }


    private void loadFieldsIntoUserObject(Set fields, Map params) throws TCWebException {
        User u = getRegUser();
        Address a = u.getHomeAddress();
        //we'll consider address1 to be the indicator as to whether or not we're getting an address
        if (fields.contains(Constants.ADDRESS1) || fields.contains(Constants.ADDRESS2) || fields.contains(Constants.ADDRESS3)
                || fields.contains(Constants.CITY) || fields.contains(Constants.POSTAL_CODE) || fields.contains(Constants.COUNTRY_CODE) ||
                fields.contains(Constants.STATE_CODE) || fields.contains(Constants.PROVINCE)) {
            if (a == null) {
                a = new Address();
                u.addAddress(a);
            }
            a.setAddressTypeId(Address.HOME_TYPE_ID);
            a.setAddress1((String) params.get(Constants.ADDRESS1));
        }
        if (fields.contains(Constants.ADDRESS2)) {
            a.setAddress2((String) params.get(Constants.ADDRESS2));
        }
        if (fields.contains(Constants.ADDRESS3)) {
            a.setAddress3((String) params.get(Constants.ADDRESS3));
        }
        if (fields.contains(Constants.CITY)) {
            a.setCity((String) params.get(Constants.CITY));
        }
        if (fields.contains(Constants.POSTAL_CODE)) {
            a.setPostalCode((String) params.get(Constants.POSTAL_CODE));
        }

        if (fields.contains(Constants.COUNTRY_CODE)) {
            a.setCountry(getFactory().getCountryDAO().find((String) params.get(Constants.COUNTRY_CODE)));
        }

        if (getFactory().getCountryDAO().getUS().equals(a.getCountry())) {
            if (fields.contains(Constants.STATE_CODE)) {
                a.setState(getFactory().getStateDAO().find((String) params.get(Constants.STATE_CODE)));
            }
        } else {
            a.setState(null);
            if (fields.contains(Constants.PROVINCE)) {
                a.setProvince((String) params.get(Constants.PROVINCE));
            }
        }

        if (fields.contains(Constants.GIVEN_NAME)) {
            u.setFirstName((String) params.get(Constants.GIVEN_NAME));
        }
        if (fields.contains(Constants.SURNAME)) {
            u.setLastName((String) params.get(Constants.SURNAME));
        }
        if (fields.contains(Constants.MIDDLE_NAME)) {
            u.setMiddleName((String) params.get(Constants.MIDDLE_NAME));
        }
        if (fields.contains(Constants.PASSWORD)) {
            u.setPassword((String) params.get(Constants.PASSWORD));
        }

        if (fields.contains(Constants.COMPANY_NAME)) {
            String name = (String) params.get(Constants.COMPANY_NAME);

            //we can assume the user's contact object is not null because it should have been
            //created by the Main processor when they selected a reg type that requires it.
            if (u.getContact().getId() == null) {
                //it's a new contact we're creating
                Company c = new Company();
                c.setName(name);
                c.setPrimaryContact(u.getContact());
                u.getContact().setCompany(c);
            } else {
                if (u.getContact().getCompany() == null) {
                    throw new TCWebException("Invalid state, user " + u.getId() + " missing company");
                } else {
                    //if they're changing their company, create a new company record
                    if (!u.getContact().getCompany().getName().equals(name)) {
                        Company c = new Company();
                        c.setName(name);
                        c.setPrimaryContact(u.getContact());
                        u.getContact().setCompany(c);
                    }
                }
            }
        }

        if (fields.contains(Constants.TITLE)) {
            u.getContact().setTitle((String) params.get(Constants.TITLE));
        }

        if (fields.contains(Constants.QUOTE)) {
            u.getCoder().setQuote((String) params.get(Constants.QUOTE));
        }

        if (fields.contains(Constants.EMAIL)) {
            Email e = u.getPrimaryEmailAddress();
            if (e == null) {
                e = new Email();
                e.setPrimary(Boolean.TRUE);
                e.setEmailTypeId(Email.TYPE_ID_PRIMARY);
                e.setStatusId(Email.STATUS_ID_UNACTIVE);
                e.setUser(u);
                u.addEmailAddress(e);
            }
            e.setAddress((String) params.get(Constants.EMAIL));
        }

        //we don't allow updates, so no need to set it here.
        if (u.isNew()) {
            if (fields.contains(Constants.HANDLE)) {
                //yeah...100% chance they'll contain it, but i'll be consistent with the code anyway
                u.setHandle((String) params.get(Constants.HANDLE));
            }
        }

        if (fields.contains(Constants.PHONE_NUMBER)) {
            //yeah...100% chance they'll contain it, but i'll be consistent with the code anyway
            Phone p = u.getPrimaryPhoneNumber();
            if (p == null) {
                p = new Phone();
                p.setPhoneTypeId(Phone.PHONE_TYPE_HOME);
                p.setPrimary(Boolean.TRUE);
                p.setUser(u);
                u.addPhoneNumber(p);
            }
            p.setNumber((String) params.get(Constants.PHONE_NUMBER));
        }

        if (fields.contains(Constants.NOTIFICATION)) {
            u.setNotifications(new HashSet((List) params.get(Constants.NOTIFICATION)));
        }

        if (fields.contains(Constants.MEMBER_CONTACT)) {
            UserPreference up = u.getUserPreference(Preference.MEMBER_CONTACT_PREFERENCE_ID);
            String value = String.valueOf(params.get(Constants.MEMBER_CONTACT) != null);
            if (up == null) {
                up = new UserPreference();
                Preference p = getFactory().getPreferenceDAO().find(Preference.MEMBER_CONTACT_PREFERENCE_ID);
                up.setId(new UserPreference.Identifier(u, p));
                up.setValue(value);
                u.addUserPreference(up);
            } else {
                up.setValue(value);
            }
        }

        if (fields.contains(Constants.COMP_COUNTRY_CODE)) {
            u.getCoder().setCompCountry(getFactory().getCountryDAO().find((String) params.get(Constants.COMP_COUNTRY_CODE)));
        }


        if (fields.contains(Constants.CODER_TYPE)) {
            CoderType ct =
                    getFactory().getCoderTypeDAO().find(new Integer((String) params.get(Constants.CODER_TYPE)));
            u.getCoder().setCoderType(ct);
        }

        if (fields.contains(Constants.TIMEZONE)) {
            TimeZone tz =
                    getFactory().getTimeZoneDAO().find(new Integer((String) params.get(Constants.TIMEZONE)));
            u.setTimeZone(tz);
        }

        if (getRequestedTypes().contains(getFactory().getRegistrationTypeDAO().getHighSchoolType()) &&
                !u.getCoder().hasHSRating()) {
            AlgoRatingType hs = getFactory().getAlgoRatingTypeDAO().find(AlgoRatingType.HIGH_SCHOOL);
            AlgoRating hsRating = new AlgoRating();
            hsRating.setType(hs);
            hsRating.setCoder(u.getCoder());
            hsRating.getId().setCoder(u.getCoder());
            hsRating.getId().setType(hs);
            u.getCoder().addRating(hsRating);

        }

        if (getRequestedTypes().contains(getFactory().getRegistrationTypeDAO().getCompetitionType()) &&
                !u.getCoder().hasTCRating()) {
            AlgoRatingType tc = getFactory().getAlgoRatingTypeDAO().find(AlgoRatingType.TC);
            AlgoRating tcRating = new AlgoRating();
            tcRating.setType(tc);
            tcRating.setCoder(u.getCoder());
            tcRating.getId().setCoder(u.getCoder());
            tcRating.getId().setType(tc);
            u.getCoder().addRating(tcRating);
        }

        u.addTerms(getFactory().getTermsOfUse().find(new Integer(Constants.REG_TERMS_ID)));
        setRegUser(u);
    }
}
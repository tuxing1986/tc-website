package com.topcoder.web.tc.controller.request.tournament.tccc06;

import com.topcoder.alerts.aol.wrapper.NamedAlertRegistry;
import com.topcoder.shared.util.ApplicationServer;

/**
 * @author dok
 * @version $Revision$ Date: 2005/01/01 00:00:00
 *          Create Date: Sep 18, 2006
 */
public class AOLHelper {

    public static final String AOL_COOKIE = "aolcind";
    public static final String AOL_ALIAS = "users";

    public static final String MESSAGE_TEXT = "mtext";
    public static final String QUERY = "qtext";

    public static final String AUTH_TOKEN = "AuthToken";
    public static final String AOL_USER_ID = "UserId";
    public static final String AOL_ALERT_ID = "AlertId";

    public static final String SRM_REMINDER = "SRM Reminder";
    public static final String TCCC_REMINDER = "TCCC Reminder";
    public static final String TCCC_ANNOUNCEMENT = "TCCC Announcment";
    public static final String TCCC_ONSITE_FINALS = "TCCC Onsite Finals";
    public static final String COMPONENT_POSTING = "Component Posting";
    public static final String INDIVIDUAL = "Individual";


    public static NamedAlertRegistry registry;

    static {
        if (ApplicationServer.ENVIRONMENT == ApplicationServer.PROD) {
            registry.addAlertIDMapping(SRM_REMINDER, "7ba63042-e8f0-4adb-815a-f755fc768de9",
                    "95F1C56B13A2B71E65A6CB78DD09838B92A1A017BF277C6BD19524AD1EF234",
                    "TopCoder-SRMReminder-Dev", true);
            registry.addAlertIDMapping(TCCC_REMINDER, "75a145d7-7e3a-4b50-91bc-f755fc768de9",
                    "50E72435EAB2FCBD164846E991B7F6D9379D0CA7E9793B229ED952440FFEDD9",
                    "TopCoder-TCCCReminder", true);
            registry.addAlertIDMapping(TCCC_ANNOUNCEMENT, "ca728bdf-cb15-4c51-b18c-f755fc768de9",
                    "238DBB16777942032F7390A1274CD2CBB53EA20FF3345FA8CBF5865E543092",
                    "TopCoder-TCCCAnnouncement", true);
            registry.addAlertIDMapping(TCCC_ONSITE_FINALS, "8c11e193-5329-4d6e-ab9c-f755fc768de9",
                    "85C0184E720ED1E4C2EE429458F9C3FD468DBF7AE8177D247BC7157ECF5C190",
                    "TopCoder-TCCCOnsiteFinals", true);
            registry.addAlertIDMapping(COMPONENT_POSTING, "d49baedf-420a-47b9-a287-f755fc768de9",
                    "AB9BB052241B6C60BA4BC64E11A7E43667C0BA2F4759C1C306780BF65C3552B",
                    "TopCoder-ComponentPosting", true);
            registry.addAlertIDMapping(INDIVIDUAL, "268e2e1d-6d09-4c8e-a78c-f755fc768de9",
                    "FA7362BC7BC7C507EE6B91BC8C22284BC06527B5DB0DD7BFB9FBBBE4C6BC867", "", false);
        } else {
            registry.addAlertIDMapping(SRM_REMINDER, "7ba606d0-e8f0-4adb-815a-f755fc768de9",
                    "95F1C56B13A2B71E65A6CB78DD09838B92A1A017BF277C6BD19524AD1EF234",
                    "TopCoder-SRMReminder-Dev", true);
            registry.addAlertIDMapping(TCCC_REMINDER, "92df1d88-3c7c-40a9-abb2-f755fc768de9",
                    "C6FD1B96E1C345DF4E67750A9D045286832716C7617BD219EB8B43898EDB39C4",
                    "TopCoder-TCCCReminder-Dev", true);
            registry.addAlertIDMapping(TCCC_ANNOUNCEMENT, "ea36961c-6fb1-4b09-b6bc-f755fc768de9",
                    "56511EE531811CC47F036816938D3B484B9EC1463157648675C14473ECE13095",
                    "TopCoder-TCCCAnnouncement-Dev", true);
            registry.addAlertIDMapping(TCCC_ONSITE_FINALS, "524517e6-8761-4f06-93ff-f755fc768de9",
                    "B9C93DAD119C6603EA6A48298BCC1DCB5582C39F382CE21CB775A24AE3A326",
                    "TopCoder-TCCCOnsiteFinals-Dev", true);
            registry.addAlertIDMapping(COMPONENT_POSTING, "5929565d-8173-48e8-89f3-f755fc768de9",
                    "BCBB77FAB87CFE70907060C39B1760A674486E1CB37AA664FACE50D72FA7579",
                    "TopCoder-ComponentPosting-Dev", true);
            registry.addAlertIDMapping(INDIVIDUAL, "9244f24a-3c7c-40a9-abb2-f755fc768de9",
                    "F4A96814585F89E11C132FE691A82F3F2A967C5BFEE225026A75825A3792764", "", false);
        }
    }

}

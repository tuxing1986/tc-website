package com.topcoder.utilities;

import com.topcoder.shared.distCache.CacheClient;
import com.topcoder.shared.distCache.CacheClientFactory;
import com.topcoder.shared.util.logging.Logger;

import java.util.HashMap;
import java.util.Map;

/*
 * CacheTest.java
 *
 * Created on August 3, 2004, 4:14 PM
 */


/**
 *
 * @author  rfairfax
 */
public class CacheTest {

    private static Logger log = Logger.getLogger(CacheTest.class);
    protected static final long DEFAULT_EXPIRE_TIME = 1000 * 60 * 60 * 24 * 5;

    /** Creates a new instance of CacheTest */
    public CacheTest() {
    }

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        try {
            CacheClient cc = null;
            try {
                cc = CacheClientFactory.createCacheClient();
            } catch (Exception e) {
                log.error("UNABLE TO ESTABLISH A CONNECTION TO THE CACHE: " + e.getMessage());
                System.exit(-1);
            }

            log.info("time " + System.currentTimeMillis());
            for (int i=0; i<10000; i++) {
                cc.set("key"+i, BIG, 5000);
            }
            log.info("time " + System.currentTimeMillis());

            for (int i=0; i<10000; i++) {
                cc.set("key"+i, BIG, 5000);
            }
            log.info("time " + System.currentTimeMillis());


        } catch (Exception e) {
            log.error(e.getMessage());
        }
    }


    private static final String BIG = "jkadsjafl;kjasdf;lkjadsf;lkjasdfl;ksadjf;lkasjdfl;ksajdf;lsadjfl;kasdjfl;kasdjfl;ksadjfl;sadjfl;ksadjfl;kasdjfl;kasdjfl;kasdjf;lkasdjfl;kasdjfl;kasdjfl;ksadjf;lsadjfl;ksadjf;lsadjfl;kasjfl;kasdjf;lja;lfjasl;kjfl;asdjflsadjflsjk;";


}

package com.topcoder.web.common.function;

import java.util.Collection;
import java.util.Map;

/**
 * @author dok
 * @version $Revision$ Date: 2005/01/01 00:00:00
 *          Create Date: May 4, 2006
 */
public class Util {
    public static boolean contains(Collection c, Object o) {
        return c.contains(o);
    }

    public static boolean containsMapKey(Map m, Object o) {
        return m.containsKey(o);
    }

}

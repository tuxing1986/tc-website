/*
 * PreferenceGroup.java
 *
 * Created on October 1, 2004, 2:24 PM
 */

package com.topcoder.web.tc.model;

import java.io.Serializable;

import java.util.ArrayList;
import java.util.List;
import java.util.Collections;
/**
 *
 * @author  rfairfax
 */
public class PreferenceGroup implements Serializable, Comparable {
    
    private String name;
    private ArrayList prefs;
    private int sortOrder;
    
    /** Creates a new instance of PreferenceGroup */
    public PreferenceGroup() {
        name = "";
        prefs = new ArrayList();
        sortOrder = 0;
    }
    
    public void addPreference(Preference p) {
        prefs.add(p);
        Collections.sort(prefs);
    }
    
    public int getSortOrder() {
        return sortOrder;
    }
    
    public void setSortOrder(int so) {
        this.sortOrder = so;
    }
    
    public List getPrefs() {
        return prefs;
    }
    
    public String getName() {
        return name;
    }
    
    public void setName(String name) {
        this.name = name;
    }

    public int compareTo(Object obj) {
        PreferenceGroup o2 = (PreferenceGroup)obj;
        
        return this.getSortOrder() - o2.getSortOrder();
    }
    
}

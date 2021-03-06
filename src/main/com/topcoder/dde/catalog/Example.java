/*
 * Example.java
 * 26 August 2002
 * 1.0
 *
 * Copyright (c) 2002, TopCoder, Inc.
 * All rights reserved.
 */


package com.topcoder.dde.catalog;

import java.io.Serializable;


/**
 * An object that represents a usage example for a component. Instances of this
 * class can either be created by the component catalog to return information to
 * the client, or by the client to pass information to the component catalog. In
 * the former case, the instance will contain information about the example's
 * primary key in the database. In the latter case, the instance will have a
 * dummy id of -1.
 *
 * @version 1.0, 26 August 2002
 * @author  Albert Mao
 * @see     ComponentManager
 */
public class Example implements Serializable {


    private long id;
    private String description;
    private String url;


    Example(long id, String description, String url) {
        this(description, url);
        this.id = id;
    }

    /**
     * Constructs a new <code>Example</code> object.
     *
     * @param description a description of the usage example
     * @param url the URL the example can be accessed at
     * @throws IllegalArgumentException if <code>description</code> or
     * <code>url</code> are <code>null</code>
     */
    public Example(String description, String url) {
        if (description == null) {
            throw new IllegalArgumentException(
                    "Null specified for example description");
        }
        if (url == null) {
            throw new IllegalArgumentException(
                    "Null specified for example URL");
        }
        this.description = description;
        this.url = url;
        this.id = -1;
    }

    /**
     * Returns the primary key of this usage example.
     *
     * @return the primary key of this example, or -1 if this example was
     * constructed by the client (instead of returned by the component catalog)
     */
    public long getId() {
        return id;
    }

    /**
     * Returns a description of this usage example.
     *
     * @return a description of this example
     */
    public String getDescription() {
        return description;
    }

    /**
     * Sets the description of this usage example.
     *
     * @param description the new description
     * @throws IllegalArgumentException if <code>description</code> is
     * <code>null</code>
     */
    public void setDescription(String description) {
        if (description == null) {
            throw new IllegalArgumentException(
                    "Null specified for example description");
        }
        this.description = description;
    }

    /**
     * Returns the URL this usage example can be accessed at.
     *
     * @return the URL this example can be accessed at
     */
    public String getURL() {
        return url;
    }

    /**
     * Sets the URL this usage example can be accessed at.
     *
     * @param url the new URL
     * @throws IllegalArgumentException if <code>url</code> is
     * <code>null</code>
     */
    public void setURL(String url) {
        if (url == null) {
            throw new IllegalArgumentException(
                    "Null specified for example URL");
        }
        this.url = url;
    }

    /**
     * Compares the specified object with this example for equality. Two
     * examples are considered equal if they have the same description and URL.
     * The primary key is <em>not</em> tested for equality.
     *
     * @param object the object to be tested for equality
     * @return <code>true</code> if the specified object is equal to this
     * example; <code>false</code> otherwise
     */
    public boolean equals(Object object) {
        if (object == null || object.getClass() != getClass()) {
            return false;
        }
        Example other = (Example) object;
        return getDescription().equals(other.getDescription())
                && getURL().equals(other.getURL());
    }

    /**
     * Returns the hash code value for this technology. The hash code is
     * generated by performing a bitwise exclusive-or operation on the hash
     * codes of the <code>String</code> object containing the description and
     * the <code>URL</code> object containing this example's URL.
     *
     * @return the hash code value for this example
     */
    public int hashCode() {
        return getDescription().hashCode() ^ getURL().hashCode();
    }

    public String toString() {
        return "Example " + getId() + " - " + getDescription()
                + " (" + getURL() + ")";
    }


}
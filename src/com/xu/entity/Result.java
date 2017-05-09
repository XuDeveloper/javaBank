package com.xu.entity;

import java.io.Serializable;

public class Result implements Serializable {
	
	private static final long serialVersionUID = 1L;
	
	public static final int SUCCESS = 1;
	
	public static final int ERROR = 0;

    private int status;

    private Object response;

    public Object getResponse() {
        return response;
    }

    public void setResponse(Object response) {
        this.response = response;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

}

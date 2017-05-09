package com.xu.entity;

import java.io.Serializable;

public class Result implements Serializable {
	
	private static final long serialVersionUID = 1L;

    private String status;

    private Object response;

    public Object getResponse() {
        return response;
    }

    public void setResponse(Object response) {
        this.response = response;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

}

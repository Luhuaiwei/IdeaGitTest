package com.lhw.vo;

import java.io.Serializable;

public class BaseResult implements Serializable {
    private int status;  //200,404,500,403
    private String message; //错误信息或正确信息

    public static final int STATUS_SUCCESS = 200;
    public static final int STATUS_FAIL = 500;

    public static BaseResult success(String message){
        BaseResult baseResult = BaseResult.createBaseResult(STATUS_SUCCESS,message);
        System.out.println(baseResult.getMessage());
        return baseResult;
    }

    public static BaseResult fail(String message){
        BaseResult baseResult = BaseResult.createBaseResult(STATUS_FAIL,message);
        return  baseResult;
    }

    public static BaseResult createBaseResult(int status,String message){
        BaseResult baseResult = new BaseResult();
        baseResult.setStatus(status);
        baseResult.setMessage(message);
        return baseResult;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }
}

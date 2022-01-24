package com.Carbooking.exception;

public class PhoenNumberExistException extends Exception {

	@Override
	public String getMessage() {
		// TODO Auto-generated method stub
		return "phoneNumber is already Exist";
	}

}

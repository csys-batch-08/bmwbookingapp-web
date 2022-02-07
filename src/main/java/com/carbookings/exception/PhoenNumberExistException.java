package com.carbookings.exception;

public class PhoenNumberExistException extends Exception {

	
	private static final long serialVersionUID = 1L;

	@Override
	public String getMessage() {

		return "phoneNumber is already Exist";
	}

}

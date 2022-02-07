package com.carbookings.exception;

public class SearchNotFoundException extends Exception {

	
	private static final long serialVersionUID = 1L;

	@Override
	public String getMessage() {

		return "Search data is not found";
	}

}

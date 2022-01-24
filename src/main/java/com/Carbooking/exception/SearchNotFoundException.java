package com.Carbooking.exception;

public class SearchNotFoundException extends Exception {

	@Override
	public String getMessage() {
		// TODO Auto-generated method stub
		return "Search data is not found";
	}

}

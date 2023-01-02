package controller;

import vo.Country;

public class MainEx1 {
	public static void main(String[] args) {
		Country c = new Country();
		//System.out.println(c.countryId); // 0
		System.out.println(c.getCountryId()); //null
		//c.setCountryId(-10);

	}
}

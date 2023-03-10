package controller;

import java.util.ArrayList;

import dao.CustomerDao;
import vo.CustomerAddressCityCountry;

public class MainCustomerJoin {
	public static void main(String[] args) {
		CustomerDao customerDao = new CustomerDao();
		ArrayList<CustomerAddressCityCountry> list = customerDao.selectCustomerJoinList(0, 5);
		System.out.println("1page");
		for(CustomerAddressCityCountry cacc : list) {
			System.out.print(cacc.getCustomer().getFirstName());
			System.out.print("\t");
			System.out.print(cacc.getAddress().getAddress());
			System.out.print("\t");
			System.out.print(cacc.getCity().getCity());
			System.out.print("\t");
			System.out.print(cacc.getCountry().getCountry());
			System.out.println();
		}
		System.out.println("2page");
		ArrayList<CustomerAddressCityCountry> list2 = customerDao.selectCustomerJoinList(5, 5);
		for(CustomerAddressCityCountry cacc : list2) {
			System.out.print(cacc.getCustomer().getFirstName());
			System.out.print("\t");
			System.out.print(cacc.getAddress().getAddress());
			System.out.print("\t");
			System.out.print(cacc.getCity().getCity());
			System.out.print("\t");
			System.out.print(cacc.getCountry().getCountry());
			System.out.println();
		}
	}
}
package org.ndt.entity;


	public class Shipping implements java.io.Serializable
	{
	    private String name;
	    private String address1;
	    private String address2;
	    private String city;
	    private String state;
	    private String country;
	    private String postalCode;
	    private String email;
		public Shipping(String name, String address1, String address2,
				String city, String state, String country, String postalCode,
				String email) {
			super();
			this.name = name;
			this.address1 = address1;
			this.address2 = address2;
			this.city = city;
			this.state = state;
			this.country = country;
			this.postalCode = postalCode;
			this.email = email;
		}
		public Shipping() {
		}
		public String getName() {
			return name;
		}
		public void setName(String name) {
			this.name = name;
		}
		public String getAddress1() {
			return address1;
		}
		public void setAddress1(String address1) {
			this.address1 = address1;
		}
		public String getAddress2() {
			return address2;
		}
		public void setAddress2(String address2) {
			this.address2 = address2;
		}
		public String getCity() {
			return city;
		}
		public void setCity(String city) {
			this.city = city;
		}
		public String getState() {
			return state;
		}
		public void setState(String state) {
			this.state = state;
		}
		public String getCountry() {
			return country;
		}
		public void setCountry(String country) {
			this.country = country;
		}
		public String getPostalCode() {
			return postalCode;
		}
		public void setPostalCode(String postalCode) {
			this.postalCode = postalCode;
		}
		public String getEmail() {
			return email;
		}
		public void setEmail(String email) {
			this.email = email;
		}


}

package Dto;

public class SalesDTO {
	private String custno;
	private String custname;
	private String grade;
	private String sales;
	
	
	@Override
	public String toString() {
		return "SalesDTO [custno=" + custno + ", custname=" + custname + ", grade=" + grade + ", sales=" + sales + "]";
	}
	
	public String getCustno() {
		return custno;
	}
	public void setCustno(String custno) {
		this.custno = custno;
	}
	public String getCustname() {
		return custname;
	}
	public void setCustname(String custname) {
		this.custname = custname;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	public String getSales() {
		return sales;
	}
	public void setSales(String sales) {
		this.sales = sales;
	}
	
	
}

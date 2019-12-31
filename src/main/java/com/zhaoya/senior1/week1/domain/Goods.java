package com.zhaoya.senior1.week1.domain;

public class Goods {

	private Integer id;
	private String name;
	private String ename;
	private Integer bid;
	private Integer tid;
	private String size;
	private String price;
	private String num;
	private String tab;
	private String pic;
	
	private Brand brand;
	private Type type;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEname() {
		return ename;
	}
	public void setEname(String ename) {
		this.ename = ename;
	}
	public Integer getBid() {
		return bid;
	}
	public void setBid(Integer bid) {
		this.bid = bid;
	}
	public Integer getTid() {
		return tid;
	}
	public void setTid(Integer tid) {
		this.tid = tid;
	}
	public String getSize() {
		return size;
	}
	public void setSize(String size) {
		this.size = size;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getNum() {
		return num;
	}
	public void setNum(String num) {
		this.num = num;
	}
	public String getTab() {
		return tab;
	}
	public void setTab(String tab) {
		this.tab = tab;
	}
	public String getPic() {
		return pic;
	}
	public void setPic(String pic) {
		this.pic = pic;
	}
	public Brand getBrand() {
		return brand;
	}
	public void setBrand(Brand brand) {
		this.brand = brand;
	}
	public Type getType() {
		return type;
	}
	public void setType(Type type) {
		this.type = type;
	}
	public Goods() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Goods(Integer id, String name, String ename, Integer bid, Integer tid, String size, String price, String num,
			String tab, String pic, Brand brand, Type type) {
		super();
		this.id = id;
		this.name = name;
		this.ename = ename;
		this.bid = bid;
		this.tid = tid;
		this.size = size;
		this.price = price;
		this.num = num;
		this.tab = tab;
		this.pic = pic;
		this.brand = brand;
		this.type = type;
	}
	
	
}

package dao;

import java.util.ArrayList;

import bean.loaibean;
import bean.sachbean;

public class loaidao {
	public ArrayList<loaibean> getloai(){
		ArrayList<loaibean> ds=new ArrayList<loaibean>();
		ds.add(new loaibean("ML01","Loai1"));
		ds.add(new loaibean("ML02","Loai2"));
		ds.add(new loaibean("ML03","Loai3"));
	
		return ds;
	}
}

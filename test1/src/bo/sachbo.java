package bo;

import java.util.ArrayList;

import bean.sachbean;
import dao.sachdao;

public class sachbo {
	sachdao s1= new sachdao();
	ArrayList<sachbean> ds;
	ArrayList<sachbean> giohang;
	public ArrayList<sachbean> getsach(){
		ds=s1.getsach();
		return ds;
	}
//	public ArrayList<sachbean> addgiohang(String masach){
//		giohang=s1.getsach(masach);
//		return giohang;
//	}
	public ArrayList<sachbean> TimMa(String maloai){
		ArrayList<sachbean> tam=new ArrayList<sachbean>();
		for(sachbean s:ds) {
			if(s.getMasach().equalsIgnoreCase(maloai))
				tam.add(s);
		}
		return tam;
	}
	public ArrayList<sachbean> TimTen(String key){
		ArrayList<sachbean> tam=new ArrayList<sachbean>();
		for(sachbean s:ds) {
			if(s.getTensach().toLowerCase().contains(key.toLowerCase())
			 ||s.getTacgia().toLowerCase().contains(key.toLowerCase()))
				tam.add(s);
		}
		return tam;
	}
}

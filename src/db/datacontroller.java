package db;

import java.util.ArrayList;
import java.util.List;

public class datacontroller {
	private static datacontroller instance = new datacontroller();
	public static datacontroller getInstance() {
		return instance;
	}

	public void datachange(String str) { 
		String returns = "";
		String [] tmp = {"A","B","C","D","E","F","G","H"};
		List<String> list = new ArrayList<>();
		int i=0;
		String[] strArray = str.split("");
		for(String s : strArray) {
			if(i==0) {
				if(s.equals("1")){s="FM";}
				else{s="ME";}
			}
			else if(i==1) {
				if(s.equals("1")){s="10";}
				else if(s.equals("2")){s="20";}
				else if(s.equals("3")){s="30";}
				else{s="40";}
			}
			else{
				s=tmp[i-2]+s;
			}	
			list.add(s);
			i++;
		}
		
		
		List<String> list1 = new ArrayList<>();
		List<String> tmp1 = new ArrayList<>();

		 i=10; 
		Boolean sig=true;
		ConnectDB connectDB = ConnectDB.getInstance();
		list1.addAll(connectDB.SelectDataDup());
		if(!list1.isEmpty()){
			for (String obj : list1) {
				tmp1.add(obj);
				 i++;
				//HashMapObject = new HashMap<String, Object>();
				if(i%10==0)	{
					if(list.containsAll(tmp1)) {
						sig=false;
						System.out.println("same data");
						break;
					}
					tmp1.clear();
				}
			   
			}
			if(sig) {
				returns= connectDB.InsertData(list);
			}
		}
		
	}


	public void select(List<String> str) { 
		String returns = "";
		List<String> list = new ArrayList<>();
		List<String> tmp = new ArrayList<>();

		int i=2; 
		Boolean sig=true;
		ConnectDB connectDB = ConnectDB.getInstance();
		list.addAll(connectDB.SelectDup());
		if(!list.isEmpty()){
			for (String obj : list) {
				tmp.add(obj);
				//HashMapObject = new HashMap<String, Object>();
				if(i%2==0)	{
					if(str.containsAll(tmp)) {
						sig=false;
						break;
					}
					tmp.clear();
				}
			    i++;
			}
			if(sig) {
				connectDB.InsertInfo(str);
			}
		}
	}
}

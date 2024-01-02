package com.reservation;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;





public class reservationDBUtil {
	
	 private static Connection con =null;
	 private static Statement stmt=null;
	 //resultset danne araay wage ekak display karaddi
	
	public static  boolean insertre(String Name,String Contactnumber,String Servicetype,String date,String Vehiclenumber,String Vehicletype ,String Payment_type,String NIC) {
	
		boolean success =false;
		
		/*//create db connection 
		String url="jdbc:mysql://localhost:3306/fuel_and_service";
		String user ="root";
		String pass="1112";*/
		
		try {
			con=Dbconnect.getConnection();
			stmt=con.createStatement();
			/*Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,user,pass);
			Statement stmt =con.createStatement();*/
			String sql ="insert into reservation values (0,'"+Name+"','"+Contactnumber+"','"+Servicetype+"','"+date+"','"+Vehiclenumber+"','"+Vehicletype+"','"+Payment_type+"','"+NIC+"')";
			int rs = stmt.executeUpdate(sql);
			
			if(rs>0) {
				success= true;
			}else {
				success=false;
			}
			
			
			}
		
		catch(Exception e) {
			  e.printStackTrace();
			
			
		}
		
		return success;
	}

	
	//Display
	
	public static List<reservation> statuscheck(String Vnumber,String NIC ){
ArrayList<reservation> reservation = new ArrayList<>();
		
		try {
			
			con=Dbconnect.getConnection();
			stmt=con.createStatement();
			String sql = "select * from reservation where Vehiclenumber ='"+Vnumber+"' and NIC='"+NIC+"'" ;
			ResultSet rs;
			rs = stmt.executeQuery(sql);
			
			while (rs.next()) {
				int id = rs.getInt(1);
				String Name = rs.getString(2);
				String cnum = rs.getString(3);
				String servicetype = rs.getString(4);
				Date date = rs.getDate(5);
				String vnum = rs.getString(6);
				String vehicletype = rs.getString(7);
				String ptype = rs.getString(8);
				String nic = rs.getString(9);
				
				reservation cus = new reservation(id,Name,cnum,servicetype,date,vnum,vehicletype,ptype,nic);
				reservation.add(cus);
			}
			
		} catch (Exception e) {
			
		}
		
		return reservation;
		
	}
	
	//Update 
	
	
public static boolean updatereservation(String id, String name, String phone, String servicetype, String date, String vehiclenum,String vtype,String pay,String NIC) {
    	boolean isSuccess=false;
    	int mk=Integer.parseInt(id);
    	try {
    		
    		con = Dbconnect.getConnection();
    		stmt = con.createStatement();
    		String sql = "update reservation set Name='"+name+"',Contactnumber='"+phone+"',Servicetype='"+servicetype+"',date='"+date+"',Vehiclenumber='"+vehiclenum+"',Vhicletype='"+vtype+"',Payment_type='"+pay+"',NIC='"+NIC+"'"
    				+ "where RID='"+mk+"'";
    		int rs = stmt.executeUpdate(sql);
    		
    		if(rs > 0) {
    			isSuccess = true;
    		}
    		else {
    			isSuccess = false;
    		}
    		
    	}
    	catch(Exception e) {
    		e.printStackTrace();
    	}
    	
    	return isSuccess;
    }


//date retreve

public static List<reservation> getreservationDetails(String id){
	int convert=Integer.parseInt(id);
	
	ArrayList<reservation>Details=new ArrayList<>();
	
	
	try {
		
		 con=Dbconnect.getConnection();
		 stmt=con.createStatement();
		 String sql="select * from reservation where RID='"+convert+"'";
		 ResultSet rs=stmt.executeQuery(sql);
		 
		 while(rs.next()) {
			 
			    int id1 = rs.getInt(1);
				String Name = rs.getString(2);
				String cnum = rs.getString(3);
				String servicetype = rs.getString(4);
				Date date = rs.getDate(5);
				String vnum = rs.getString(6);
				String vehicletype = rs.getString(7);
				String ptype = rs.getString(8);
				String nic = rs.getString(9);
				
				reservation reser=new reservation(id1, Name, cnum, servicetype, date, vnum, vehicletype, ptype, nic);
				Details.add(reser);
				
		 }
		
		
		
	}catch(Exception e) {
		
		
		e.printStackTrace();
		
		
	}
	
	return Details;
}


//Delete

public static boolean deletereservation(String id) {
	boolean isSuccess = false;
	int convId = Integer.parseInt(id);
	
	try {
		
		con = Dbconnect.getConnection();
		stmt = con.createStatement();
		String sql = "delete from reservation where RID='"+convId+"'";
		int r = stmt.executeUpdate(sql);
		
		if (r > 0) {
			isSuccess = true;
		}
		else {
			isSuccess = false;
		}
		
	}
	catch (Exception e) {
		e.printStackTrace();
	}
	
	return isSuccess;
}



//validation 


public static boolean validate(String Vehiclenumber , String NIC) {
	boolean isSuccess = false ;
	try {
		con = Dbconnect.getConnection();
		stmt = con.createStatement();
		String sql = "select * from reservation where Vehiclenumber='"+Vehiclenumber+"' and NIC='"+NIC+"'";
		ResultSet   rs = stmt.executeQuery(sql);
		
		if (rs.next()) {
			isSuccess = true;
		} else {
			isSuccess = false;
		}
		
	} catch (Exception e) {
		e.printStackTrace();
	}
	
	return isSuccess;
}


public static  boolean insertfeed(String Name,String Email,String phone,String problem) {
	
	boolean success =false;
	
	
	
	try {
		con=Dbconnect.getConnection();
		stmt=con.createStatement();
		
		String sql ="insert into contactus values (0,'"+Name+"','"+Email+"','"+phone+"','"+problem+"')";
		int rs = stmt.executeUpdate(sql);
		
		if(rs>0) {
			success= true;
		}else {
			success=false;
		}
		
		
		}
	
	catch(Exception e) {
		  e.printStackTrace();
		
		
	}
	
	return success;
}
	
}









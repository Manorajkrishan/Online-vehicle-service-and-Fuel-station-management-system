package com.staff;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.staff.Dbconnect;



public class staffDBUtil {

	
	private static Connection con =null;
	 private static Statement stmt=null;
	 //insert
	public static  boolean insertfeed(String Name,String NIC,String number,String gender,String address,String position,String status) {
		
		boolean success =false;
		
		
		
		try {
			con=Dbconnect.getConnection();
			 stmt = con.createStatement();
			
			String sql ="insert into  staff_details values(0,'"+Name+"','"+NIC+"','"+number+"','"+gender+"','"+address+"','"+position+"','"+status+"')";
					
					
			int rs= stmt.executeUpdate(sql);
			
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
	
	public static List<staff> statuscheck(String NIC,String Name ){
		ArrayList<staff> staffdetail = new ArrayList<>();
				
				try {
					
					con=Dbconnect.getConnection();
					stmt=con.createStatement();
					String sql = "select * from staff_details where NIC ='"+NIC+"' and name='"+Name+"'" ;
					ResultSet rs;
					rs = stmt.executeQuery(sql);
					
					while (rs.next()) {
						int eid = rs.getInt(1);
						String name = rs.getString(2);
						String nic = rs.getString(3);
						String number = rs.getString(4);
						
						String gender = rs.getString(5);
						String address = rs.getString(6);
						String position = rs.getString(7);
						String status = rs.getString(8);
					
						
						staff cus = new staff(eid,name,nic,number,gender,address,position,status);
						staffdetail.add(cus);
					}
					}
				
				 catch (Exception e) {
					e.printStackTrace();
				}
				
				return staffdetail;
	}
	//validate
	
	public static boolean validate(String NIC , String Name) {
		boolean isSuccess = false ;
		try {
			con = Dbconnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from staff_details where NIC='"+NIC+"' and name='"+Name+"'";
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
	
	//Delete

		public static boolean deletestaff(String mid) {
			boolean isSuccess = false;
			int convId = Integer.parseInt(mid);
			//if (id != null && !id.equals("null")) {
			try {
				
				con = Dbconnect.getConnection();
				stmt = con.createStatement();
				String sql = "delete from staff_details where eid='"+convId+"'";
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
			//}else {
				// System.out.println("Error: Invalid 'id' parameter.");
				  //  isSuccess = false;
			//}
			return isSuccess;
		}
		    	

					
		public static boolean updatestaff(String id, String Name, String NIC, String number, String gender, String address,String position,String status) {
	    	boolean isSuccess=false;
	    	//int elm=Integer.parseInt(eid);
	    	try {
	    		
	    		con = Dbconnect.getConnection();
	    		stmt = con.createStatement();
	    		String sql = "update staff_details set name='"+Name+"',NIC='"+NIC+"',number='"+number+"',gender='"+gender+"',address='"+address+"',position='"+position+"',staff_detailscol='"+status+"'"
	    				+ "where eid='"+id+"'";
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

		public static List<staff>getstaffdetails(String id){
			int convert=Integer.parseInt(id);
			
			ArrayList<staff>Details=new ArrayList<>();
			
			
			try {
				
				 con=Dbconnect.getConnection();
				 stmt=con.createStatement();
				 String sql="select * from staff_details where eid='"+convert+"'";
				 ResultSet rs=stmt.executeQuery(sql);
				 
				 while(rs.next()) {
					 
					    int eid = rs.getInt(1);
						String Name = rs.getString(2);
						String nic = rs.getString(3);
						String number = rs.getString(4);
						String gender = rs.getString(5);
						String address = rs.getString(6);
						String position = rs.getString(7);
						String status = rs.getString(8);
						
						
						staff reser=new staff(eid, Name, nic, number, gender, address, position, status);
						Details.add(reser);
						
				 }
				
				
				
			}catch(Exception e) {
				
				
				e.printStackTrace();
				
				
			}
			
			return Details;
		}
	
	
}

package com.reservation;

import java.sql.Date;

public class reservation {
    private int RID;
    private String name;
    private String contactnumber;
    private String servicetype ;
    private Date date;
    private String vehiclenumber;
    private String vhicletype;
    private String payment_type;
    private String nic;
	
    public reservation(int RID, String name, String contactnumber, String servicetype, Date date, String vehiclenumber,
			String vhicletype, String payment_type, String nic) {
		
		this.RID = RID;
		this.name = name;
		this.contactnumber = contactnumber;
		this.servicetype = servicetype;
		this.date = date;
		this.vehiclenumber = vehiclenumber;
		this.vhicletype = vhicletype;
		this.payment_type = payment_type;
		this.nic = nic;
	}

	public int getRID() {
		return RID;
	}

	public String getname() {
		return name;
	}

	public String getcontactnumber() {
		return contactnumber;
	}

	public String getservicetype() {
		return servicetype;
	}

	public Date getdate() {
		return date;
	}

	public String getVehiclenumber() {
		return vehiclenumber;
	}

	public String getVhicletype() {
		return vhicletype;
	}

	public String getPayment_type() {
		return payment_type;
	}

	public String getnic() {
		return nic;
	}


	
}


    
    


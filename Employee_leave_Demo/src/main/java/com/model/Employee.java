package com.model;

/* this is Employee model class*/

public class Employee {
	/*Employee ID*/
    private int id; 
    
    /*Employee Name*/
	private String name;
	
	 /*Employee Email*/
    private String email;
    
    /*Employee phoneNo*/
    private String phone;
    
    /*Employee Leave Reason*/
    private String reason;
    
    /*Employee Leave starting Date*/
    private String sDate;
    
    /*Employee Leave ending Date*/
    private String eDate;
    
    /*Employee Leave status*/
    private String status;

    
    
    /*Employee class constructor*/
    
	public Employee(int id, String name, String email,String phone, String reason,String sDate,String eDate,String status) {
	
		this.id = id;
		
		this.name = name;
		
		this.email = email;
		
		this.phone = phone;
		
		this.reason = reason;
		
		this.sDate=sDate;
		
		this.eDate=eDate;
		
		this.status=status;
	}

	
		
		/*
		 * return employee status
		 */
		public String getStatus() {
			return status;
		}

		/*
		 * return employee phone
		 */
		public String getPhone() {
			return phone;
		}
		
		/*
		 * return employee leave starting date
		 */
	
		public String getsDate() {
			return sDate;
		}
	
		/*
		 * return employee leave ending date
		 */
		public String geteDate() {
			return eDate;
		}
		/*
		 * return employee id
		 */
	
		public int getId() {
				return id;
			}

		/*
		 * return employee name
		 */
		public String getName() {
			return name;
		}
		
		/*
		 * return employee email
		 */
		public String getEmail() {
			return email;
		}

		/*
		 * return employee leave reason
		 */
	
		public String getReason() {
			return reason;
		}

	

}

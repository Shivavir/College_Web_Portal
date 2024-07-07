package common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
public class Dbm {
  Connection con=null;
  String cmd="";
  boolean status=false;
  public Dbm() {
	  try {
		  	 Class.forName("com.mysql.jdbc.Driver");
			 con=DriverManager.getConnection("jdbc:mysql://localhost:3306/college_db","root","");
			 System.out.println("Connected");
			 
			 // con.close();
	  }
	  catch(Exception e) {
	    	System.err.println("Unable to connect from database server.");
	    	System.err.println(e);
	    	//e.printStackTrace();
     }
  }
  public boolean ddl(String cmd)
  {
	  try {
	     Statement stmt=con.createStatement();
	     stmt.execute(cmd);
	     status=true;
    } catch(Exception e) {
    	status=false;
    	System.err.println("Unable to execute ddl command");
    	System.err.println(e);
    	e.printStackTrace();
    }
	  return status;
  }
	  public boolean dml(String cmd)
	  {
		  try {
		     Statement stmt=con.createStatement();
		     stmt.executeUpdate(cmd);
		     status=true;
	    } catch(Exception e) {
	    	status=false;
	    	System.err.println("Unable to execute dml command");
	    	System.err.println(e);
	    	
	    }
		  return status;
	  }
	  public ResultSet dql(String cmd)
	  {
		  ResultSet rs;
		  try {
		     Statement stmt=con.createStatement();
		    rs=stmt.executeQuery(cmd);
	    } catch(Exception e) {
	    	rs=null;
	    	System.err.println("Unable to execute dql command");
	    	System.err.println(e);
	    }
		  return rs;
		 
}
}
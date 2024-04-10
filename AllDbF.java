package pojo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class AllDbF 
{

	public static Connection getConnection()
	{
		Connection con=null;
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			System.out.println("Driver loaded");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/emp","root","root");
			System.out.println("connection done");
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		
		return(con);
	}
	public static int save1(pojoC p)
	{
			
		int status =0;
		try
		{
			Connection con =AllDbF.getConnection();
			
			PreparedStatement ps=con.prepareStatement("insert into user905(id,name,passward,email,country) values (?,?,?,?,?)");
			
			ps.setString(1,p.getId());
			ps.setString(2,p.getName());
			ps.setString(3,p.getPassward());
			ps.setString(4,p.getEmail());
			ps.setString(5,p.getCountry());
			
			
			status=ps.executeUpdate();
			System.out.println("record inserted");
			con.close();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return status;
	}

	
	public static List<pojoC> getAllEmp()
	{
		List <pojoC> li=new ArrayList<pojoC>();
		try
		{
			Connection con=AllDbF.getConnection();
			PreparedStatement ps=con.prepareStatement("select * from user905");
			ResultSet rs=ps.executeQuery();
			
			while(rs.next())
			{
				pojoC p =new pojoC();
				
				p.setId(rs.getString(1));
				p.setName(rs.getString(2));
				p.setPassward(rs.getString(3));
				p.setEmail(rs.getString(4));
				p.setCountry(rs.getString(5));
				li.add(p);
				
			}			
			con.close();		
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return li;
	}
	
	public static int delete(pojoC p)
	{
		int stts=0;
		String id=p.getId();
		try
		{
			Connection con=AllDbF.getConnection();
			PreparedStatement ps=con.prepareStatement("delete from user905 where id="+id);
			stts=ps.executeUpdate();
			con.close();
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return stts;
		
	}
	
	public static pojoC getEmpById(String id)
	{
		
		pojoC p=new pojoC();
		
		try
		{
			Connection con =AllDbF.getConnection();
			PreparedStatement ps=con.prepareStatement("select * from user905 where id="+id);
			ResultSet rs=ps.executeQuery();
			if(rs.next())
			{
			p.setId(rs.getString(1));
			p.setName(rs.getString(2));
			p.setPassward( rs.getString(3));
			p.setEmail(rs.getString(4));
			p.setCountry(rs.getString(5));
			
			
			con.close();
			}
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return p;
	}

	public static int update(pojoC p)
	{
		String id=p.getId();
		
		int stts =0;
		try
		{
			Connection con =AllDbF.getConnection();
			PreparedStatement ps=con.prepareStatement("update user905 set  Name=?, Passward=?, Email=?, Country=? where ID=" +id);
			//ps.setString(1,p.getId());
			String name=p.getName();
			String passward=p.getPassward();
			String email=p.getEmail();
			String country=p.getCountry();		
					
			ps.setString(1,name);
			ps.setString(2,passward);
			ps.setString(3,email);
			ps.setString(4,country);
			
			
			stts=ps.executeUpdate();
			System.out.println("record update");
			con.close();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return stts;
	}

}

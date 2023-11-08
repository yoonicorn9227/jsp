<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>employees</title>
		<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
		<style>
			*{margin: 0; padding: 0; }
			div{width: 1400px; margin: 30px auto;}
			h1{text-align: center; margin-bottom: 20px; }
			table,th,td{border: 1px solid black; border-collapse: collapse; font-size: 16px;
			text-align: center;}
			th,td{width: 200px; height: 40px;}
		</style>
		<script>
			$(function(){
				
			});//제이쿼리 구문최신
		</script>
	</head>
	<body>
		<h1>직원정보</h1>
		<div>
		<table>
			<tr>
				<th>사원번호</th>
				<th>사원명</th>
				<th>월급</th>
				<th>연봉</th>
				<th>부서번호</th>
				<th>부서명</th>
				<th>입사일</th>
			</tr>
			<!-- 반복시작 -->
		<% 
			Connection conn= null;
			Statement stmt =null;
			ResultSet rs = null;
			
			int employee_id=0;
			String department_id;
			int salary;
			String y_salary;
			String emp_name,department_name;
			String hire_date;
			int i=0;
			
			try{
				Class.forName("oracle.jdbc.driver.OracleDriver");
				conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","ora_user","1111");				
				stmt = conn.createStatement();
				String query="select employee_id, emp_name, salary, to_char(salary*12+(salary*12*nvl(commission_pct,0)),'L999,999') as y_salary, nvl(to_char(a.department_id),'CEO') department_id,department_name,hire_date from employees a, departments b where a.department_id = b.department_id(+)";
				
				
				
				//String query = "select employee_id,emp_name,salary,to_char(salary*12+(salary*12*nvl(commission_pct,0)),'L999,999,999') as year_salary, nvl(to_char(a.department_id),'CEO') department_id,nvl(department_name,'CEO') department_name,hire_date from employees a,departments b where a.department_id = b.department_id(+)";
				
				
				rs=stmt.executeQuery(query);
				
				while(rs.next()){
					i++;
					employee_id=rs.getInt("employee_id");
					emp_name=rs.getString("emp_name");
					salary=rs.getInt("salary");
					y_salary=rs.getString("y_salary");
					department_id=rs.getString("department_id");
					department_name=rs.getString("department_name");
					hire_date=rs.getDate("hire_date")+"";
					%>
				<!-- 반복끝 -->
			<tr>
				<td><%=employee_id %></td>
				<td><%=emp_name %></td>
				<td><%=salary %></td>
				<td><%=y_salary %></td>
				<td><%=department_id %></td>
				<td><%=department_name %></td>
				<td><%=hire_date %></td>
			</tr>
			<!--시작 -->
		<% 
				}//while

			}catch(Exception e){
				e.printStackTrace();
			}finally{
				try{
					if(rs!=null) rs.close();
					if(stmt!=null) stmt.close();
					if(conn!=null) conn.close();
				}catch(Exception e2){e2.printStackTrace();}
			}//try catch
		%>
		<!--끝 -->
		</table>
		</div>
</html>
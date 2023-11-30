package com.java.www.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.www.dao.Stu_memberDao;
import com.java.www.dto.Stu_memberDto;

public class Ser_doMUpdate implements Service {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		String id = request.getParameter("id");
		String pw = request.getParameter("pw1"); //
		String name = request.getParameter("name");
		String p_num = request.getParameter("p_num");
		String phone = request.getParameter("phone"); //
		String email = request.getParameter("email"); //
		String gender  = request.getParameter("gender"); //
		String region  = request.getParameter("region"); //
		int result =0;
		System.out.println("Ser_doMUpdate id : " +id);
		System.out.println("Ser_doMUpdate pw : " +pw);
		System.out.println("Ser_doMUpdate name : " +name);
		System.out.println("Ser_doMUpdate p_num : " +p_num);
		System.out.println("Ser_doMUpdate phone : " +phone);
		System.out.println("Ser_doMUpdate email : " +email);
		System.out.println("Ser_doMUpdate gender : " +gender);
		System.out.println("Ser_doMUpdate region : " +region);
		
		Stu_memberDto smdto = new Stu_memberDto(id,pw,name,gender,p_num,phone,email,region);
		
		System.out.println("service smdto phone : "+smdto.getPhone());
		System.out.println("service smdto email : "+smdto.getEmail());
		//dao 접근
		Stu_memberDao smdao = new Stu_memberDao();
		
		//--패스워드비교해서 일치하면 업데이트 진행, 불일치 하면 업데이트 취소
		//회원정보 1개 가져오기
		Stu_memberDto chDto = smdao.Dao_MSelectOne(id);
		//입력된 pw와 기존 pw일치여부 확인
		
		
		result=smdao.Dao_MUpdate(smdto);
		
		
		//request추가
		System.out.println("회원정보 수정 Result : " + result);
		request.setAttribute("result", result);
		
	}//execute(Ser_doMUpdate)s

}//CLASS(회원정보 수정 저장)

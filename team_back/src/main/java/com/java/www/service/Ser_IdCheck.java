package com.java.www.service;

import com.java.www.dao.Stu_memberDao;
import com.java.www.dto.Stu_memberDto;

public class Ser_IdCheck {

	public String idCheck(String id) {
		String result = null;
		// dao접근
		Stu_memberDao smdao = new Stu_memberDao();
		Stu_memberDto smdto = smdao.dao_Idcheck(id);

		if (smdto == null)
			result = "사용가능";
		else
			result = "사용불가능";

		return result;
	}//execute(idCheck0
}//CLASS

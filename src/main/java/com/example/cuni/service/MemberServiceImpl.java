package com.example.cuni.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.cuni.dao.MemberDao;
import com.example.cuni.dto.Member;
import com.example.cuni.util.CUtil;

@Service
public class MemberServiceImpl implements MemberService {
	@Autowired
	private MemberDao memberDao;

	public Map<String, Object> join(Map<String, Object> param) {
		Map<String, Object> rs = new HashMap<>();
		
		String loginId = (String) param.get("loginId");
		
		Member member = memberDao.getMemberByLoginId(loginId);
		
		if (member != null) {
			rs.put("resultCode", "F-1");
			rs.put("msg", String.format("이미 사용중인 아이디입니다.", loginId));
			
			return rs;
		}
		
		memberDao.join(param);
		int id = CUtil.getAsInt(param.get("id"));
		
		rs.put("resultCode", "S-1");
		rs.put("msg", String.format("%d번 회원이 생성되었습니다.", id));
		
		return rs;
	}

	@Override
	public Member getMemberByLoginId(String loginId) {
		
		return memberDao.getMemberByLoginId(loginId);
	};

}

package com.biz;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.userDAO;
import com.vo.UserVo;

@Service
public class userBiz {
	
	@Autowired
	private userDAO userDao;
	
	public String join(UserVo vo) {
		return userDao.join(vo);
	}
	 public UserVo tryLogin(UserVo vo) {
			return userDao.tryLogin(vo);
		}
	 
	 public UserVo findId(UserVo vo) {
			return userDao.findId(vo);
		}

	public UserVo findPassword(UserVo vo) {
		return userDao.findPassword(vo);
		}

}

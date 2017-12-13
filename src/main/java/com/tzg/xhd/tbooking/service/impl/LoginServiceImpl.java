package com.tzg.xhd.tbooking.service.impl;

import com.tzg.xhd.tbooking.entity.Login;
import com.tzg.xhd.tbooking.mapper.LoginMapper;
import com.tzg.xhd.tbooking.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;

public class LoginServiceImpl implements LoginService {
    @Autowired
    LoginMapper loginMapper;

    @Override
    public void save(Login login) {
        loginMapper.save(login);
    }
}

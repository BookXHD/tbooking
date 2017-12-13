package com.tzg.xhd.tbooking.service;

import com.tzg.xhd.tbooking.entity.Login;
import org.springframework.stereotype.Service;

@Service
public interface LoginService {
    void save(Login login);
}

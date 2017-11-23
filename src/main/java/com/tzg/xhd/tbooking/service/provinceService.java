package com.tzg.xhd.tbooking.service;

import com.tzg.xhd.tbooking.entity.province;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface provinceService {
    List<province> getAllProvince();
}

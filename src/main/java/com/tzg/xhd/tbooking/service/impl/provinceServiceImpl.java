package com.tzg.xhd.tbooking.service.impl;

import com.tzg.xhd.tbooking.entity.province;
import com.tzg.xhd.tbooking.service.provinceService;
import com.tzg.xhd.tbooking.mapper.provinceMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;

@Service("provinceService")
@Transactional
public class provinceServiceImpl implements provinceService{
    @Autowired
    provinceMapper provinceMapper;

    @Override
    public List<province> getAllProvince() {
        return provinceMapper.getAllProvince();
    }
}

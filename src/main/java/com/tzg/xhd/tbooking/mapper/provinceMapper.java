package com.tzg.xhd.tbooking.mapper;

import org.springframework.stereotype.Repository;
import com.tzg.xhd.tbooking.entity.province;

import java.util.List;

@Repository
public interface provinceMapper {
    List<province> getAllProvince();
}

package com.test.seminar.mapper;

import com.test.seminar.entity.Presentation;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Component;

import java.math.BigInteger;
import java.util.List;

/**
 *
 * @author cxh
 * @date 2018/11/29
 *
 */
@Mapper
@Component
public interface PresentationMapper {

    List<Presentation> getPresentationBySeminarControlId(@Param("seminarControlId")BigInteger seminarControlId);
}

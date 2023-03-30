package com.example.demo.category.mapper;

import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Map;

@Mapper
public interface CategoryMapper {

    List<Map<String, Object>> selectCategoryById(List<String> categoryId);
    List<Map<String, Object>> selectCategoryByName(String categoryName);
}

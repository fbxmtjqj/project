package com.example.demo.category.service;

import com.example.demo.category.mapper.CategoryMapper;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
@RequiredArgsConstructor
public class CategoryService {

    private final CategoryMapper categoryMapper;

    public List<Map<String, Object>> getCategoryById(String categoryIds) {
        List<String> categoryList = List.of(categoryIds.split(","));
        List<Map<String, Object>> categoryData = categoryMapper.selectCategoryById(categoryList);
        categoryData.forEach(it -> {
            if (it.get("CATEGORY_CHILD_ID") == null) {
                return;
            }

            it.put("list", getCategoryById(it.get("CATEGORY_CHILD_ID").toString()));
        });
        return categoryData;
    }

    public List<Map<String, Object>> getCategoryByName(String categoryName) {
        List<Map<String, Object>> categoryData = categoryMapper.selectCategoryByName(categoryName);
        categoryData.forEach(it -> {
            if (it.get("CATEGORY_CHILD_ID") == null) {
                return;
            }

            it.put("list", getCategoryById(it.get("CATEGORY_CHILD_ID").toString()));
        });

        return categoryData;
    }
}

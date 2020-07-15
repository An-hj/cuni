package com.example.cuni.service;

import java.util.List;
import java.util.Map;

import com.example.cuni.dto.Article;
import com.example.cuni.dto.Board;

public interface ArticleService {

	List<Article> getArticles();

	Article getArticle(int id);

	Map<String, Object> delete(int id);

	List<Article> getArticles(String boardCode);

	Board getBoard(String boardCode);

}

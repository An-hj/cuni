package com.example.cuni.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.example.cuni.dto.Article;
import com.example.cuni.dto.Board;

@Mapper
public interface ArticleDao {

	List<Article> getArticles();

	Article getArticle(int id);

	void delete(int id);

	List<Article> getArticlesByBoardCode(String boardCode);

	Board getBoardByBoardCode(String boardCode);

}

package com.example.cuni.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.cuni.dto.Article;
import com.example.cuni.dto.Board;
import com.example.cuni.service.ArticleService;

@Controller
public class ArticleController {
	@Autowired
	private ArticleService articleService;

	@RequestMapping("article/list")
	public String showList(Model model, String boardCode) {
		List<Article> articles = articleService.getArticles(boardCode);
		Board board = articleService.getBoard(boardCode);
		
		model.addAttribute("board", board);
		model.addAttribute("articles", articles);
		
		return "article/list";
	}
	
	@RequestMapping("article/detail")
	public String showDetail(Model model, int id) {
		Article article = articleService.getArticle(id);
		
		model.addAttribute("article", article);
		
		return "article/detail";
	}
	
	@RequestMapping("article/delete")
	public String doDelete(Model model, int id) {
		Map<String, Object> rs = articleService.delete(id);
		
		String msg = (String) rs.get("msg");
		String redirectUrl = "/article/list";
		
		model.addAttribute("alertMsg", msg);
		model.addAttribute("locationReplace", redirectUrl);
		
		return "redirect";
	}
}

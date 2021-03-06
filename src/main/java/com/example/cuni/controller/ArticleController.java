package com.example.cuni.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
	
	@RequestMapping("article/write")
	public String showWrite(Model model, String boardCode) {
		Board board = articleService.getBoard(boardCode);
		
		model.addAttribute("board", board);
		
		return "article/write";
	}
	
	@RequestMapping("article/doWrite")
	public String doWrite(Model model, @RequestParam Map<String, Object> param) {
		Map<String, Object> rs = articleService.write(param);
		
		int boardId = Integer.parseInt((String) param.get("boardId"));
		Board board = articleService.getBoard(boardId);
		
		String msg = (String) rs.get("msg");
		String redirectUrl = "/article/list?boardCode=" + board.getCode();
		
		model.addAttribute("alertMsg", msg);
		model.addAttribute("locationReplace", redirectUrl);
		
		return "redirect";
	}
	
	@RequestMapping("article/modify")
	public String showModify(Model model, int id, HttpServletRequest request) {
		
		Article article = articleService.getArticle(id);
		
		model.addAttribute("article", article);
		
		return "article/modify";
	}
	
	@RequestMapping("article/doModify")
	public String doModify(Model model, @RequestParam Map<String, Object> param) {
		
		Map<String, Object> rs = articleService.modify(param);
		
		int id = Integer.parseInt((String) param.get("id"));
		
		String msg = (String) rs.get("msg");
		String redirectUrl = "/article/detail?id=" + id;
		
		model.addAttribute("alertMsg", msg);
		model.addAttribute("locationReplace", redirectUrl);
		
		return "redirect";
	}
}

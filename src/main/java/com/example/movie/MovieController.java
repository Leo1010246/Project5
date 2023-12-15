package com.example.movie;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

@Controller
@RequestMapping("/movie")
public class MovieController {

    @Autowired
    MovieServiceImpl movieService;

    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public String movielist(Model model) {
        model.addAttribute("list", movieService.getMovieList());
        return "list";
    }

    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public String addPost() {
        return "addpostform";
    }

    @RequestMapping(value = "addok", method = RequestMethod.POST)
    public String addPostOk(HttpServletRequest request) {

        if(movieService.insertMovie(request) == 0) {
            System.out.println("데이터 추가 실패");
        }
        else {
            System.out.println("데이터 추가 성공!!!");
        }
        return "redirect:list";
    }

    @RequestMapping(value = "/editform/{seq}", method = RequestMethod.GET)
    public String editPost(@PathVariable("seq") int seq, Model model) {
        MovieVO movieVO = movieService.getMovie(seq);
        model.addAttribute("movieVO", movieVO);
        return "editform";
    }

    @RequestMapping(value = "/editok/{seq}", method = RequestMethod.POST)
    public String editPostOk(@PathVariable("seq") int seq, HttpServletRequest request) {
        if(movieService.updateMovie(request, seq) == 0) {
            System.out.println("데이터 수정 실패");
        }
        else {
            System.out.println("데이터 수정 성공!!!");
        }
        return "redirect:list";
    }

    @RequestMapping(value = "/deleteok/{seq}", method = RequestMethod.GET)
    public String deletePostOk(@PathVariable("seq") int seq) {
        if(movieService.deleteMovie(seq) == 0) {
            System.out.println("데이터 삭제 실패");
        }
        else {
            System.out.println("데이터 삭제 성공!!!");
        }
        return "redirect:../list";
    }

    @RequestMapping(value = "/view/{seq}", method = RequestMethod.GET)
    public String viewPost(@PathVariable("seq") int seq, Model model) {
        MovieVO movieVO = movieService.getMovie(seq);
        model.addAttribute("u", movieVO);
        return "view";
    }

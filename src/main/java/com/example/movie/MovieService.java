package com.example.movie;

import com.example.movie.MovieVO;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

public interface MovieService {
    public int insertMovie(HttpServletRequest request);
    public int deleteMovie(int seq);
    public int updateMovie(HttpServletRequest request, int seq);

    public MovieVO getMovie(int seq);
    public List<MovieVO> getMovieList();
}

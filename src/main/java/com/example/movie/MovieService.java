package com.example.movie;

import com.example.movie.MovieVO;

import java.util.List;

public interface MovieService {
    public int insertMovie(MovieVO vo);
    public int deleteMovie(int seq);
    public int updateMovie(MovieVO vo);
    public MovieVO getMovie(int seq);
    public List<MovieVO> getMovieList();
}

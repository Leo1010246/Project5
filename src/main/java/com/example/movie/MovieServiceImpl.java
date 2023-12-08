package com.example.movie;

import com.example.movie.MovieDAO;
import com.example.movie.MovieService;
import com.example.movie.MovieVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MovieServiceImpl implements MovieService {

    @Autowired
    MovieDAO movieDAO;

    @Override
    public int insertMovie(MovieVO vo) {
        return movieDAO.insertMovie(vo);
    }

    @Override
    public int deleteMovie(int seq) {
        return movieDAO.deleteMovie(seq);
    }

    @Override
    public int updateMovie(MovieVO vo) {
        return movieDAO.updateMovie(vo);
    }

    @Override
    public MovieVO getMovie(int seq) {
        return movieDAO.getMovie(seq);
    }

    @Override
    public List<MovieVO> getMovieList() {
        return movieDAO.getMovieList();
    }
}

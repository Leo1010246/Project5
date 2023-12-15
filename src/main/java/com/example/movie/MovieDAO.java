package com.example.movie;


import com.example.movie.MovieVO;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class MovieDAO {

    @Autowired
    SqlSession sqlSession;

    public int insertMovie(MovieVO vo) {
        int result = sqlSession.insert("Movie.insertMovie", vo);
        return result;
    }

    public String getPoster(int seq) {
        String result = sqlSession.selectOne("Movie.getPoster", seq);
        return result;
    }

    // 글 삭제
    public int deleteMovie(int seq) {
        int result = sqlSession.delete("Movie.deleteMovie", seq);
        return result;
    }


    public int updateMovie(MovieVO vo) {
        int result = sqlSession.update("Movie.updateMovie", vo);
        return result;
    }

    public MovieVO getMovie(int seq) {
        MovieVO one = sqlSession.selectOne("Movie.getMovie", seq);
        return one;
    }

    public List<MovieVO> getMovieList() {
        List<MovieVO> list = sqlSession.selectList("Movie.getMovieList");
        return list;
    }

}

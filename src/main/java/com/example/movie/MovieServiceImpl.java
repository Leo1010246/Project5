package com.example.movie;

import com.example.util.FileUpload;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.List;

@Service
public class MovieServiceImpl implements MovieService {

    @Autowired
    MovieDAO movieDAO;

    @Override
    public int insertMovie(HttpServletRequest request) {
        MovieVO vo = FileUpload.UploadImg(request, null);
        return movieDAO.insertMovie(vo);
    }

    @Override
    public int deleteMovie(int seq) {
        return movieDAO.deleteMovie(seq);
    }

    @Override
    public int updateMovie(HttpServletRequest request, int seq) {
        MovieVO vo = FileUpload.UploadImg(request, movieDAO.getPoster(seq));
        vo.setSeq(seq);
        vo.setPoster(vo.getPoster());
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

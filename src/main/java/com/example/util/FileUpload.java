package com.example.util;
import com.example.movie.MovieVO;
import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class FileUpload {
    public static MovieVO UploadImg (HttpServletRequest request, String oldfilename) {
        String filename = "";
        int sizeLimit = 15 * 1024 * 1024;

        // 실제로 서버에 저장되는 path를 upload로 정한다.
        String realPath = request.getServletContext().getRealPath("upload"); //upload 폴더의 패스 찾아옴. 디스패처서블릿에 연결한 그거.

        // 만약 저장될 경로에 upload 폴더가 존재하지 않으면 생성
        File dir = new File(realPath);
        if (!dir.exists()) dir.mkdirs();

        MovieVO one = null;
        MultipartRequest multipartRequest = null;
        try {
            // 파일 업로드 처리 과정
            multipartRequest = new MultipartRequest(request, realPath, sizeLimit, "utf-8", new DefaultFileRenamePolicy());
            filename = multipartRequest.getFilesystemName("poster");
            one = new MovieVO();
            String seq = multipartRequest.getParameter("seq");
            if (seq != null && !seq.equals(""))
                one.setSeq(Integer.parseInt(seq));
            one.setTitle(multipartRequest.getParameter("title"));
            one.setGenre(multipartRequest.getParameter("genre"));
            one.setReldate(multipartRequest.getParameter("reldate"));
            one.setDirector(multipartRequest.getParameter("director"));
            one.setActors(multipartRequest.getParameter("actors"));
            one.setStory(multipartRequest.getParameter("story"));
            one.setRating(Integer.parseInt(multipartRequest.getParameter("rating")));

            if (seq != null && !seq.equals("")) {
                if(filename != null && oldfilename != null)
                    FileUpload.deleteFile(request, oldfilename);
                else if(filename == null && oldfilename != null) // 예전 파일을 그대로 사용
                    filename = oldfilename;
            }
        one.setPoster(filename);
        } catch (IOException e) {
            e.printStackTrace();
        }
        return one;
    }

    public static void deleteFile (HttpServletRequest request, String filename) {
        String filePath = request.getServletContext().getRealPath("upload");

        File f = new File(filePath + "/" + filename);
        if (f.exists()) f.delete();
    }
}

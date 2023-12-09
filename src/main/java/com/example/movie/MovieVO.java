package com.example.movie;

import java.util.Date;

public class MovieVO {
    private int seq;
    private String poster;
    private String title;
    private String reldate;
    private String genre;
    private String director;
    private String actors;
    private String story;
    private int rating;
    private Date regdate;

    public int getSeq() {
        return seq;
    }
    public void setSeq(int seq) { this.seq = seq; }

    public String getPoster() {
        return poster;
    }
    public void setPoster(String poster) {
        this.poster = poster;
    }

    public String getTitle() {
        return title;
    }
    public void setTitle(String title) {
        this.title = title;
    }

    public String getReldate() { return reldate; }
    public void setReldate(String reldate) { this.reldate = reldate; }

    public String getGenre() {
        return genre;
    }
    public void setGenre(String genre) {
        this.genre = genre;
    }

    public String getDirector() {
        return director;
    }
    public void setDirector(String director) {
        this.director = director;
    }

    public String getActors() {
        return actors;
    }
    public void setActors(String actors) {
        this.actors = actors;
    }

    public String getStory() {
        return story;
    }
    public void setStory(String story) {
        this.story = story;
    }

    public int getRating() {
        return rating;
    }
    public void setRating(int rating) {
        this.rating = rating;
    }

    public Date getRegdate() {
        return regdate;
    }
    public void setRegdate(Date regdate) {
        this.regdate = regdate;
    }
}

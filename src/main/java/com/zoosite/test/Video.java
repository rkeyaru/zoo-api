package com.zoosite.test;

import java.io.Serializable;

public class Video implements Serializable{
	int video_id;
	String anime_name;
	int season;
	String type;
	int active;
	String video_path;
	public int getVideo_id() {
		return video_id;
	}
	public void setVideo_id(int video_id) {
		this.video_id = video_id;
	}
	public String getAnime_name() {
		return anime_name;
	}
	public void setAnime_name(String anime_name) {
		this.anime_name = anime_name;
	}
	public int getSeason() {
		return season;
	}
	public void setSeason(int season) {
		this.season = season;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public int getActive() {
		return active;
	}
	public void setActive(int active) {
		this.active = active;
	}
	public String getVideo_path() {
		return video_path;
	}
	public void setVideo_path(String video_path) {
		this.video_path = video_path;
	}
			
}
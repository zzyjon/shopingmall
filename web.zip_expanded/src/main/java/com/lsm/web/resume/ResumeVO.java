package com.lsm.web.resume;

import java.nio.file.Path;

import com.lsm.web.common.FileVO;

public class ResumeVO extends FileVO {

	private int userNo;
	private String userImg;
	private String userName;
	private int userSal;
	private String userAddress;
	private String userFavorite;
	private String userHobby;
	private String userIntro;
	
	public int getUserNo() {
		return userNo;
	}
	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}
	public String getUserImg() {
		return userImg;
	}
	public void setUserImg(String userImg) {
		this.userImg = userImg;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public int getUserSal() {
		return userSal;
	}
	public void setUserSal(int userSal) {
		this.userSal = userSal;
	}
	public String getUserAddress() {
		return userAddress;
	}
	public void setUserAddress(String userAddress) {
		this.userAddress = userAddress;
	}
	public String getUserFavorite() {
		return userFavorite;
	}
	public void setUserFavorite(String userFavorite) {
		this.userFavorite = userFavorite;
	}
	public String getUserHobby() {
		return userHobby;
	}
	public void setUserHobby(String userHobby) {
		this.userHobby = userHobby;
	}
	public String getUserIntro() {
		return userIntro;
	}
	public void setUserIntro(String userIntro) {
		this.userIntro = userIntro;
	}
	
}

package com.lsm.web.members;

import com.lsm.web.common.Pagenation;

public class MemberVO extends Pagenation {

	private int mNo;
	private String mId;
	private String mName;
	private String mBirth;
	private String mEmail;
	private String mPassword;
	private String mPost;
	private String mAddress1;
	private String mAddress2;
	private String regDate;
	
	public int getmNo() {
		return mNo;
	}
	public void setmNo(int mNo) {
		this.mNo = mNo;
	}
	public String getmId() {
		return mId;
	}
	public void setmId(String mId) {
		this.mId = mId;
	}
	public String getmName() {
		return mName;
	}
	public void setmName(String mName) {
		this.mName = mName;
	}
	public String getmBirth() {
		return mBirth;
	}
	public void setmBirth(String mBirth) {
		this.mBirth = mBirth;
	}
	public String getmEmail() {
		return mEmail;
	}
	public void setmEmail(String mEmail) {
		this.mEmail = mEmail;
	}
	public String getmPassword() {
		return mPassword;
	}
	public void setmPassword(String mPassword) {
		this.mPassword = mPassword;
	}
	public String getmPost() {
		return mPost;
	}
	public void setmPost(String mPost) {
		this.mPost = mPost;
	}
	public String getmAddress1() {
		return mAddress1;
	}
	public void setmAddress1(String mAddress1) {
		this.mAddress1 = mAddress1;
	}
	public String getmAddress2() {
		return mAddress2;
	}
	public void setmAddress2(String mAddress2) {
		this.mAddress2 = mAddress2;
	}
	public String getRegDate() {
		return regDate;
	}
	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}
	
	
}

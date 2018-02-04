package com.lsm.web.moosinsa;

import com.lsm.web.common.Pagenation;

public class ProductVO extends Pagenation{

	private int pNo;

	//  상품코드
    private String pCode;

    //  가격
    private Integer pPrice;

    //  상품명
    private String pName;

    //  브랜드
    private String pBrand;

    private Integer pStock;

    private Integer pBuyCount;

    private String pColor;

    private String pSize;

    private String pMaterial;

    private String pMaker;

    private String pDesc;

    private String pCouponUseCheck;

    private String pPublishCheck;
    
    public int getpNo() {
		return pNo;
	}

	public void setpNo(int pNo) {
		this.pNo = pNo;
	}

	public String getpCode() {
		return pCode;
	}

	public void setpCode(String pCode) {
		this.pCode = pCode;
	}

	public Integer getpPrice() {
		return pPrice;
	}

	public void setpPrice(Integer pPrice) {
		this.pPrice = pPrice;
	}

	public String getpName() {
		return pName;
	}

	public void setpName(String pName) {
		this.pName = pName;
	}

	public String getpBrand() {
		return pBrand;
	}

	public void setpBrand(String pBrand) {
		this.pBrand = pBrand;
	}

	public Integer getpStock() {
		return pStock;
	}

	public void setpStock(Integer pStock) {
		this.pStock = pStock;
	}

	public Integer getpBuyCount() {
		return pBuyCount;
	}

	public void setpBuyCount(Integer pBuyCount) {
		this.pBuyCount = pBuyCount;
	}

	public String getpColor() {
		return pColor;
	}

	public void setpColor(String pColor) {
		this.pColor = pColor;
	}

	public String getpSize() {
		return pSize;
	}

	public void setpSize(String pSize) {
		this.pSize = pSize;
	}

	public String getpMaterial() {
		return pMaterial;
	}

	public void setpMaterial(String pMaterial) {
		this.pMaterial = pMaterial;
	}

	public String getpMaker() {
		return pMaker;
	}

	public void setpMaker(String pMaker) {
		this.pMaker = pMaker;
	}

	public String getpDesc() {
		return pDesc;
	}

	public void setpDesc(String pDesc) {
		this.pDesc = pDesc;
	}

	public String getpCouponUseCheck() {
		return pCouponUseCheck;
	}

	public void setpCouponUseCheck(String pCouponUseCheck) {
		this.pCouponUseCheck = pCouponUseCheck;
	}

	public String getpPublishCheck() {
		return pPublishCheck;
	}

	public void setpPublishCheck(String pPublishCheck) {
		this.pPublishCheck = pPublishCheck;
	}
    
    
}

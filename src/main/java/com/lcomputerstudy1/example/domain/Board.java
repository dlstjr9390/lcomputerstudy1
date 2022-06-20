package com.lcomputerstudy1.example.domain;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public class Board {
	private int bId;
	private int b_rownum;
	private String bTitle;
	private String bContent;
	private String bWriter;
	private String bDatetime;
	private int bView;
	private int bGroup;
	private int bOrder;
	private int	bDepth;
	private int cId;
	private String cTitle;
	private String cContent;
	private String cWriter;
	private String cDatetime;
	private int cGroup;
	private int cOrder;
	private int cDepth;
	private int cIsedit;
	private int bEditid;
	private List<BoardFile> files;
	
	public List<BoardFile> getFiles() {
		return files;
	}

	public void setFiles(List<BoardFile> files) {
		this.files = files;
	}

	public int getBeditid() {
		return bEditid;
	}

	public void setBeditid(int bEditid) {
		this.bEditid = bEditid;
	}

	private List<MultipartFile> imageFile;
	
	private BoardFile file;
	
	public BoardFile getFile() {
		return file;
	}

	public void setFile(BoardFile file) {
		this.file = file;
	}

	public int getB_rownum() {
		return b_rownum;
	}
	
	public void setB_rownum(int b_rownum) {
		this.b_rownum = b_rownum; 
	}
	
	public int getbId() {
		return bId;
	}
	
	public void setbId(int bId) {
		this.bId = bId;
	}
	
	public String getbTitle() {
		return bTitle;
	}
	
	public void setbTitle(String bTitle) {
		this.bTitle = bTitle;
	}
	
	public String getbContent() {
		return bContent;
	}
	
	public void setbContent(String bContent) {
		this.bContent = bContent;
	}
	
	public String getbWriter() {
		return bWriter;
	}
	
	public void setbWriter(String bWriter) {
		this.bWriter = bWriter;
	}
	
	public String getbDatetime() {
		return bDatetime;
	}
	
	public void setbDatetime(String bDatetime) {
		this.bDatetime = bDatetime;
	}
	
	public int getbView() {
		return bView;
	}
	
	public void setbView(int bView) {
		this.bView = bView;
	}
	public int getbGroup() {
		return bGroup;
	}
	
	public void setbGroup(int bGroup) {
		this.bGroup = bGroup;
	}
	
	public int getbOrder() {
		return bOrder;
	}
	
	public void setbOrder(int bOrder) {
		this.bOrder = bOrder;
	}
	
	public int getbDepth() {
		return bDepth;
	}
	
	public void setbDepth(int bDepth) {
		this.bDepth = bDepth;
	}
	
	public int getcId() {
		return cId;
	}
	
	public void setcId(int cId) {
		this.cId = cId;
	}
	
	public String getcTitle() {
		return cTitle;
	}
	
	public void setcTitle(String cTitle) {
		this.cTitle = cTitle;
	}
	
	public String getcContent() {
		return cContent;
	}
	
	public void setcContent(String cContent) {
		this.cContent = cContent;
	}
	
	public String getcWriter() {
		return cWriter;
	}
	
	public void setcWriter(String cWriter) {
		this.cWriter = cWriter;
	}
	
	public String getcDatetime() {
		return cDatetime;
	}
	
	public void setcDatetime(String cDatetime) {
		this.cDatetime = cDatetime;
	}
	
	public int getcGroup() {
		return cGroup;
	}
	
	public void setcGroup(int cGroup) {
		this.cGroup = cGroup;
	}
	
	public int getcOrder() {
		return cOrder;
	}
	
	public void setcOrder(int cOrder) {
		this.cOrder = cOrder;
	}
	
	public int getcDepth() {
		return cDepth;
	}
	
	public void setcDepth(int cDepth) {
		this.cDepth = cDepth;
	}
	
	public int getcIsedit() {
		return cIsedit;
	}
	
	public void setcIsedit(int cIsedit) {
		this.cIsedit = cIsedit;
	}

	public List<MultipartFile> getImageFile() {
		return imageFile;
	}

	public void setImageFile(List<MultipartFile> imageFile) {
		this.imageFile = imageFile;
	}

}

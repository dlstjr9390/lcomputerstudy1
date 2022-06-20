package com.lcomputerstudy1.example.domain;

public class BoardFile {
	private String filename;
	private String convertname;
	private long fsize;
	private int b_idx;
	private int fEditid;
	
	public int getfEditId() {
		return fEditid;
	}
	public void setfEditid(int fEditid) {
		this.fEditid = fEditid;
	}
	public int getB_idx() {
		return b_idx;
	}
	public void setB_idx(int b_idx) {
		this.b_idx = b_idx;
	}
	public String getFilename() {
		return filename;
	}
	public void setFilename(String filename) {
		this.filename = filename;
	}
	public String getConvertname() {
		return convertname;
	}
	public void setConvertname(String convertname) {
		this.convertname = convertname;
	}
	public long getFsize() {
		return fsize;
	}
	public void setFsize(long fsize) {
		this.fsize = fsize;
	}
	
	
}

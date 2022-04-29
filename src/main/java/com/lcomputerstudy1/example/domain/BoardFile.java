package com.lcomputerstudy1.example.domain;

import org.springframework.web.multipart.MultipartFile;

public class BoardFile {
	private String filename;
	private String convertname;
	private long fsize;
	private MultipartFile file;
	
	public MultipartFile getFile() {
		return file;
	}
	public void setFile(MultipartFile file) {
		this.file = file;
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

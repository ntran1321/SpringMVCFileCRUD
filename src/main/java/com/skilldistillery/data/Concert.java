package com.skilldistillery.data;

public class Concert {
	private String performer;
	private String venue;
	private String date;
	private String imageUrl;
	
	public Concert(String performer, String venue, String date, String imageUrl) {
		super();
		this.performer = performer;
		this.venue = venue;
		this.date = date;
		this.imageUrl = imageUrl;
	}
	
	public Concert(String performer, String venue, String date) {
		super();
		this.performer = performer;
		this.venue = venue;
		this.date = date;
	}

	public Concert() {
		// TODO Auto-generated constructor stub
	}

	public String getPerformer() {
		return performer;
	}

	public void setPerformer(String performer) {
		this.performer = performer;
	}

	public String getVenue() {
		return venue;
	}

	public void setVenue(String venue) {
		this.venue = venue;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getImageUrl() {
		return imageUrl;
	}

	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}

	@Override
	public String toString() {
		return "Concert [performer=" + performer + ", venue=" + venue + ", date=" + date + "]";
	}
	
	
	
}

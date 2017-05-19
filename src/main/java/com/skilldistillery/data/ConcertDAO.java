package com.skilldistillery.data;

import java.util.List;

public interface ConcertDAO {
	public Concert getConcertByPerformer(String performer);
	public void addConcertToList(Concert concert);
	List<Concert> getAllConcerts();
}

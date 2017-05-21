package com.skilldistillery.data;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.context.WebApplicationContext;

public class ConcertDaoListImpl implements ConcertDAO {
	
	private static final String FILE_NAME="/WEB-INF/concerts.csv";
	private List<Concert> concerts = new ArrayList<>();
	private Concert c;
	
	@Autowired 
	private WebApplicationContext wac;
	
	@PostConstruct
	public void init() {
		InputStream is = wac.getServletContext().getResourceAsStream(FILE_NAME);
		BufferedReader bf = new BufferedReader(new InputStreamReader(is));
		try {
			String line = bf.readLine();
			while ((line = bf.readLine()) != null) {
				String[] tokens = line.split(",");
				String performer = tokens[1];
				String venue = tokens[2];
				String date = tokens[3];
				String url = tokens[4];
				concerts.add(new Concert(performer, venue, date, url));
			}
		} catch (IOException e) {
			System.err.println(e);
		}
	}
	
	
	@Override
	public Concert getConcertByPerformer(String performer) {
		c = null;
		for (Concert concert : concerts) {
			if (performer.equalsIgnoreCase(concert.getPerformer())) {
				c = concert;
			}
		}
		return c;
	}

	@Override
	public void addConcertToList(Concert concert) {
		concerts.add(c);
	}
	
	@Override
	public List<Concert> getAllConcerts() {
		return concerts;
	}


}

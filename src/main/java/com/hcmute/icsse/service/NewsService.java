package com.hcmute.icsse.service;

import java.io.IOException;
import java.util.List;
import java.util.NoSuchElementException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.hcmute.icsse.ApplicationConfig;
import com.hcmute.icsse.entity.News;
import com.hcmute.icsse.repository.NewsRepository;

@Service
public class NewsService {
	@Autowired
	private NewsRepository newsRepository;
	@Autowired
	private AmazonService amazonService;

	public News addNews(News news) {
		try {
			return newsRepository.save(news);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	public News updateNews(News news) {
		try {
			return newsRepository.save(news);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	public List<News> findLatestNews() {
		try {
			return newsRepository.findLatestNews();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	public List<News> findAllNews() {
		try {
			return (List<News>)newsRepository.findAllNews();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	public News findNews(int nid) {
		try {
			return newsRepository.findById(nid).get();
		} catch(NoSuchElementException exp) {
			exp.printStackTrace();
		}
		return null;
	}

	public boolean deleteNews(int nid) {
		try {
			News news = newsRepository.findById(nid).get();
			String imgName =
					String.format("new.%d.%s", 
							news.getNewsId(), 
							MyTool.getExtension(news.getNewsFolderId()));
			String pathToImg = ApplicationConfig.IMG_FOLDER + "/" + imgName;
			newsRepository.deleteById(nid);
			return amazonService.deleteFile(pathToImg);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	public News editNews(News news) {
		try {
			return newsRepository.save(news);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	public boolean uploadImage(News news, MultipartFile file) {
		try {
			String imgName =
					String.format("new.%d.%s", 
							news.getNewsId(), 
							MyTool.getExtension(file.getOriginalFilename()));
			String pathToImg = ApplicationConfig.IMG_FOLDER + "/" + imgName;
			String imgPath = amazonService.uploadFile(file, pathToImg);
			if(imgPath.equals("")) {
				return false;
			}
			news.setNewsFolderId(imgPath);
			if(newsRepository.save(news) == null) {
				amazonService.deleteFile(pathToImg);
				return false;
			}
			return true;
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;

	}
}

package com.hcmute.icsse.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hcmute.icsse.entity.Admin;
import com.hcmute.icsse.repository.AdminRepository;

@Service
public class AdminService {
	@Autowired
	private AdminRepository admRepository;

	public List<Admin> findAllAdmins() {
		try {
			return (List<Admin>) admRepository.findAll();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	public Admin addContact(Admin adm) {
		try {
			return admRepository.save(adm);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public Admin updateContact(Admin adm) {
		try {
			return admRepository.save(adm);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public Admin findContactById(int uid) {
		try {
			return admRepository.findById(uid).get();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public Admin changePass(Admin adm) {
		try {
			return admRepository.save(adm);
		} catch(Exception exp) {
			exp.printStackTrace();
		}
		return null;
	}
}

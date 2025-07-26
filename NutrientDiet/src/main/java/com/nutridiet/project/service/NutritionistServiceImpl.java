package com.nutridiet.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nutridiet.project.model.Nutritionist;
import com.nutridiet.project.repository.NutritionistRepository;

@Service
public class NutritionistServiceImpl implements NutritionistService
{
	@Autowired
	private NutritionistRepository nutritionistRepository;

	@Override
	public String NutritionistRegistration(Nutritionist n) {
		nutritionistRepository.save(n);
		return "Nutritionist Added Successfully";
	}

	@Override
	public Nutritionist checknutrilogin(String nemail, String npassword) {
		return nutritionistRepository.checknutrilogin(nemail, npassword);
	}

	@Override
	public List<Nutritionist> displayNutritionistsBySpecification(String nspecification) {
		return nutritionistRepository.findByNspecification(nspecification);
		
	}

	@Override
	public String UpdateNutriProfile(Nutritionist nutritionist) {

		    // Fetch the existing Nutritionist entity by ID
		    Nutritionist n = nutritionistRepository.findById(nutritionist.getId()).get();
		    
		    
		        // Update the existing Nutritionist entity with new values
		        n.setNname(nutritionist.getNname());
		        n.setNemail(nutritionist.getNemail());
		        n.setNage(nutritionist.getNage());
		        n.setNcontact(nutritionist.getNcontact());
		        n.setNspecification(nutritionist.getNspecification());
		        n.setNexperience(nutritionist.getNexperience());
		        n.setNeducation(nutritionist.getNeducation());
		        n.setNpassword(nutritionist.getNpassword());
		        
		        // Save the updated Nutritionist entity back to the database
		        nutritionistRepository.save(n);
		        
		        return "Nutritionist Updated Successfully";
		    
		}

	@Override
	public Nutritionist displayNutritionistById(int nid) {
		return nutritionistRepository.findById(nid).get();
	}

	
	
}

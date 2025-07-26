package com.nutridiet.project.service;

import java.util.List;

import com.nutridiet.project.model.Nutritionist;
import com.nutridiet.project.model.User;

public interface NutritionistService
{
	public String NutritionistRegistration(Nutritionist n);
	
	public Nutritionist checknutrilogin(String nemail,String npassword);
	public String UpdateNutriProfile(Nutritionist nutritionist);
	public Nutritionist displayNutritionistById(int nid);
	
//	 public List<Nutritionist> displayNutritionistsBySpecification(String nspecification);
	 
	 public List<Nutritionist> displayNutritionistsBySpecification(String nspecification);
}

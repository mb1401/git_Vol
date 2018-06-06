package tpVol.web;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import vol.model.Passager;

public class PassagerSubscribeValidator implements Validator {

	@Override
	public boolean supports(Class<?> arg0) {
		return Passager.class.equals(arg0);
	}

	@Override
	public void validate(Object arg0, Errors arg1) {
		ValidationUtils.rejectIfEmptyOrWhitespace(arg1,"prenom", "prenom.empty", "Le prénom doit être saisi");
		ValidationUtils.rejectIfEmptyOrWhitespace(arg1,"nom", "nom.empty", "Le nom doit être saisi");
		
	}
	

}

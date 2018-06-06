package tpVol.web;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import vol.model.ClientPhysique;

public class ClientMoralSubscribeValidator implements Validator {

	
	

	@Override public boolean supports(Class<?> cls) {
	return ClientPhysique.class.equals(cls);
	}
	
	@Override public void validate(Object obj, Errors e) {
	ValidationUtils.rejectIfEmptyOrWhitespace(e, "nom", "nom.empty", "Le nom doit être saisi");
	ValidationUtils.rejectIfEmptyOrWhitespace(e, "siret", "siret.empty", "SIRET doit être saisi");
	ValidationUtils.rejectIfEmptyOrWhitespace(e, "numeroTel", "numeroTel.empty", "Le numero de Telephone doit être saisi");
	ValidationUtils.rejectIfEmptyOrWhitespace(e, "numeroFax", "numeroFax.empty", "Le numero de Fax doit être saisi");
	ValidationUtils.rejectIfEmptyOrWhitespace(e, "email", "email.empty", "L'email doit être saisi");
	}
	
}



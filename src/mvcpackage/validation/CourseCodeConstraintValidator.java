package mvcpackage.validation;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

public class CourseCodeConstraintValidator implements ConstraintValidator<CourseCode, String> {
    private String coursePrefix;

    @Override
    public boolean isValid(String parameterEntered, ConstraintValidatorContext constraintValidatorContext) {
        boolean result;
        if (parameterEntered != null) {
            result = parameterEntered.startsWith(coursePrefix);
        } else {
            result = true;
        }
        return result;
    }

    @Override
    public void initialize(CourseCode constraintAnnotation) {
        coursePrefix = constraintAnnotation.value();

    }
}

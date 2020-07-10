package mvcpackage;

import java.util.LinkedHashMap;

public class Student {
    private String firstName;

    private String lastName;
    private String country;
    private String language;
    private String[] operatingSystem;


    //    get countries from java class
    private LinkedHashMap<String, String> countryOpt;

    public Student() {
        countryOpt = new LinkedHashMap<>();
        countryOpt.put("BR", "Brasil");
        countryOpt.put("FR", "France");
        countryOpt.put("DE", "Germany");
        countryOpt.put("UA", "Ukraine");
        countryOpt.put("GB", "Great Britain");
    }


    public LinkedHashMap<String, String> getCountryOpt() {
        return countryOpt;
    }

    public String getLanguage() {
        return language;
    }

    public void setLanguage(String language) {
        this.language = language;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String[] getOperatingSystem() {
        return operatingSystem;
    }

    public void setOperatingSystem(String[] operatingSystem) {
        this.operatingSystem = operatingSystem;
    }
}

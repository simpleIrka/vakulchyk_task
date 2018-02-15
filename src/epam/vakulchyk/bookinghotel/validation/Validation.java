package epam.vakulchyk.bookinghotel.validation;

public class Validation {
    public boolean cheakPassword(String password, String secondPassword){
        boolean result=false;
        if(password.equals(secondPassword)){
            result=true;
        }
        return result;
    }

}

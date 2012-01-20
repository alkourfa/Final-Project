package prices;

import java.io.IOException;

public class Shopping implements java.io.Serializable {

    private String firstQ;
    private String secondQ;
    private String thirdQ;

    public Shopping() throws IOException {

        firstQ = "0";
        secondQ = "0";
        thirdQ = "0";
    }

    public String getFirstQ() {
        return this.firstQ;
    }

    public void setFirstQ(final String firstQ) {
        this.firstQ = firstQ;

    }

    //End of Getters and Setters for first
    //Getters and Setters For Sugar
    public String getSecondQ() {
        return this.secondQ;
    }

    public void setSecondQ(final String secondQ) {
        this.secondQ = secondQ;

    }

    //Getters and Setters for Water 
    public String getThirdQ() {
        return this.thirdQ;
    }

    public void setThirdQ(final String thirdQ) {
        this.thirdQ = thirdQ;

    }
}
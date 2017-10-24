public class GregorianDate {

    private int month;
    private int day;
    private int year;
	
    private static String[] months = {"skip","January","February","March","April",
				      "May","June","July","August","September","October","November","December"};

    private static int[] daysInMonth = {0,31,-99,31,30,31,30,31,31,30,31,30,31};

    public int getYear() {
	return this.year;
    }
	
    public GregorianDate(String monthIn, int dayIn, int yearIn)  {
	for(int i=1; i!=13;i++) {
	    if (months[i].equals(monthIn)) {
		this.month = i;
	    }
	}
	this.day = dayIn;
	this.year = yearIn;
    }

    public String toString() {
	return months[this.month]+"/"+this.day+"/"+this.year;
    }

	
	
	
    public void makeTomorrow() {
	 
	if (isChangedForSpecialDay()) {
	    return;
	}

	boolean changeYear = false;
	if (isLastDay()) {
	    changeYear = true;
	}

	if ((this.month == 2 && this.day == 28 && !isLeap())  ||
	    (this.month == 2 && this.day == 29 && isLeap()) ||
	    (this.month !=2 && this.day == daysInMonth[this.month])) {
	    this.month = this.month + 1;
	    if (this.month == 13) {
		this.month = 1;
	    }
	    this.day = 1;
	}
	else {
	    this.day = this.day + 1;
	}
	if (changeYear) {
	    this.year = this.year +1;
	}
    }
	
	
    public boolean isLeap() {
	if (this.year%400 ==0 || (this.year%100!=0 && this.year%4 ==0))
	    return true;
	else {return false;
	}
    }

    public boolean isLastDay() {
	if (this.month==12 && this.day==31)
	    return true;
	else {return false;
	}
    }
	
    public boolean isChangedForSpecialDay() {
	if (this.month == 12 && this.day == 13 && this.year == 2001) {
	    this.day = 3;
	    return true;
	}		
	return false;
    }

}

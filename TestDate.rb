

public class TestDate {

    public static void main(String[] args) {
		
	new TestDate().go();
    }
    
    private void go() {

	GregorianDate g = new GregorianDate("December",13,1900);
	System.out.println(g);
	g.makeTomorrow();
	System.out.println(g);
	g.makeTomorrow();
	System.out.println(g);
	
	GregorianDate h = new SpainDate("December",13,1900);
	System.out.println(h.isLeap());
	System.out.println(g.isLeap());
	

    }
    
}

package club.finallymj;

import java.util.ArrayList;

public class rand {
    private static ArrayList<String> list= new ArrayList<>();
    public rand(){
        list.add("1");
        list.add("2");
        list.add("3");
        list.add("4");
        list.add("5");
        list.add("6");
        list.add("7");
        list.add("8");
        list.add("9");
        list.add("10");
        list.add("11");
        list.add("12");
        list.add("13");
        list.add("14");
        list.add("15");
        list.add("16");

    }

    public String dom(){
        return list.get((int) Math.random()*16);
    }

}

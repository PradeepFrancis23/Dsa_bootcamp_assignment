import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.Set;
import java.util.List;

public class Part {

    public static void main(String[] args) {
        System.out.println("Pradeep Here Java");

        List<Integer> list = new ArrayList<>();
        list.add(2);
        list.add(4);
        list.add(5);
        list.add(2);
        list.add(9);
        list.add(7);

        System.out.println("List with Duplicates:" + list);

        // use linked hashset while maintaineing the order
        Set<Integer> set = new LinkedHashSet<>(list);
        System.out.println("List without Duplicates:" + set);

        System.out.println(" ");

        System.out.println("Lets Print Duplicates:");

    }


}
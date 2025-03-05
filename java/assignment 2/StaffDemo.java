 import java.util.Scanner;
abstract class Staff {
    protected int id;
    protected String name;
    public Staff(int id, String name) {
        this.id = id;
        this.name = name;
    }
    public abstract void displayDetails();
}
class OfficeStaff extends Staff {
    private String department;
    public OfficeStaff(int id, String name, String department) {
        super(id, name);
        this.department = department;
    }
    @Override
    public void displayDetails() {
        System.out.println("ID: " + id + ", Name: " + name + ", Department: " + department);
    }
}
public class StaffDemo  {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Enter number of Office Staff: ");
        int n = scanner.nextInt();
        scanner.nextLine();
        OfficeStaff[] staffList = new OfficeStaff[n];
        for (int i = 0; i < n; i++) {
            System.out.print("Enter ID: ");
            int id = scanner.nextInt();
            scanner.nextLine();
            System.out.print("Enter Name: ");
            String name = scanner.nextLine();
            System.out.print("Enter Department: ");
            String department = scanner.nextLine();
            staffList[i] = new OfficeStaff(id, name, department);
        }
        System.out.println("\nOffice Staff Details:");
        for (OfficeStaff staff : staffList) {
            staff.displayDetails();
        }
        scanner.close();
    }
}


public class StringBufferExample {
    public static void main(String[] args) {
        StringBuffer sb = new StringBuffer("Hello");
        System.out.println("Initial StringBuffer: " + sb);
        sb.append(" World");
        System.out.println("After append: " + sb);
        sb.insert(6, "Java ");
        System.out.println("After insert: " + sb);
        sb.replace(6, 10, "Awesome");
        System.out.println("After replace: " + sb);
        sb.delete(6, 13);
        System.out.println("After delete: " + sb);
        sb.reverse();
        System.out.println("After reverse: " + sb);
        System.out.println("Length of StringBuffer: " + sb.length());
        System.out.println("Capacity of StringBuffer: " + sb.capacity());
        sb.ensureCapacity(50);
        System.out.println("New Capacity after ensuring: " + sb.capacity());
    }
}

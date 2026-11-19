import java.lang.reflect.Method;
import java.lang.reflect.Modifier;

public class Dump {
    public static void main(String[] args) throws Exception {
        Class<?> c = Class.forName("android.content.pm.PackageManager");
        for (Method m : c.getDeclaredMethods()) {
            StringBuilder sb = new StringBuilder();
            sb.append(Modifier.isStatic(m.getModifiers()) ? "S " : (Modifier.isAbstract(m.getModifiers()) ? "A " : "C "));
            sb.append(m.getName()).append('(').append(descriptor(m.getParameterTypes()))
              .append(')').append(descriptorOf(m.getReturnType()));
            System.out.println(sb.toString());
        }
    }
    static String descriptor(Class<?>[] params) {
        StringBuilder sb = new StringBuilder();
        for (Class<?> p : params) sb.append(descriptorOf(p));
        return sb.toString();
    }
    static String descriptorOf(Class<?> c) {
        if (c == void.class) return "V";
        if (c == boolean.class) return "Z";
        if (c == byte.class) return "B";
        if (c == char.class) return "C";
        if (c == short.class) return "S";
        if (c == int.class) return "I";
        if (c == float.class) return "F";
        if (c == long.class) return "J";
        if (c == double.class) return "D";
        if (c.isArray()) return "[" + descriptorOf(c.getComponentType());
        return "L" + c.getName().replace('.', '/') + ";";
    }
}

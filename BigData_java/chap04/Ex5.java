package chap04;

class Line{
    private int line;

    public Line(int line){this.line = line;}
    public boolean isSameLine(Line l)
    {
        if(this.line == l.getLine())
            return true;
        else
            return false;
    }
    public int getLine(){return this.line;}
}

public class Ex5 {
    public static void main(String[] args)
    {
        Line a = new Line(1);
        Line b = new Line(1);

        System.out.println(a.isSameLine(b));
        System.out.println(a == b);
    }
}

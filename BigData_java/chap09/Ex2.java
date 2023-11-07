package chap09;

class MathScore implements Comparable<MathScore>{
    String name;
    int score;

    public MathScore(String name , int score)
    {
        this.name= name;
        this.score = score;
    };

    public String toString()
    {
        return name + ", " + score;
    }
    public int compareTo(MathScore e)
    {
        if(score > e.score)
            return 1;
        else
            return 0;
    }
}

public class Ex2 {
    static <T extends Comparable> T findBest(T[] a)
    {
        T best = a[0];
        for(int i = 1 ; i < a.length ; i++)
        {
            if(best.compareTo(a[i]) == 0)
                best = a[i];
        }
        return best;
    }

    public static void main(String[] args)
    {
        EnglishScore[] ea = {new EnglishScore("김삿갓", 77) , 
                                new EnglishScore("장영실", 88) , new EnglishScore("홍길동", 99)};
        MathScore[] ms = {new MathScore("김삿갓", 80) , new MathScore("장영실", 98) ,
                                            new MathScore("홍길동", 70)};
        
        System.out.println("영어 최고 점수 : " + findBest(ea));
        System.out.println("수학 최고 점수 : " + findBest(ms));
    }
}

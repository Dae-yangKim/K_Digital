package chap07;

public class CountableTest {
    public static void main(String[] args)
    {
        Countable[] m = {new Bird2("뻐꾸기") , new Bird2("독수리") , new Tree("사과나무") , new Tree("밤나무")};

        for(Countable e : m)
        {
            e.count();
        }

        for(int i = 0 ; i < m.length ; i++)
        {
            if(m[i] instanceof Bird2)
            {
                Bird2 bird = (Bird2) m[i];
                bird.fly();
            }
            else
            {
                Tree tree = (Tree) m[i];
                tree.ripen();
            }

        }
    }
}

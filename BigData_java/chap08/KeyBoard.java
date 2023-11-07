package chap08;

class Mouse{
    String name;
    
    public Mouse(String name)
    {
        this.name = name;
    }
}

public class KeyBoard {
    String name;
    
    public KeyBoard(String name)
    {
        this.name = name;
    }

    public boolean equals(Object obj) // 원래의 Object class의 equals()를 overridng해서 선언을 했기 때문에 위의 Mouse와 다르게 작동한다.
    {
        if(obj instanceof KeyBoard)
        {
            KeyBoard k = (KeyBoard) obj;
            if(name.equals(k.name))
                return true;
        }
        return false;
    }

    public String toString()
    {
        return "키보드입니다.";
    }
}

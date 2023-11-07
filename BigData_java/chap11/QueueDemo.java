package chap11;

import java.util.*;

public class QueueDemo {
    public static void main(String[] args)
    {
        Queue<String> q = new LinkedList<>();
        /*LinkedList는 Queue의 구현 클래스이기 때문에 , 
         * 생성된 객체를 Queue타입 변수에 대입할 수 있다.
         */

        System.out.println(q.poll()); // remove()와는 달리 큐에 원소가 없는 경우 null을 return한다.
        q.offer("사과");
        System.out.println("바나나를 추가했나요? " + q.offer("바나나"));
        
        try
        {
            q.add("체리");
        }
        catch(IllegalStateException e)
        {}
        System.out.println("헤드 엿보기 : " + q.peek());

        String head = null;
        try
        {
            head = q.remove();
            System.out.println(head + "제거하기");
            System.out.println("새로운 헤드 : " + q.element());
        }
        catch(NoSuchElementException e)
        {}

        head = q.poll();
        System.out.println(head + "제거하기");
        System.out.println("새로운 헤드 : " + q.peek());

        System.out.println("체리를 포함하고 있나요? " + q.contains("체리"));
        System.out.println("사과를 포함하고 있나요? " + q.contains("사과"));
    }
}

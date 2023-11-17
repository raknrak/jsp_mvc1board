package common; // 기본 패키지 이외의 패키지 (규약 1번)

public class Person {
    private String name;    //private 멤버 변수(규약 2번)
    private int age;        //private 멤버 변수(규약 2번)

    public Person(){}       //기본 생성자(규약 3번)

    //자바빈즈 규약을 모두 만족하며 인수를 받는 생성자 추가
    public Person(String name, int age){
        super();
        this.name = name;
        this.age = age;

    }

    // public getter/setter 메소드들(규약 4번, 5번)
    public String getName() {

        return name;
    }

    public void setName(String name) {

        this.name = name;
    }

    public int getAge() {

        return age;
    }

    public void setAge(int age) {

        this.age = age;
    }
}




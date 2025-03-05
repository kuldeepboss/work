class Sports {
    void play() {
        System.out.println("Playing a sport");
    }
}
class Football extends Sports {
    @Override
    void play() {
        System.out.println("Playing Football: Kicking the ball and scoring goals!");
    }
}
class Basketball extends Sports {
    @Override
    void play() {
        System.out.println("Playing Basketball: Dribbling and shooting hoops!");
    }
}
class Rugby extends Sports {
    @Override
    void play() {
        System.out.println("Playing Rugby: Running with the ball and tackling!");
    }
}
public class SportsDemo {
    public static void main(String[] args) {
        Sports sport1 = new Football();
        sport1.play();
        Sports sport2 = new Basketball();
        sport2.play();
        Sports sport3 = new Rugby();
        sport3.play();
    }
}


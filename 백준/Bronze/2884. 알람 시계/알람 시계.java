import java.util.*;
public class Main {

	public static void main(String[] args) { //예외처리해주기
		//45분 일찍 알람설정하기 ->시,분을 받아서 45분 전으로 돌려서 출력
		Scanner sc = new Scanner(System.in);
		int h = sc.nextInt();
		int m = sc.nextInt();
		
		if (m<45) {
			m=60-(45-m);
			if (h==0) h=23;
			else h-=1;
		}
		else m-=45;
		
		System.out.print(h+" "+m);
	}
}

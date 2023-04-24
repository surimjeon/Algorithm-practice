import java.io.*;
import java.util.*;

public class Main {
	public static void main(String[] args) throws Exception {
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		int n = Integer.parseInt(br.readLine());
		for (int i=1; i<=n;i++) {
			for (int j=1; j<=n-i; j++) { //1~4
			System.out.print(' ');}
			for (int j=1; j<=2*i-1; j++){
				System.out.print("*");
			}
			System.out.println();
		}
		
		for (int i=n-1; i>=1;i--) {
			for (int j=1; j<=n-i; j++) { //1~4
			System.out.print(' ');}
			for (int j=1; j<=2*i-1; j++){
				System.out.print("*");
			}
			System.out.println();
		}
		
	}
}
		
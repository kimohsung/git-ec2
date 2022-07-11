import java.util.HashMap;

public class test1 {
	public static void solution(int num) {
	boolean isMinus = false;
	int result = 0;
	if(num < 0){
		num *= -1;
		isMinus = true;
	}
	while(num > 0) {
	int r = num % 10;
	num /= 10;
	result = result*10 + r;
	}
	if(isMinus){
	result *= -1;
	}
	System.out.println(result);
	}

	public static void main(String[] args) {
	solution(12345);
	solution(-12345);
	solution(100);
	solution(0);
	}
}

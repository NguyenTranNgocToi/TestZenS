package algorithm;

import java.util.ArrayList;
import java.util.Scanner;

public class main {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		ArrayList<Integer> array;
		array = new ArrayList<Integer>();
		String chuoi;
		Scanner scanner = new Scanner(System.in);
	    
		//nhập chuỗi
	    System.out.println("Nhập vào chuỗi bất kỳ: ");
	    chuoi = scanner.nextLine();
	    
	    
	    
	    //lấy số thêm vào mảng
	    for (int i = 0; i < chuoi.length(); i++) {
	    	if(chuoi.charAt(i)!=' ') {
	    		array.add(Integer.parseInt(chuoi.charAt(i)+""));
	    	}	
	    }
	   
	    
	    
		//tìm min max
		int min = array.get(0);
		int max =array.get(0);
		for (int i = 0; i < array.size(); i++) {
			if (max < array.get(i))
				max =  array.get(i);
			if (min >  array.get(i))
				min =  array.get(i);
		}

		
		//tím miniSum maxSum
		long  miniSum = 0;
		long  maxSum = 0;
		for (int index = 0; index < array.size(); index++) {

			if (array.get(index) != max)
				miniSum = miniSum + array.get(index);

			if (array.get(index) != min)
				maxSum = maxSum + array.get(index);
		}
//
//		System.out.println("min là:" + min);
//
//		System.out.println("minSum là:" + miniSum);
//
//		System.out.println("max là:" + max);
//
//		System.out.println("maxSum là:" + maxSum);
		
		System.out.println(miniSum+" " + maxSum);
	}

}

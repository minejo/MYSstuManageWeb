package utils.random;

import java.util.Random;

/**
 * 获取任意长度的随机字母数字组合
 * @author xueming
 * @version 1.0
 */
public class RandomString {
	private static RandomString rs = new RandomString();
	private static Random rand = new Random();
	/**
	 * 获取一个RandomString对象
	 * @return rs RandomString对象
	 */
	public static RandomString getInstance() {
		return rs;
	}
	
	/**
	 * 获取随机字母数字组合
	 * @param n 随机字码的长度
	 * @return res 随机字码
	 */
	public static String random(int n) {
		String res = "";
		int item;
		for (int i = 0; i < n; i ++) {
			item = rand.nextInt(56);
			// 为了使得数字的出现的频率和字母差不多，把30一下的随机数当做数字
			if (item < 30) {
				// 把(0, 30)的随机数分配到(0, 10)
				item = item >= 20 ? item - 20 : item >= 10 ? item - 10 : item;
				res += String.valueOf(item);
			} else {
				res += String.valueOf((char)('A' + item - 30));
			}
		}
		return res;
	}
}

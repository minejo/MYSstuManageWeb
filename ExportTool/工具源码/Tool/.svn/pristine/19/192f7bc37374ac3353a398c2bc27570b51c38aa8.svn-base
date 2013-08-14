package utils.random;

import java.awt.Color;
import java.util.Random;

public class RandomColor {
	private static RandomColor randColor = new RandomColor();
	private static Random rand = new Random();
	
	/**
	 * 获取RandomColor对象
	 * @return
	 */
	public static RandomColor getInstance() {
		return randColor;
	}
	
	/**
	 * 获取随机颜色
	 * 	随机颜色的区间范围
	 * @param begin 区间范围的上线(0, 255)
	 * @param end 区间范围的下线(0, 255)
	 * @return color 颜色对象
	 */
	public static Color random(int begin, int end) {
		// 保证begin和end在(0, 255)之前
		begin = begin < 0 ? 0 : begin > 255 ? 255 : begin;
		end = end < 0 ? 0 : end > 255 ? 255 : end;
		// 保证begin < end
		if (end < begin) {
			end += begin;
			begin = end -begin;
			end -= begin;
		}
		int dif = end - begin;
		int r = begin + rand.nextInt(dif);
		int g = begin + rand.nextInt(dif);
		int b = begin + rand.nextInt(dif);
		return new Color(r, g, b);
	}
}

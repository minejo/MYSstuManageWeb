package utils.random;

import java.awt.Font;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.util.Random;

import utils.Pair;

public class RandomImage {
	private static RandomImage randImage = new RandomImage();
	private static Random rand = new Random();
	private static final int WIDTH = 80;  
    private static final int HEIGHT = 20;
    private static final String FONTFAMILY = "Times New Roman";
    
    /**
     * 获取一个RandomImage对象
     * @return
     */
    public static RandomImage getInstance() {
    	RandomColor.getInstance();
    	RandomString.getInstance();
    	return randImage;
    }
    
    public static Pair<String, BufferedImage> random() {
    	BufferedImage image = new BufferedImage(WIDTH, HEIGHT, BufferedImage.TYPE_INT_RGB);
    	// 获取图形上下文
    	Graphics g = image.getGraphics();
    	// 设定背景色
    	g.setColor(RandomColor.random(200, 255));
    	g.fillRect(0, 0, WIDTH, HEIGHT);
    	// 设定字体
    	g.setFont(new Font(FONTFAMILY, Font.PLAIN, 18));
    	//  画边框
    	// 随机产生155条干扰线，使图象中的认证码不易被其它程序探测到
    	g.setColor(RandomColor.random(160, 200));
    	for (int i = 0; i < 155; i ++) {
			int x = rand.nextInt(WIDTH);
			int y = rand.nextInt(HEIGHT);
			int xl = rand.nextInt(12);
			int yl = rand.nextInt(12);
			g.drawLine(x,y,x+xl,y+yl);
		}
    	// 5位随机码
    	String code = RandomString.random(5);
    	for (int i = 0; i < 5; i ++) {
    		g.setColor(RandomColor.random(20, 130));
    		g.drawString(String.valueOf(code.charAt(i)), 13 * i + 6, 16);
    	}
    	// 把验证码和图片封装在一起
    	Pair<String, BufferedImage> pair = new Pair<String, BufferedImage>(code, image);
    	return pair;
    }
}

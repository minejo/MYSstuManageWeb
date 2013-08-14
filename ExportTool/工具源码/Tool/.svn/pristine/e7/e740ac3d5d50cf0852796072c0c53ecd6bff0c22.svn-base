package utils;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;

import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.DocumentHelper;
import org.dom4j.Element;
import org.dom4j.io.OutputFormat;
import org.dom4j.io.SAXReader;
import org.dom4j.io.XMLWriter;

public class Xml {
	
	/**
	 * 使用document对象保存xml文件
	 * @param doc document对象
	 * @param path xml文件的路径
	 * @return boolean 是否保存成功
	 */
	public static boolean save(Document doc, String path) {
		try {
			// 格式化输出,类型IE浏览一样
			OutputFormat format  =  OutputFormat.createPrettyPrint();
			// 指定XML编码
			format.setEncoding("UTF-8");
			XMLWriter writer = new XMLWriter(new FileWriter(new File(path)), format);
			writer.write(doc);
			writer.close();
			return true;
		} catch (IOException e) {
			e.printStackTrace();
		}
		return false;
	}
	
	/**
	 * 读取xml文件，返回document对象
	 * @param path xml文件路径
	 * @return doc document对象
	 */
	public static Document read(String path) {
		Document doc = null;
		try {
			SAXReader saxReader = new SAXReader();
			File file = new File(path);
			if (file.exists()) {
					doc = saxReader.read(file);
			}
		} catch (DocumentException e) {
			e.printStackTrace();
		}
		return doc;
	}
	
	/**
	 * 设置document的根标签
	 * @param doc document对象
	 * @param itemName 根标签名字
	 */
	public static void setRootElement(Document doc, String itemName) {
		Element root = DocumentHelper.createElement(itemName);
		doc.setRootElement(root);
	}
	
	/**
	 * 增加节点(无节点信息)
	 * @param root 根节点
	 * @param itemName 需要增加的子节点的名字
	 * @return 新增加的节点对象
	 */
	public static Element addElement(Element root, String itemName) {
		return root.addElement(itemName);
	}
	
	/**
	 * 设置有节点信息的节点
	 * @param root 根节点
	 * @param name 需要增加的节点名字
	 * @param text 增加的节点的信息
	 * @return child 增加的新节点
	 */
	public static Element addElement(Element root, String name, String text) {
		Element child = root.addElement(name);
		child.setText(text);
		return child;
	}
	
	/**
	 * 增加节点属性
	 * @param root 需要增加属性的节点
	 * @param name 属性的名字
	 * @param value 属性的值
	 */
	public static void addAttribute(Element root, String name, String value) {
		root.addAttribute(name, value);
	}
}

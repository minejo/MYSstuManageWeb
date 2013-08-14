package com.UI;

import java.awt.BorderLayout;

import java.awt.ComponentOrientation;
import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JTextArea;
import javax.swing.border.EmptyBorder;

import jxl.write.Font;
import javax.swing.JButton;
import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;
import java.util.ArrayList;

import com.action.InputTeacherList;
import com.bean.BeanTutor;

public class TutorGene extends JFrame {

	private JPanel contentPane;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					TutorGene frame = new TutorGene();
					frame.setVisible(true);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}

	/**
	 * Create the frame.
	 */
	public TutorGene() {
		setResizable(false);
		setTitle("导师用户批量创建");
		setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
		setBounds(100, 100, 629, 479);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(contentPane);
		contentPane.setLayout(null);
		
		JTextArea txtarea = new JTextArea();
		txtarea.setLineWrap(true);
		txtarea.setWrapStyleWord(true);
		txtarea.setText("导入说明：\r\n       1.当前文件夹中须有tutor.xls(文档须为97-03版本excel）\r\n       2.tutor.xls 文件中须有4列：（按顺序）\r\n                 第一列为老师姓名\r\n                 第二列为所属学院原则上导入的教师所属的学院是在『土木工程学院，机械工程学院，电气工程学院， 信息科学与技术学院，交通运输与物流学院，材料科学与工程学院，力学与工程学院』中选的，如若有其他情况，则填为“其他”；\r\n                  第三列为专业方向，要求不超过50字\r\n                  第四列为EMAIL，EMAIL用来作登录名用\r\n        3.鉴于学院教务向每个老师方法账户的不可行性，老师帐号的初始密码全为12345，老师拿到账户后自行修改。\r\n        4.确保导入过程中tutor.xls文件未被打开");
		txtarea.setBounds(44, 38, 536, 274);
		contentPane.add(txtarea);
		
		final JButton button = new JButton("批量导入老师用户");
		button.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
		
				 ArrayList<BeanTutor> list = InputTeacherList.getTutorInfo();			
				boolean flag = InputTeacherList.putTutorInfo(list);
				if(flag)
				{
					JOptionPane.showMessageDialog(button, "用户批量导入成功");
				}
				else
				{
					JOptionPane.showMessageDialog(button, "用户批量导入失败，请检查tutor.xls文件格式是否正确，或者导入的账户已经存在");
				}
			}
		});
		button.setBounds(228, 336, 159, 48);
		contentPane.add(button);
		
		
		
	}

}

package com.UI;

import java.awt.BorderLayout;
import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.border.EmptyBorder;
import java.awt.FlowLayout;
import javax.swing.JTextArea;
import java.awt.Font;
import javax.swing.JScrollBar;
import java.awt.ComponentOrientation;
import javax.swing.JButton;
import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;

import com.action.InputStudentList;
import com.action.PrRegisterStu;

public class StuGene extends JFrame {

	private JPanel contentPane;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					StuGene frame = new StuGene();
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
	public StuGene() {
		setResizable(false);
		setTitle("学生用户批量创建");
		setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
		setBounds(100, 100, 629, 479);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(contentPane);
		contentPane.setLayout(null);
		
		JTextArea txtarea = new JTextArea();
		txtarea.setComponentOrientation(ComponentOrientation.LEFT_TO_RIGHT);
		txtarea.setWrapStyleWord(true);
		txtarea.setRows(1);
		txtarea.setFont(new Font("Dialog", Font.PLAIN, 13));
		txtarea.setLineWrap(true);
		txtarea.setBounds(27, 34, 555, 279);
		txtarea.setText("导入说明：\r\n1.在当前目录下须存在两个文件，一个为class.xml,一个为student.xls(须为97-03版本).\r\n2.class.xml的格式，请参见当前目录下的class_sample.xml\r\n3.student.xls的文件格式为\r\n                          第一列为学号，第二列为姓名，第三列为班级（班级名须与class.xml中的name 属性 对应），第四列为入学专业，规定入学专业名称如下：{土木工程学院,机械工程学院,电气工程学院,信息科学与技术学院,交通运输与物流学院,材料科学与工程学院,力学与工程学院,其他学院}           \r\n4.确保文件夹中有两个文件且格式无误后点“导入学生信息按钮\",学生账户批量被创建，创建时产生的随机密码见student.xls文件\r\n5.确保点击导入时class.xml和student.xls文件未被打开");
		
	
		contentPane.add(txtarea);
		
		final JButton button = new JButton("导入学生信息");
		button.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent arg0) {
				boolean flag = false;
				PrRegisterStu pre = new PrRegisterStu();
			   flag = pre.LoadBatch();
			   
			   if(flag)
			   {
				   JOptionPane.showMessageDialog(button, "导入成功，请将帐号密码发放给学生完成初始化");
			   }
			   else
			   {
				   JOptionPane.showMessageDialog(button, "导入失败，请检查class.xml，student.xls中文件格式是否正确");
			   }
				
			}
		});
		button.setBounds(198, 367, 193, 48);
		contentPane.add(button);
	}
}

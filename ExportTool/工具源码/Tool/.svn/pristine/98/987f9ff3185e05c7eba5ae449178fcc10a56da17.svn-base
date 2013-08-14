package com.UI;

import java.awt.BorderLayout;
import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import java.awt.GridLayout;
import javax.swing.JButton;
import java.awt.GridBagLayout;
import java.awt.GridBagConstraints;
import java.awt.Insets;
import javax.swing.BoxLayout;
import java.awt.FlowLayout;
import javax.swing.JLabel;

import com.action.OutChoseMajor;
import com.action.OutChoseTutor;
import com.action.OutContest;
import com.action.OutInteg;
import com.bean.BeanChoseMajor;
import com.bean.BeanChoseTutor;
import com.bean.BeanContest;
import com.bean.BeanInteg;

import java.awt.Color;
import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import jxl.write.WriteException;
import jxl.write.biff.RowsExceededException;

public class Main extends JFrame {

	private JPanel contentPane;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					Main frame = new Main();
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
	public Main() {
		setResizable(false);
		setTitle("茅以升学院学生管理系统信息管理系统");
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 598, 579);
		contentPane = new JPanel();
		contentPane.setBackground(Color.WHITE);
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(contentPane);
		contentPane.setLayout(null);
		
		JPanel panel = new JPanel();
		panel.setBackground(Color.LIGHT_GRAY);
		panel.setBounds(49, 58, 496, 106);
		contentPane.add(panel);
		panel.setLayout(null);
		
		JLabel label = new JLabel("用户批量创建");
		label.setBounds(12, 12, 93, 26);
		panel.add(label);
		
		final JButton button = new JButton("学生批量创建");
		button.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent arg0) {
				StuGene stu = new StuGene();
				stu.setVisible(true);
				
			}
		});
		button.setBounds(62, 50, 117, 37);
		panel.add(button);
		
		JButton button_1 = new JButton("导师批量创建");
		button_1.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				TutorGene tu = new TutorGene();
				tu.setVisible(true);
			}
		});
		button_1.setBounds(288, 50, 117, 37);
		panel.add(button_1);
		
		JPanel panel_2 = new JPanel();
		panel_2.setBackground(Color.LIGHT_GRAY);
		panel_2.setBounds(47, 264, 513, 147);
		contentPane.add(panel_2);
		panel_2.setLayout(null);
		
		JLabel lblexcel = new JLabel("数据Excel导出");
		lblexcel.setBounds(0, 12, 93, 15);
		panel_2.add(lblexcel);
		
		final JButton button_3 = new JButton("诚信记录导出");
		button_3.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent arg0) {
				OutInteg ing = new OutInteg();
				ArrayList<BeanInteg> list = null;
				try {
					list = ing.getList();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
				try {
					ing.WriteData(list);
					JOptionPane.showMessageDialog(button_3, "导出成功，结果看当前目录 诚信记录导出.xls 文件");
				} catch (WriteException | IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
					JOptionPane.showMessageDialog(button_3, "导出失败"+ e.getMessage());
				}
			}
		});
		button_3.setBounds(25, 61, 117, 25);
		panel_2.add(button_3);
		
		final JButton button_4 = new JButton("学生选专业导出");
		button_4.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				
				OutChoseMajor och = new OutChoseMajor();				
				
				ArrayList<BeanChoseMajor> list = null;
				try {
					list = OutChoseMajor.getList();
				} catch (SQLException e2) {
					// TODO Auto-generated catch block
					e2.printStackTrace();
				}
				
				try {
					och.WriteData(list);
					JOptionPane.showMessageDialog(button_4, "导出成功，结果看当前目录 选专业导出.xls文件");
					
				} catch (WriteException | IOException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
					JOptionPane.showMessageDialog(button_4, "导出失败"+ e1.getMessage());
				}
				
			}
		});
		button_4.setBounds(168, 61, 131, 25);
		panel_2.add(button_4);
		
		final JButton button_5 = new JButton("学生选导师导出");
		button_5.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				OutChoseTutor oct = new OutChoseTutor();
				ArrayList<BeanChoseTutor> list = null;
				try {
					list = oct.getList();
				} catch (SQLException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
				try {
					oct.WriteData(list);
					JOptionPane.showMessageDialog(button_5, "导出成功，结果看当前目录 选导师导出.xls 文件");
				} catch (WriteException | IOException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
					JOptionPane.showMessageDialog(button_5, "导出失败"+ e1.getMessage());
				}
				
			}
		});
		button_5.setBounds(338, 61, 131, 25);
		panel_2.add(button_5);
		
		final JButton button_6 = new JButton("科创成绩导出");
		button_6.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				OutContest con = new OutContest();
				ArrayList<BeanContest> list = null;
				
				try {
					list = con.getList();
				} catch (SQLException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
				
				try {
					con.WriteData(list);
					JOptionPane.showMessageDialog(button_6, "导出成功，结果看当前目录 科创成绩导出.xls 文件");
				} catch (WriteException | IOException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
					JOptionPane.showMessageDialog(button_6, "导出失败"+ e1.getMessage());
				}
				
			}
		});
		button_6.setBounds(25, 110, 117, 25);
		panel_2.add(button_6);
		
		JButton button_7 = new JButton("退出系统");
		button_7.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				System.exit(0);
			}
		});
		button_7.setBounds(231, 474, 117, 25);
		contentPane.add(button_7);
	}
}

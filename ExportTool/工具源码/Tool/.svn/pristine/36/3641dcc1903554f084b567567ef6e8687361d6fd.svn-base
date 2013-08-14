package com.UI;

import java.awt.BorderLayout;
import java.awt.EventQueue;

import javax.naming.NamingException;
import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import com.jgoodies.forms.layout.FormLayout;
import com.jgoodies.forms.layout.ColumnSpec;
import com.jgoodies.forms.layout.RowSpec;
import com.jgoodies.forms.factories.FormFactory;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JTextField;
import javax.swing.JPasswordField;
import javax.swing.JButton;

import utils.MD5;

import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;
import java.sql.SQLException;

import com.service.*;

public class RootLogin extends JFrame {

	private JPanel contentPane;
	private JTextField textField;
	private JPasswordField pwdPass;
	
	private LoginService service = new LoginService();

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					RootLogin frame = new RootLogin();
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
	public RootLogin() {
		setResizable(false);
		setTitle("茅以升学院学生管理系统信息管理系统");
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 440, 327);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(contentPane);
		contentPane.setLayout(null);
		
		JLabel label = new JLabel("用户名：");
		label.setBounds(70, 64, 52, 15);
		contentPane.add(label);
		
		textField = new JTextField();
		textField.setBounds(159, 54, 190, 30);
		contentPane.add(textField);
		textField.setColumns(10);
		
		JLabel label_1 = new JLabel("密码:");
		label_1.setBounds(70, 113, 52, 36);
		contentPane.add(label_1);
		
		pwdPass = new JPasswordField();
		pwdPass.setBounds(159, 117, 190, 30);
		contentPane.add(pwdPass);
		
		final JButton button = new JButton("登录");
		button.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent arg0) {
				String usrname = textField.getText();
				String pass = pwdPass.getText();
				pass = MD5.getMD5ofStr(pass);
				boolean flag = false;
				
				try {
					flag = service.isUserLegal(usrname, pass);
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (NamingException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
				if(flag)
				{
					Main main = new Main();
					main.setVisible(true);
					setVisible(false);
				}
				else
				{
					JOptionPane.showMessageDialog(button, "用户名或密码错误");
				}
				
			}
		});
		button.setBounds(86, 217, 117, 25);
		contentPane.add(button);
		
		JButton button_1 = new JButton("取消");
		button_1.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent arg0) {
				System.exit(0);
			}
		});
		button_1.setBounds(245, 217, 117, 25);
		contentPane.add(button_1);
	}
}

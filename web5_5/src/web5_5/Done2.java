package web5_5;

import java.awt.Container;


import javax.swing.JFrame;
import javax.swing.JLabel;
//import javax.swing.JTextField;


public class Done2
{
	private JFrame outFrame=new JFrame("Warning");
	
	Done2()
	{
		outFrame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		outFrame.setBounds(200, 100, 400, 200);
		
		Container container = outFrame.getContentPane();
		container.setLayout(null);
		
		JLabel logo = new JLabel("You need to login first");
		logo.setBounds(20,30,250,30);
	}
}
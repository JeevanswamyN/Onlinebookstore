package org.ndt.entity;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
	
	public class Cart {
	 
	   private List<Book> cart;  
	   
	   public Cart() {
	      cart = new ArrayList<Book>();
	   }
	 
	   
	    public void add(Book newItem){ 
	      Iterator<Book> iter = cart.iterator();
	      while (iter.hasNext()) {
	         Book item = iter.next();
	      }
	     
	      cart.add(newItem);
	   }
	 
	   
	   public boolean update(int id, int newQty) {
	      Iterator<Book> iter = cart.iterator();
	      while (iter.hasNext()) 
	      {
	         Book item = iter.next();
	         if (item.getBook_Isbn() == id)
	         {
	            
	            item.setQtyOrdered(newQty);
	            return true;
	         }
	      }
	      return false;
	   }
	 
	   
	   public void remove(int id) {
		   System.out.println(id);
	      Iterator<Book> iter = cart.iterator();
	      while (iter.hasNext()) {
	         Book item = iter.next();
	         if (item.getBook_Isbn() == id) {
	            cart.remove(item);
	            return ; 
	         }
	        
	      }
	   }
	 
	   
	   public int size() {
	      return cart.size();
	   }
	 
	   
	   public boolean isEmpty() {
	      return size() == 0;
	   }
	 
	   
	   public List<Book> getItems() {
	      return cart;
	   }
	 
	   
	   public void clear() {
	      cart.clear();
	   }


	

}



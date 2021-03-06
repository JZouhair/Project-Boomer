package org.demo.com.entities;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Book implements Serializable {

	@Id
	@GeneratedValue
	private Long idBook;
	private String libelli;
	private String autor;
	private String description;
	private int quantite;
	private boolean blouq;
	public Long getIdBook() {
		return idBook;
	}
	public void setIdBook(Long idBook) {
		this.idBook = idBook;
	}
	public String getLibelli() {
		return libelli;
	}
	public void setLibelli(String libelli) {
		this.libelli = libelli;
	}
	public String getAutor() {
		return autor;
	}
	public void setAutor(String autor) {
		this.autor = autor;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public int getQuantite() {
		return quantite;
	}
	public void setQuantite(int quantite) {
		this.quantite = quantite;
	}
	public boolean isBlouq() {
		return blouq;
	}
	public void setBlouq(boolean blouq) {
		this.blouq = blouq;
	}
	/**
	 * @param libelli
	 * @param autor
	 * @param description
	 * @param quantite
	 * @param blouq
	 */
	public Book(String libelli, String autor, String description, int quantite, boolean blouq) {
		super();
		this.libelli = libelli;
		this.autor = autor;
		this.description = description;
		this.quantite = quantite;
		this.blouq = blouq;
	}
	/**
	 * 
	 */
	public Book() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
}

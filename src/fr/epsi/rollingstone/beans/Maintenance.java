package fr.epsi.rollingstone.beans;

import java.util.Date;

public class Maintenance {
	private int id;
	private double prix;
	private String actionReparation;
	private Date date;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public double getPrix() {
		return prix;
	}
	public void setPrix(double prix) {
		this.prix = prix;
	}
	public String getActionReparation() {
		return actionReparation;
	}
	public void setActionReparation(String actionReparation) {
		this.actionReparation = actionReparation;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	
	
}

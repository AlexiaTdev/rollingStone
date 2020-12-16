package fr.epsi.rollingstone.beans;

import java.util.Date;
import java.util.concurrent.TimeUnit;

public class Location {
	
	private int id;
	private Voiture voiture;
	private Date dateDepart;
	private Date dateRetour;
	private double penalite;
	private double prixTotal;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Voiture getVoiture() {
		return voiture;
	}
	public void setVoiture(Voiture voiture) {
		this.voiture = voiture;
	}
	public Date getDateDepart() {
		return dateDepart;
	}
	public void setDateDepart(Date dateDepart) {
		this.dateDepart = dateDepart;
	}
	public Date getDateRetour() {
		return dateRetour;
	}
	public void setDateRetour(Date dateRetour) {
		this.dateRetour = dateRetour;
	}
	public double getPenalite() {
		return penalite;
	}
	public void setPenalite(double penalite) {
		this.penalite = penalite;
	}
	public double getPrixTotal() {
		if(prixTotal > 0) {
			return prixTotal;
		}else {
			long diffInMillies = Math.abs(dateDepart.getTime() - dateRetour.getTime());
		    long diff = TimeUnit.DAYS.convert(diffInMillies, TimeUnit.MILLISECONDS);
		    double prixTotal = diff * voiture.getPrixParJour() + penalite;
			return prixTotal;
		}
	}
	public void setPrixTotal(int prixTotal) {
		this.prixTotal = prixTotal;
	}
	
	
}

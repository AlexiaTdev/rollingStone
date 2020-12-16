package fr.epsi.rollingstone;

public class Voiture {
	private String plaque;
	private String marque;
	private String model;
	private String couleur;
	private int nbPlaces;
	private int puissanceChevaux;
	private String energie;
	private double prixParJour;
	private int etat;
	private double caution;
	
	public String getPlaque() {
		return plaque;
	}
	public void setPlaque(String plaque) {
		this.plaque = plaque;
	}
	public String getMarque() {
		return marque;
	}
	public void setMarque(String marque) {
		this.marque = marque;
	}
	public String getModel() {
		return model;
	}
	public void setModel(String model) {
		this.model = model;
	}
	public String getCouleur() {
		return couleur;
	}
	public void setCouleur(String couleur) {
		this.couleur = couleur;
	}
	public int getNbPlaces() {
		return nbPlaces;
	}
	public void setNbPlaces(int nbPlaces) {
		this.nbPlaces = nbPlaces;
	}
	public int getPuissanceChevaux() {
		return puissanceChevaux;
	}
	public void setPuissanceChevaux(int puissanceChevaux) {
		this.puissanceChevaux = puissanceChevaux;
	}
	public String getEnergie() {
		return energie;
	}
	public void setEnergie(String energie) {
		this.energie = energie;
	}
	public double getPrixParJour() {
		return prixParJour;
	}
	public void setPrixParJour(int prixParJour) {
		this.prixParJour = prixParJour;
	}
	public int getEtat() {
		return etat;
	}
	public void setEtat(int etat) {
		this.etat = etat;
	}
	public double getCaution() {
		return caution;
	}
	public void setCaution(int caution) {
		this.caution = caution;
	}
	
}

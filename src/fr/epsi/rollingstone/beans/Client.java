package fr.epsi.rollingstone.beans;

public class Client {
	private int id;
	private String nom;
	private int permis;
	private int listidLocations;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public int getPermis() {
		return permis;
	}

	public void setPermis(int permis) {
		this.permis = permis;
	}

	public int getListidLocations() {
		return listidLocations;
	}

	public void setListidLocations(int listidLocations) {
		this.listidLocations = listidLocations;
	}

}
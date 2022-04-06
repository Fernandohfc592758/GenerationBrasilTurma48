package org.generation.blogpessoal.model;


import java.time.LocalDateTime;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.hibernate.annotations.UpdateTimestamp;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@Entity
@Table(name="tb_postagens") //nomeia a tabela
public class Postagem {
	
	@Id  //informe que é um ID
	@GeneratedValue(strategy= GenerationType.IDENTITY) //auto increment
	private Long id;
	
	
	@NotNull
	private String titulo;
	
	
	@NotNull //nao precisa colocar se quiser, pois este orienta colocar
	@Size(min=4, max=100) // min e max para o usuario escrever
	private String texto;
	
	@UpdateTimestamp
	private LocalDateTime data;
	
	@ManyToOne
	@JsonIgnoreProperties("postagem")
	private Tema tema;   //incluso 28/03/2022

	@ManyToOne
	@JsonIgnoreProperties("postagem")
	private Usuario usuario;   //incluso 05/04/2022
	

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getTitulo() {
		return titulo;
	}

	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}

	public String getTexto() {
		return texto;
	}

	public void setTexto(String texto) {
		this.texto = texto;
	}

	public LocalDateTime getData() {
		return data;
	}

	public void setData(LocalDateTime data) {
		this.data = data;
	}

	public Tema getTema() {   //incluso 28/03/2022
		return tema;
	}

	public void setTema(Tema tema) {   //incluso 28/03/2022
		this.tema = tema;
	}

	public Usuario getUsuario() {
		return usuario;
	}

	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
	}
	
	
}

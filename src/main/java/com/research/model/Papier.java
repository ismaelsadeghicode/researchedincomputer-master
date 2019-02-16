package com.research.model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.web.multipart.MultipartFile;
import javax.persistence.*;
import javax.validation.constraints.Min;
import java.io.Serializable;
import java.util.List;
/**
 * Created by ismail on 12/9/2016.
 */
@Entity
public class Papier implements Serializable{


    private static final long serialVersionUID = -6688221957492622016L;

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int papierId;

    @NotEmpty(message = "The papier name must not be empty")
    private String papierName;

    private String papierTitle;
    private String papierAuthor;
    private String papierPrintYear;
    private String Journal;
    private String Volume;
    private String Issue;
    private String Pages;
    private int startPages;
    private String EpubData;
    private String Data;
    private String ISSN;
    private String DOI;
    private String URL;
    private String language ;
    private String papierCategory;
    private String papierDescription;

    @Min(value = 0, message = "The papier price must not be less then zero")
    private double papierPrice;
    private String papierStatus;


    @Transient
    private MultipartFile papierImage;

    @OneToMany(mappedBy = "papier", cascade = CascadeType.ALL, fetch = FetchType.EAGER)
    @JsonIgnore
    private List<CartItem> cartItemList;

    public int getPapierId() {
        return papierId;
    }

    public void setPapierId(int papierId) {
        this.papierId = papierId;
    }

    public String getPapierName() {
        return papierName;
    }

    public void setPapierName(String papierName) {
        this.papierName = papierName;
    }

    public String getPapierTitle() {
        return papierTitle;
    }

    public void setPapierTitle(String papierTitle) {
        this.papierTitle = papierTitle;
    }

    public String getPapierAuthor() {
        return papierAuthor;
    }

    public void setPapierAuthor(String papierAuthor) {
        this.papierAuthor = papierAuthor;
    }

    public String getPapierPrintYear() {
        return papierPrintYear;
    }

    public void setPapierPrintYear(String papierPrintYear) {
        this.papierPrintYear = papierPrintYear;
    }

    public String getJournal() {
        return Journal;
    }

    public void setJournal(String journal) {
        Journal = journal;
    }

    public String getVolume() {
        return Volume;
    }

    public void setVolume(String volume) {
        Volume = volume;
    }

    public String getIssue() {
        return Issue;
    }

    public void setIssue(String issue) {
        Issue = issue;
    }

    public String getPages() {
        return Pages;
    }

    public void setPages(String pages) {
        Pages = pages;
    }

    public int getStartPages() {
        return startPages;
    }

    public void setStartPages(int startPages) {
        this.startPages = startPages;
    }

    public String getEpubData() {
        return EpubData;
    }

    public void setEpubData(String epubData) {
        EpubData = epubData;
    }

    public String getData() {
        return Data;
    }

    public void setData(String data) {
        Data = data;
    }

    public String getISSN() {
        return ISSN;
    }

    public void setISSN(String ISSN) {
        this.ISSN = ISSN;
    }

    public String getDOI() {
        return DOI;
    }

    public void setDOI(String DOI) {
        this.DOI = DOI;
    }

    public String getURL() {
        return URL;
    }

    public void setURL(String URL) {
        this.URL = URL;
    }

    public String getLanguage() {
        return language;
    }

    public void setLanguage(String language) {
        this.language = language;
    }

    public String getPapierCategory() {
        return papierCategory;
    }

    public void setPapierCategory(String papierCategory) {
        this.papierCategory = papierCategory;
    }

    public String getPapierDescription() {
        return papierDescription;
    }

    public void setPapierDescription(String papierDescription) {
        this.papierDescription = papierDescription;
    }

    public double getPapierPrice() {
        return papierPrice;
    }

    public void setPapierPrice(double papierPrice) {
        this.papierPrice = papierPrice;
    }

    public String getPapierStatus() {
        return papierStatus;
    }

    public void setPapierStatus(String papierStatus) {
        this.papierStatus = papierStatus;
    }

    public MultipartFile getPapierImage() {
        return papierImage;
    }

    public void setPapierImage(MultipartFile papierImage) {
        this.papierImage = papierImage;
    }

    public List<CartItem> getCartItemList() {
        return cartItemList;
    }

    public void setCartItemList(List<CartItem> cartItemList) {
        this.cartItemList = cartItemList;
    }
}

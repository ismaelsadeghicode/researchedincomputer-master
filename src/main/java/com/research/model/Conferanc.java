package com.research.model;

import org.springframework.web.multipart.MultipartFile;

import javax.persistence.*;

/**
 * Created by ismail on 12/7/2016.
 */
@Entity
public class Conferanc {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int conferancId;
    private String conferancName;
    private String Brand;
    private String title;
    private String status;
    private String description;
    private String sentData;
    private String acceptData;
    private String costData;
    private String base;
    private String address;
    private String patchData;
    private String phoneNumber;

    @Transient
    private MultipartFile conferancImage;

    public int getConferancId() {
        return conferancId;
    }

    public void setConferancId(int conferancId) {
        this.conferancId = conferancId;
    }

    public String getConferancName() {
        return conferancName;
    }

    public void setConferancName(String conferancName) {
        this.conferancName = conferancName;
    }

    public String getBrand() {
        return Brand;
    }

    public void setBrand(String brand) {
        Brand = brand;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getSentData() {
        return sentData;
    }

    public void setSentData(String sentData) {
        this.sentData = sentData;
    }

    public String getAcceptData() {
        return acceptData;
    }

    public void setAcceptData(String acceptData) {
        this.acceptData = acceptData;
    }

    public String getCostData() {
        return costData;
    }

    public void setCostData(String costData) {
        this.costData = costData;
    }

    public String getBase() {
        return base;
    }

    public void setBase(String base) {
        this.base = base;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPatchData() {
        return patchData;
    }

    public void setPatchData(String patchData) {
        this.patchData = patchData;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public MultipartFile getConferancImage() {
        return conferancImage;
    }

    public void setConferancImage(MultipartFile conferancImage) {
        this.conferancImage = conferancImage;
    }
}

package com.research.controller.admin;

import com.research.dao.ConferancDao;
import com.research.dao.PapierDao;
import com.research.model.Authorities;
import com.research.model.Papier;
import com.research.model.Users;
import com.research.service.AuthoritiesService;
import com.research.service.PapierService;
import com.research.service.UsersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import javax.xml.ws.BindingProvider;
import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;
import java.util.function.BinaryOperator;

/**
 * Created by ismail on 12/10/2016.
 */
@Controller
@RequestMapping("/admin")
public class AdminPapier {

    private Path path;

    @Autowired
    private PapierService papierService;



    @RequestMapping("/papier/addPapier")
    public String addPapier(Model model) {
        Papier papier = new Papier();
        model.addAttribute("papier", papier);
        return "addPapier";
    }

    @RequestMapping(value = "/papier/addPapier", method = RequestMethod.POST)
    public String addPapierPost(@Valid @ModelAttribute("papier") Papier papier, BindingResult result,
                                HttpServletRequest request) {

        if(result.hasErrors()){
            return "addPapier";
        }

        papierService.addPapier(papier);

        MultipartFile papierImage = papier.getPapierImage();
        String rootDirectory = request.getSession().getServletContext().getRealPath("/");
        path = Paths.get(rootDirectory + "/WEB-INF/resources/imagePapier/" + papier.getPapierId() + ".png");
        if (papierImage != null && !papierImage.isEmpty()) {
            try {
                papierImage.transferTo(new File(path.toString()));
            } catch (Exception e) {
                e.printStackTrace();
                throw new RuntimeException("Papier Image saving failed", e);
            }
        }
        return "redirect:/admin/papierInventory";
    }


    @RequestMapping("/papier/editPapier/{id}")
    public String editPapier(@PathVariable("id")int id, Model model) {
        Papier papier = papierService.getPapierById(id);
        model.addAttribute("papier", papier);
        return "editPapier";
    }

    @RequestMapping(value = "/papier/editPapier", method = RequestMethod.POST)
    public String editPapierPost(@Valid @ModelAttribute("papier") Papier papier, BindingResult result,
                                HttpServletRequest request) {

        if(result.hasErrors()){
            return "editPapier";
        }


        MultipartFile papierImage = papier.getPapierImage();
        String rootDirectory = request.getSession().getServletContext().getRealPath("/");
        path = Paths.get(rootDirectory + "/WEB-INF/resources/imagePapier/" + papier.getPapierId() + ".png");
        if (papierImage != null && !papierImage.isEmpty()) {
            try {
                papierImage.transferTo(new File(path.toString()));
            } catch (Exception e) {
                e.printStackTrace();
                throw new RuntimeException("Papier Image saving failed", e);
            }
        }

        papierService.editPapier(papier);

        return "redirect:/admin/papierInventory";
    }


    @RequestMapping("/papier/deletePapier/{id}")
    public String deletePapier(@PathVariable int id, Model model,HttpServletRequest request) {
        String rootDirectory = request.getSession().getServletContext().getRealPath("/");
        path = Paths.get(rootDirectory + "/WEB-INF/resources/imagePapier/" + id + ".png");

        if(Files.exists(path)){
            try {
                Files.delete(path);
            }catch (IOException e){
                e.printStackTrace();
            }
        }
        Papier papier=papierService.getPapierById(id);
        papierService.deletePapier(papier);

        return "redirect:/admin/papierInventory";
    }






}

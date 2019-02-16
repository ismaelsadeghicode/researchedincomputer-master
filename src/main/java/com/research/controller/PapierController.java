package com.research.controller;

import com.research.model.Papier;
import com.research.service.PapierService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.io.IOException;
import java.util.List;

/**
 * Created by ismail on 12/10/2016.
 */
@Controller
@RequestMapping("/papier")
public class PapierController {

    @Autowired
    private PapierService papierService;

    @RequestMapping("/papierList")
    public String getPapiers(Model model) {
        List<Papier> papiers = papierService.getPapierList();
        model.addAttribute("papiers", papiers);
        return "papierList";
    }

    @RequestMapping("/viewPapier/{papierId}")
    public String viewPapier(@PathVariable int papierId,Model model)throws IOException{
        Papier papier=papierService.getPapierById(papierId);
        List<Papier> papiers = papierService.getPapierList();
        model.addAttribute("papiers", papiers);
        model.addAttribute("papier",papier);
        return "viewPapier";
    }
}

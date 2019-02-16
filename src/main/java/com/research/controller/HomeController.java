package com.research.controller;

import com.research.dao.ConferancDao;
import com.research.dao.JournalDao;
import com.research.dao.PapierDao;
import com.research.model.Conferanc;
import com.research.model.Journal;
import com.research.model.Papier;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.io.IOException;
import java.util.List;

/**
 * Created by ismail on 12/6/2016.
 */
@Controller
@RequestMapping("/")
public class HomeController {

//    @Autowired
//    private JournalDao journalDao;

    @Autowired
    private ConferancDao conferancDao;

//    @Autowired
//    private PapierDao papierDao;

    @RequestMapping()
    public String index(Model model){
        List<Conferanc> conferancs=conferancDao.getAllConferanc();
        model.addAttribute("conferancs",conferancs);
        return "index";
    }

    @RequestMapping("login")
    public String login(@RequestParam(value="error", required = false)
                    String error,
            @RequestParam(value="logout", required = false)
                    String logout,
            Model model){

        if(error != null){
            model.addAttribute("error", "کلمه عبور و پسورد اشتباه وارد شده است");
        }

        if (logout !=null){
            model.addAttribute("msg", "شما با موفقیت خارج شدید.");
        }

        return "login";
    }
//
//    @RequestMapping("/journalList")
//    public String getjournal(Model model){
//        List<Journal> journals=journalDao.getAllJournal();
//        model.addAttribute("journals",journals);
//        return "journalList";
//    }
//
//
//    @RequestMapping("/papierList")
//    public String papierList(Model model){
//        List<Papier> papiers=papierDao.getAllPapier();
//        model.addAttribute("papiers",papiers);
//        return "papierList";
//    }
//
//
//    @RequestMapping("/conferancList")
//    public String getconferanc(Model model){
//        List<Conferanc> conferancs=conferancDao.getAllConferanc();
//        model.addAttribute("conferancs",conferancs);
//        return "conferancList";
//    }
//
//    @RequestMapping("/conferancList/viewConferanc/{conferancId}")
//    public String viewConferanc(@PathVariable int conferancId, Model model) throws IOException {
//        Conferanc conferanc = conferancDao.getConferancById(conferancId);
//        List<Conferanc> conferancs=conferancDao.getAllConferanc();
//        model.addAttribute("conferancs",conferancs);
//        model.addAttribute(conferanc);
//        return "viewConferanc";
//    }
//
//    @RequestMapping("/about")
//    public String about(){
//        return "about";
//    }
//
//    @RequestMapping("/contact")
//    public String contact(){
//        return "contact";
//    }
//
//
//    @RequestMapping("/register")
//    public String register(){
//        return "register";
//    }
//
//    @RequestMapping("/droll")
//    public String droll(){
//        return "droll";
//    }
//
//    @RequestMapping("/wishlist")
//    public String wishlist(){
//        return "wishlist";
//    }
//
//    @RequestMapping("/test")
//    public String test(){
//        return "test";
//    }
//
//

//    @RequestMapping("/login")
//    public String login(){
//        return "login";
//    }

}

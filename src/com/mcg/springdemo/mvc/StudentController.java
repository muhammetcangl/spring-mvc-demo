package com.mcg.springdemo.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.LinkedHashMap;

@Controller
@RequestMapping("/student")
public class StudentController {

    @RequestMapping("showForm")
    public String showForm(Model theModel){

        // create a student object
        Student theStudent = new Student();

        LinkedHashMap<String, String> countyOptions;

        countyOptions = new LinkedHashMap<>();

        countyOptions.put("TR", "Turkey");
        countyOptions.put("BR", "Brazil");
        countyOptions.put("FR", "France");
        countyOptions.put("USA", "USA");
        countyOptions.put("IN", "India");

        theModel.addAttribute("countries",countyOptions);

        //add student object to the model
        theModel.addAttribute("student",theStudent);

        return "student-form";
    }

    @RequestMapping("processForm")
    public String processForm(@ModelAttribute("student") Student theStudent){

        //log the input data
        System.out.println("theStudent " + theStudent.getFirstName() + " " +theStudent.getLastName());

        return "student-confirmation";
    }
}

package com.bookmanager.books.controllers;

import com.bookmanager.books.handlers.PageManager;
import com.bookmanager.books.models.BookRepo;
import com.bookmanager.books.models.Book;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.List;


@Controller
public class MainController {
    List<Book> list = new ArrayList<>();
    private static PageManager pageManager;

    @Autowired
    BookRepo bookRepo;

    static {
        pageManager = new PageManager<Book>();
    }

    @RequestMapping("/")
    public ModelAndView doHome() {
        ModelAndView mv = new ModelAndView("index");
        Page<Book> page = bookRepo.findAll(new PageRequest(0,100));
        list = page.getContent();
        mv.addObject("page", new PageManager.Page(0));
        mv.addObject("pages", pageManager.getPages());
        mv.addObject("lists", pageManager.sublist(list));
        return mv;
    }
    @RequestMapping("/find")
    public ModelAndView doFind(@RequestParam("column") String column, @RequestParam("query") String query) {
        ModelAndView mv = new ModelAndView("find");
        List<Book> list1 = new ArrayList<>();
        Page<Book> page = bookRepo.findAll(new PageRequest(0,100));
        list = page.getContent();
        String string;

        if (query != null && column.equals("title")) {
            for (Book book:  list) {
                if (book.getTitle().contains(query)) list1.add(book);
            }
        } else if (query != null && column.equals("author")) {
            for (Book book:  list) {
                if (book.getAuthor().contains(query)) list1.add(book);
            }
        } else if (query != null && column.equals("year")) {
            for (Book book:  list) {
                string = String.valueOf(book.getPrintyear());
                if (string.contains(query)) list1.add(book);
            }
        }
        mv.addObject("lists", list1);
        return mv;
    }
    @RequestMapping(value = "/add")
    public ModelAndView doAdd() {
        ModelAndView mv = new ModelAndView("add");
        mv.addObject("lists", bookRepo.findAll());
        return mv;
    }
    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public ModelAndView doSave(@RequestParam("id") String id, @RequestParam("title") String title, @RequestParam("description") String description, @RequestParam("author") String author, @RequestParam("isbn") String isbn, @RequestParam("printyear") String printyear, @RequestParam("readalready") String readalready) {
        ModelAndView mv = new ModelAndView("redirect:/");
        Book book;
        if(!id.isEmpty()){
            book = bookRepo.findById(Integer.parseInt(id)).get();
        } else {
            book = new Book();
        }
        book.setTitle(title);
        book.setDescription(description);
        book.setAuthor(author);
        book.setIsbn(isbn);
        book.setPrintyear(Integer.parseInt(printyear));
        book.setReadalready(Boolean.parseBoolean(readalready));
        bookRepo.save(book);
        return mv;
    }

    @RequestMapping( value = "/view/{id}", method = RequestMethod.GET)
    public ModelAndView doView(@PathVariable("id") int id){
        ModelAndView mv = new ModelAndView("view");
        mv.addObject("lists",bookRepo.findById(id).get());
        return mv;
    }

    @RequestMapping( value = "/delete/{id}", method = RequestMethod.GET)
    public ModelAndView doDelete(@PathVariable("id") int id){
        ModelAndView mv = new ModelAndView("redirect:/");
        bookRepo.deleteById(id);
        return mv;
    }

    @RequestMapping( value = "/edit/{id}", method = RequestMethod.GET)
    public ModelAndView doEdit(@PathVariable("id") int id){
        ModelAndView mv = new ModelAndView("edit");
        mv.addObject("lists",bookRepo.findById(id).get());
        return mv;
    }
    @RequestMapping(value = "/turnPage/next")
    public String nextPage(){
        pageManager.nextPage();
        return "redirect:/";
    }

    @RequestMapping(value = "/turnPage/previous")
    public String previousPage(){
        pageManager.previousPage();
        return "redirect:/";
    }
}

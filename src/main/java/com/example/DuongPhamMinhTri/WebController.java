package com.example.DuongPhamMinhTri;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class WebController {

    @GetMapping("/")
    public String index(Model model) {
        model.addAttribute("message", "Ứng dụng đã sẵn sàng.");
        return "index";
    }
}

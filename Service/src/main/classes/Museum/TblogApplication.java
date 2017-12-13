package Museum;

import org.springframework.boot.*;
import org.springframework.boot.autoconfigure.*;
import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.*;

@Controller
@EnableAutoConfiguration
public class TblogApplication {

//    private int blogId;

    @RequestMapping("/") //标注表示处理函数直接将函数的返回值传回到浏览器端显示
//    @ResponseBody
    String home() {
        return "index";
    }

    @GetMapping("/hello")
//    @ResponseBody
    public String hello() {
        return "hello";
    }

    @GetMapping("/hello/{name}")
    @ResponseBody
    public String hello(@PathVariable("name") String name) {
//        return "hello";
        return String.format("user %s", name);
    }
//
    @GetMapping("/blogs")
    @ResponseBody
    public String setupForm(@RequestParam(name = "id", required=false, defaultValue="0") int blogId) {
//        this.blogId = blogId;
        return String.format("blog id = %d", blogId);
    }

    public static void main(String[] args) throws Exception {
        SpringApplication.run(TblogApplication.class, args);
    }
}


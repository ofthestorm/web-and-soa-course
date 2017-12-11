package defaultP;

import org.springframework.boot.*;
import org.springframework.boot.autoconfigure.*;
import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.*;

@Controller
@EnableAutoConfiguration
public class TblogApplication {

    @RequestMapping("/") //标注表示处理函数直接将函数的返回值传回到浏览器端显示
    @ResponseBody
    String home() {
        return "Hello World!!!!";
    }

    @RequestMapping("/hello")
    @ResponseBody
    public String hello() {
        return "hello";
    }

    public static void main(String[] args) throws Exception {
        SpringApplication.run(TblogApplication.class, args);
    }
}


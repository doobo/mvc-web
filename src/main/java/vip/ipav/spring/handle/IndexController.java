package vip.ipav.spring.handle;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import vip.ipav.log.util.LoggerTools;
import vip.ipav.spring.services.StaticHtmlService;
import vip.ipav.spring.utils.HttpUtil;

@Controller
public class IndexController {

    @Autowired
    private StaticHtmlService staticHtmlService;

    @GetMapping("next")
    public String toNext(){
        staticHtmlService.createStaticHtml();
        return "index";
    }
}

package vip.ipav.spring.handle;

import com.xxl.conf.core.XxlConfClient;
import com.xxl.conf.core.listener.XxlConfListener;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import vip.ipav.log.util.LoggerTools;
import vip.ipav.spring.services.ConfService;
import vip.ipav.spring.services.StaticHtmlService;
import vip.ipav.spring.services.XxlConfService;

@Controller
public class IndexController {

    static {
        /**
         * 配置变更监听示例：可开发Listener逻辑，监听配置变更事件；可据此实现动态刷新JDBC连接池等高级功能；
         */
        XxlConfClient.addListener("default.key01", new XxlConfListener(){
            @Override
            public void onChange(String key, String value) throws Exception {
                LoggerTools.getConsoleLogger().info("配置变更事件通知：{}={}", key, value);
            }
        });
    }

    @Autowired
    private XxlConfService xxlConfService;

    @Autowired
    private StaticHtmlService staticHtmlService;

    @GetMapping("next")
    public String toNext(){
        staticHtmlService.createStaticHtml();
        LoggerTools.getCustomLogger().info(xxlConfService);
        return "index";
    }

    @Autowired
    private ConfService confService;
    /**
     * 配置中心测试
     * @return
     */
    @RequestMapping("/conf")
    public String confCenter(){
        String paramByApi = XxlConfClient.get("default.key01", null);
        LoggerTools.getConsoleLogger().info(paramByApi);
        LoggerTools.getConsoleLogger().info("ConfService:{}",confService);
        return "index";
    }
}

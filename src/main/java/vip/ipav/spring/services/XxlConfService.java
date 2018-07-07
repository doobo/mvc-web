package vip.ipav.spring.services;
import com.xxl.conf.core.spring.XxlConfFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Service;
import org.springframework.web.context.ServletContextAware;
import vip.ipav.log.util.LoggerTools;

import javax.servlet.ServletContext;
import java.io.File;

@Service
public class XxlConfService implements ServletContextAware {

    @Value("${xxl.conf.zkaddress}")
    private String zkaddress;

    @Value("${xxl.conf.zkdigest}")
    private String zkdigest;

    @Value("${xxl.conf.env}")
    private String env;

    @Value("${xxl.conf.mirrorfile}")
    private String mirrorfile;

    private ServletContext servletContext;

    @Bean
    public XxlConfFactory xxlConfFactory() {
        if(this.mirrorfile == null || this.mirrorfile.length() == 0) {
            String path = servletContext.getRealPath("WEB-INF") + "/classes/config/";
            if (!new File(path).exists()) {
                new File(path).mkdirs();
            }
            this.mirrorfile = path + "xxl-conf-mirror.properties";
            LoggerTools.getCustomLogger().error(this.mirrorfile);
        }
        XxlConfFactory xxlConf = new XxlConfFactory();
        xxlConf.setZkaddress(zkaddress);
        xxlConf.setZkdigest(zkdigest);
        xxlConf.setEnv(env);
        xxlConf.setMirrorfile(mirrorfile);
        LoggerTools.getCustomLogger().info("xxlConfFactory 初始化完成！！");
        return xxlConf;
    }

    @Override
    public void setServletContext(ServletContext servletContext) {
        this.servletContext = servletContext;
    }

    public String getZkaddress() {
        return zkaddress;
    }

    public void setZkaddress(String zkaddress) {
        this.zkaddress = zkaddress;
    }

    public String getZkdigest() {
        return zkdigest;
    }

    public void setZkdigest(String zkdigest) {
        this.zkdigest = zkdigest;
    }

    public String getEnv() {
        return env;
    }

    public void setEnv(String env) {
        this.env = env;
    }

    public String getMirrorfile() {
        return mirrorfile;
    }

    public void setMirrorfile(String mirrorfile) {
        this.mirrorfile = mirrorfile;
    }

    @Override
    public String toString() {
        return "XxlConfService{" +
                "zkaddress='" + zkaddress + '\'' +
                ", zkdigest='" + zkdigest + '\'' +
                ", env='" + env + '\'' +
                ", mirrorfile='" + mirrorfile + '\'' +
                '}';
    }
}

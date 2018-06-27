package vip.ipav.spring.services;

import freemarker.template.Configuration;
import freemarker.template.DefaultObjectWrapperBuilder;
import freemarker.template.Template;
import org.springframework.stereotype.Service;
import org.springframework.web.context.ServletContextAware;
import vip.ipav.log.util.LoggerTools;
/**
 * 生成静态文件服务
 */
import javax.servlet.ServletContext;
import java.io.*;
import java.util.HashMap;
import java.util.LinkedList;

@Service
public class StaticHtmlService implements ServletContextAware {

    private Configuration configuration;

    private File templateFileUrl;

    private ServletContext servletContext;

    public Configuration getConfiguration() {
        try{
            if(configuration==null){
                templateFileUrl = new File(servletContext.getRealPath("")+"/WEB-INF/template");
                configuration = new Configuration(Configuration.VERSION_2_3_23);
                configuration.setDirectoryForTemplateLoading(templateFileUrl);
                configuration.setObjectWrapper(new DefaultObjectWrapperBuilder(Configuration.VERSION_2_3_23).build());
                configuration.setDefaultEncoding("UTF-8");
                configuration.setNumberFormat("#");
            }
        }catch(Exception e){
            LoggerTools.getCustomLogger().error("FreeMarkerConfiguration错误");
        }finally{
            return configuration;
        }
    }

    /**
     * 创建静态文件示例
     * @return
     */
    public Boolean createStaticHtml(){
        String htmlPath = servletContext.getRealPath("")+File.separator+"static";
        File file = new File(htmlPath);
        Writer writer = null;
        if(!file.exists()){
            file.mkdirs();
        }
        if(!file.exists()){
            LoggerTools.getCustomLogger().error("创建JS目录失败：{}",htmlPath);
            return false;
        }
        String expertPath = htmlPath+"/football-expert-top.html";
        File expertFile = new File(expertPath);
        if (expertFile.exists()) {
            expertFile.delete();
        }
        try {
            Template template = getConfiguration().getTemplate("/FootballExpertTop.ftl");
            expertFile.createNewFile();
            writer = new OutputStreamWriter(
                    new FileOutputStream(expertPath),"UTF-8");
            HashMap<String,Object> item = new HashMap<>();
            LinkedList<Object> info = new LinkedList<>();
            HashMap<String,Object> map = new HashMap<>();
            item.put("icon","https://www.ttyingqiu.com/resources/images/user_icon.jpg");
            item.put("expertMemberId","1");
            item.put("nickName","河蟹堡");
            item.put("gameWinRatio",0.86);
            item.put("unOpenedCount",2);
            item.put("gameDescForShow","最强预测，百分百命中！");
            info.add(item);
            info.add(item);
            info.add(item);
            map.put("experts",info);
            template.process(map, writer);
            LoggerTools.getCustomLogger().info("football-expert-top.html生成");
            return true;
        } catch (Exception e) {
            LoggerTools.getCustomLogger().error("football-expert-top.html失败，{}。",e.getMessage());
        }
        return false;
    }

    @Override
    public void setServletContext(ServletContext servletContext) {
        this.servletContext = servletContext;
    }
}

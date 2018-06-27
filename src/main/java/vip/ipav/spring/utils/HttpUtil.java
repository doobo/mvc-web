package vip.ipav.spring.utils;

import vip.ipav.log.util.LoggerTools;
import vip.ipav.okhttp.OkHttpClientTools;

import java.io.IOException;

public class HttpUtil {

    public static String sendHttpTest(){
        try {
            String html = OkHttpClientTools.getInstance().get()
                        .url("https://hao.360.cn/")
                        .addParam("src","lm")
                        .addParam("ls","n2a27c3f091")
                        .execute().body().string();
            return html;
        } catch (IOException e) {
            LoggerTools.getCustomLogger().error("发送URL请求失败\n{}",e.getMessage());
        }

        return null;
    }
}

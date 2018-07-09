package vip.ipav.spring.utils;

import okhttp3.Response;
import vip.ipav.log.util.LoggerTools;
import vip.ipav.okhttp.OkHttpClientTools;

import java.io.IOException;
import java.util.Objects;

public class HttpUtil {

    public static String sendHttpTest(){
        Response response = null;
        try {
              response = OkHttpClientTools.getInstance().get()
                        .url("https://hao.360.cn/")
                        .addParam("src","lm")
                        .addParam("ls","n2a27c3f091")
                        .execute();

            String html = response.body().string();
            return html;
        } catch (IOException e) {
            LoggerTools.getCustomLogger().error("发送URL请求失败\n{}",e.getMessage());
        } finally {
            if(response != null){
                response.close();
            }
        }
        return null;
    }
}

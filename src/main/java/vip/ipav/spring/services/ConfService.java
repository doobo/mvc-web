package vip.ipav.spring.services;

import com.xxl.conf.core.annotation.XxlConf;

public class ConfService {
    @XxlConf("default.key02")
    public String key02;

    /**
     * XXL-CONF：$XxlConf{default.key03} XML占位符方式
     */
    public String paramByXml;

    public void setParamByXml(String paramByXml) {
        this.paramByXml = paramByXml;
    }

    @Override
    public String toString() {
        return "ConfService{" +
                "key02='" + key02 + '\'' +
                ", paramByXml='" + paramByXml + '\'' +
                '}';
    }
}

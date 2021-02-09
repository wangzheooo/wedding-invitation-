package com.ruoyi.marry.domain;

import lombok.Data;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.stereotype.Component;

/**
 * @Auther: auther
 * @Date: 2020/11/19 14:19
 * @Description:
 */
@Data
@Component
@ConfigurationProperties(prefix = "oos")
public class ConstantProperties {
    private String endpoint;
    private String keyid;
    private String keysecret;
    private String bucketname;
    private String filehost;
}

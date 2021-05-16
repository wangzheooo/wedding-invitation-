package com.ruoyi;

import org.apache.catalina.Context;
import org.apache.catalina.connector.Connector;
import org.apache.tomcat.util.descriptor.web.SecurityCollection;
import org.apache.tomcat.util.descriptor.web.SecurityConstraint;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;
import org.springframework.boot.web.embedded.tomcat.TomcatServletWebServerFactory;
import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.context.annotation.Bean;
import org.springframework.core.env.Environment;

import java.net.InetAddress;
import java.net.UnknownHostException;

/**
 * 启动程序
 *
 * @author ruoyi
 */
@SpringBootApplication(exclude = {DataSourceAutoConfiguration.class})
public class RuoYiApplication {
    public final static Logger log = LoggerFactory.getLogger(RuoYiApplication.class);
    public static void main(String[] args) {
        // System.setProperty("spring.devtools.restart.enabled", "false");
//        SpringApplication.run(RuoYiApplication.class, args);

        ConfigurableApplicationContext application = SpringApplication.run(RuoYiApplication.class, args);
        try {
            Environment env = application.getEnvironment();
            String ip = InetAddress.getLocalHost().getHostAddress();
            String port = env.getProperty("server.port");
            String path = env.getProperty("server.servlet.context-path");

            log.info("\n----------------------------------------------------------\n\t" +
                    "Application  is running! Access URLs:\n\t" +
                    "Local: \t\thttp://localhost:" + port + path + "\n\t" +
                    "OR \n\t" +
                    "Local: \t\thttps://localhost:" + port + path + "\n\t" +
                    "----------------------------------------------------------");
        } catch (UnknownHostException e) {
            e.printStackTrace();
        }
    }

    //此处往下的代码,是http自动跳https==========================================================
    @Value("${http.port}")
    Integer httpPort;

    @Value("${server.port}")
    Integer httpsPort;

    @Bean
    public TomcatServletWebServerFactory servletContainer() {
        TomcatServletWebServerFactory tomcat = new TomcatServletWebServerFactory() {
            @Override
            protected void postProcessContext(Context context) {
                SecurityConstraint constraint = new SecurityConstraint();
                constraint.setUserConstraint("CONFIDENTIAL");
                SecurityCollection collection = new SecurityCollection();
                collection.addPattern("/*");
                constraint.addCollection(collection);
                context.addConstraint(constraint);
            }
        };
        tomcat.addAdditionalTomcatConnectors(httpConnector());
        return tomcat;
    }

    @Bean
    public Connector httpConnector() {
        Connector connector = new Connector("org.apache.coyote.http11.Http11NioProtocol");
        connector.setScheme("http");
        //Connector监听的http的端口号
        connector.setPort(httpPort);
        connector.setSecure(false);
        //监听到http的端口号后转向到的https的端口号
        connector.setRedirectPort(httpsPort);
        return connector;
    }
    //============================================================================================================================
}
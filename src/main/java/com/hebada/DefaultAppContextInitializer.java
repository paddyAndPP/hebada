package com.hebada;

import org.springframework.context.ApplicationContextInitializer;
import org.springframework.context.support.PropertySourcesPlaceholderConfigurer;
import org.springframework.core.env.PropertiesPropertySource;
import org.springframework.core.io.support.PathMatchingResourcePatternResolver;
import org.springframework.web.context.ConfigurableWebApplicationContext;

import java.io.IOException;
import java.util.Properties;

/**
 * Created by MrLuo on 2016/10/10.
 */
public class DefaultAppContextInitializer implements ApplicationContextInitializer<ConfigurableWebApplicationContext> {

    public void initialize(ConfigurableWebApplicationContext context) {
        PropertyLoader propertyLoader = new PropertyLoader();
        try {
            propertyLoader.setLocations(new PathMatchingResourcePatternResolver().getResources("classpath*:*.properties"));
            context.getEnvironment().setIgnoreUnresolvableNestedPlaceholders(true);
            context.getEnvironment().getPropertySources().addLast(new PropertiesPropertySource("properties", propertyLoader.loadProperties()));
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }
    static class PropertyLoader extends PropertySourcesPlaceholderConfigurer {
        Properties loadProperties() throws IOException {
            return mergeProperties();
        }
    }
}


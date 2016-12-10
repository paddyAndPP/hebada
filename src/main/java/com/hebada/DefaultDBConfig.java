package com.hebada;

//import org.apache.commons.dbcp.BasicDataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.config.PropertyPlaceholderConfigurer;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.orm.jpa.JpaTransactionManager;
import org.springframework.orm.jpa.LocalContainerEntityManagerFactoryBean;
import org.springframework.orm.jpa.vendor.Database;
import org.springframework.orm.jpa.vendor.HibernateJpaVendorAdapter;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import javax.sql.DataSource;

import java.beans.PropertyVetoException;
import java.util.Properties;

/**
 * Created by MrLuo on 2016/10/7.
 */
//@Configuration
//@EnableTransactionManagement
//@EnableJpaRepositories(basePackageClasses = DefaultDBConfig.class)
public class DefaultDBConfig {

//    @Autowired
//    private Environment env;
//
//    //@Bean(name = "dataSource")
//    public DataSource dataSource() throws PropertyVetoException {
//        BasicDataSource dataSource = new BasicDataSource();
//        dataSource.setUsername(env.getRequiredProperty("jdbc.user"));
//        dataSource.setPassword(env.getRequiredProperty("jdbc.password"));
//        dataSource.setDriverClassName(env.getRequiredProperty("jdbc.driverClass"));
//        dataSource.setUrl(env.getRequiredProperty("jdbc.jdbcUrl"));
//        return dataSource;
//    }
//    //@Bean(name = "entityManager")
//    public LocalContainerEntityManagerFactoryBean entityManagerFactory() throws PropertyVetoException {
//        HibernateJpaVendorAdapter hibernateJpaVendorAdapter = new HibernateJpaVendorAdapter();
//        hibernateJpaVendorAdapter.setDatabase(Database.MYSQL);
//        hibernateJpaVendorAdapter.setShowSql(Boolean.valueOf(env.getProperty("hibernate.show_sql")));
//        hibernateJpaVendorAdapter.setGenerateDdl(true);
//        LocalContainerEntityManagerFactoryBean entityManagerFactoryBean = new LocalContainerEntityManagerFactoryBean();
//        entityManagerFactoryBean.setDataSource(dataSource());
//        /*entityManagerFactoryBean.setDataSource(dataSource());
//        Properties p = new Properties();
//        p.setProperty("hibernate.hbm2ddl.auto","update");
//        entityManagerFactoryBean.setJpaProperties(p);*/
//        entityManagerFactoryBean.setJpaVendorAdapter(hibernateJpaVendorAdapter);
//        entityManagerFactoryBean.setPackagesToScan(DefaultDBConfig.class.getPackage().getName());
//        return entityManagerFactoryBean;
//    }
//
//    //@Bean(name = "transactionManager")
//    public PlatformTransactionManager platformTransactionManager() throws PropertyVetoException {
//        JpaTransactionManager manager = new JpaTransactionManager();
//        manager.setEntityManagerFactory(entityManagerFactory().getObject());
//        return manager;
//    }

}

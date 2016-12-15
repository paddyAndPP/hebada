package com.hebada.aop;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;


/**
 * Created by aiiajj on 2016/12/14.
 */
@Aspect
@SuppressWarnings("all")
public class ExcutionAspect {

    /*@Pointcut("execution(* com.hebada.repository.*Dao..save(..))")
    public void saveCall(){}

    @Pointcut("execution(* com.hebada.repository.*Dao..update*(..))")
    public void updateCall(){}

    @Pointcut("execution(* com.hebada.repository.*Dao..delete*(..))")
    public void deleteCall(){}


    @AfterReturning(value="updateCall()" , argNames="rtv", returning="rtv")
    public void updateAfterReturningCall(JoinPoint joinPoint, Object rtv){
        //获取方法名
        String methodName = joinPoint.getSignature().getName();

    }*/
}

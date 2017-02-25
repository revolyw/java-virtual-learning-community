package framework.aspect;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.*;
import org.springframework.stereotype.Component;
import org.springframework.ui.ModelMap;
import org.springframework.web.servlet.ModelAndView;
import util.LoggerUtil;

/**
 * Created by Willow on 12/13/16.
 */
@Component
@Aspect
public class ExceptionAspect {
    //配置切入点,该方法无方法体,主要为方便同类中其他方法使用此处配置的切入点
    @Pointcut("execution(* controller..*.*(..))")
    public void exception() {
    }

    @Pointcut("execution(* service..*.*(..))")
    public void aspect() {
    }

    @Pointcut("execution(* controller.PageController.*(..))")
    public void layout() {
    }

    @Around("layout()")
    public String layoutAround(ProceedingJoinPoint joinPoint) {
        try {
            ModelMap context = (ModelMap) joinPoint.getArgs()[1];
            Object retVal = joinPoint.proceed();
            if (retVal instanceof String) {
                context.put("_page_body_", retVal + ".ftl");
                return "layout/layout";
            }
        } catch (Throwable e) {
            LoggerUtil.error("return layout error", e);
            return "404";
        }
        return "404";
    }

    /*
     * 配置前置通知,使用在方法aspect()上注册的切入点
	 * 同时接受JoinPoint切入点对象,可以没有该参数
	 */
    @Before("aspect()")
    public void before(JoinPoint joinPoint) {
        LoggerUtil.info("before " + joinPoint);
    }

    //配置后置通知,使用在方法aspect()上注册的切入点
    @After("aspect()")
    public void after(JoinPoint joinPoint) {
        LoggerUtil.info("after " + joinPoint);
    }

    //配置环绕通知,使用在方法aspect()上注册的切入点
//    @Around("aspect()")
    public void around(ProceedingJoinPoint joinPoint) {
        long start = System.currentTimeMillis();
        try {
            joinPoint.proceed();
            long end = System.currentTimeMillis();
            LoggerUtil.info("around " + joinPoint + "\tUse time : " + (end - start) + " ms!");

        } catch (Throwable e) {
            long end = System.currentTimeMillis();
            LoggerUtil.info("around " + joinPoint + "\tUse time : " + (end - start) + " ms with exception : " + e.getMessage());

        }
    }

    //配置后置返回通知,使用在方法aspect()上注册的切入点
    @AfterReturning("aspect()")
    public void afterReturn(JoinPoint joinPoint) {
        LoggerUtil.info("afterReturn " + joinPoint);
    }

    //配置抛出异常后通知,使用在方法aspect()上注册的切入点
    @AfterThrowing(pointcut = "exception()", throwing = "ex")
    public void afterThrow(JoinPoint joinPoint, Exception ex) {
        LoggerUtil.error(joinPoint.toShortString() + " : " + ex);
    }
}

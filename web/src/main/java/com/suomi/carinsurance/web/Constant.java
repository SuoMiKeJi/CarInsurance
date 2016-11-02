/**
 * Copyright (c) 2016, Stupid Bird and/or its affiliates. All rights reserved.
 * STUPID BIRD PROPRIETARY/CONFIDENTIAL. Use is subject to license terms.
 *
 * @Project : CarInsurance
 * @Package : com.suomi.carinsurance.web
 * @author <a href="http://www.lizhaoweb.net">李召(John.Lee)</a>
 * @EMAIL 404644381@qq.com
 * @Time : 13:17
 */
package com.suomi.carinsurance.web;

/**
 * <h1>常量</h1>
 *
 * @author <a href="http://www.lizhaoweb.cn">李召(John.Lee)</a>
 * @version 1.0.0.0.1
 * @notes Created on 2016年11月01日<br>
 * Revision of last commit:$Revision$<br>
 * Author of last commit:$Author$<br>
 * Date of last commit:$Date$<br>
 */
public class Constant implements net.lizhaoweb.spring.mvc.util.Constant {

    public static class Application implements net.lizhaoweb.spring.mvc.util.Constant.Application {
        /**
         * 应用上下文
         *
         * @author <a href="http://www.lizhaoweb.cn">李召(Jhon.Lee)</a>
         * @version Constant.Application
         * @notes Created on 2016年5月23日<br>
         * Revision of last commit:$Revision$<br>
         * Author of last commit:$Author$<br>
         * Date of last commit:$Date$<br>
         * <p/>
         */
        public static class ServletContext implements net.lizhaoweb.spring.mvc.util.Constant.Application.ServletContext {
            /**
             * 键
             *
             * @author <a href="http://www.lizhaoweb.cn">李召(Jhon.Lee)</a>
             * @version Constant.Application.ServletContext
             * @notes Created on 2016年5月23日<br>
             * Revision of last commit:$Revision$<br>
             * Author of last commit:$Author$<br>
             * Date of last commit:$Date$<br>
             * <p/>
             */
            public static class Key implements net.lizhaoweb.spring.mvc.util.Constant.Application.ServletContext.Key {
                /**
                 * Excel 导出
                 */
                public static final String EXPORT_EXCEL_WORKBOOK = Key.class.getName() + ".EXPORT_EXCEL_WORKBOOK";
            }
        }
    }

    /**
     * 系统
     */
    public static final class System {
        /**
         * 配置
         */
        public static final class Config {
            /**
             * 图表
             */
            public static final class Chart {
                /**
                 * 唯一标识
                 */
                public static final class Id {
                    /**
                     * 速度分布
                     */
                    public static final String SPEED_DISTRIBUTION = "speed-distribution";
                }
            }
        }
    }

    /**
     * 用户
     */
    public static final class Custom {
        /**
         * 配置
         */
        public static final class Config {
            /**
             * 导出
             */
            public static final class Export {
                /**
                 * Excel
                 */
                public static final class Excel {
                    /**
                     * 工作薄
                     */
                    public static final String WORKBOOK = "application.custom.config.export.excel.files";
                }
            }
        }
    }
}

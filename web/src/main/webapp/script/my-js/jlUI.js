﻿/* ui util*/
(function (win) {
    $.fn.effectHeight = function () {
        var marginTopString = $(this).css('marginTop');
        var marginTop = parseInt(marginTopString);

        var marginBottomString = $(this).css('marginBottom');
        var marginBottom = parseInt(marginBottomString);

        return $(this).outerHeight(true) + marginTop + marginBottom;
    };
    $.fn.offsetHeight = function () {
        return $(this).effectHeight() - $(this).height();
    };
    $.fn.effectWidth = function () {
        var marginLeftString = $(this).css('marginLeft');
        var marginLeft = parseInt(marginLeftString);

        var marginRightString = $(this).css('marginRight');
        var marginRight = parseInt(marginRightString);

        return $(this).outerHeight(true) + marginLeft + marginRight;
    };
    $.fn.offsetWidth = function () {
        return $(this).effectWidth() - $(this).width();
    };
    var jlUI = {
        regularExpression: {
            ajax_dataType: /^(json)|(html)|(xhtml)|(xml)|(script)|(text)$/ig,
            string_space: /(^\s*)|(\s*$)/g,
            http_https: /^((http(s?):\/\/)|(\/))[\w-\.]/gi,
            css_position_width: /^(left)|(center)|(right)|(\d+px)|(\d(\.\d*)?%)$/ig,
            css_position_height: /^(top)|(middle)|(bottom)|(\d+px)|(\d(\.\d*)?%)$/ig
        },
        showHtml: function (url, showId, ops) {
            if (typeof (ops) != "object") {
                ops = {};
            }
            var datas = null;
            $.ajax({
                type: "POST",
                async: false,
                url: url,
                data: {},
                dataType: "json",
                success: function (response, textStatus) {
                    datas = data;
                    if (typeof (ops.success) == "function") {
                        ops.success(response, textStatus);
                    }
                },
                error: function (XMLHttpRequest, textStatus, errorThrown) {
                    if (typeof (ops.error) == "function") {
                        ops.error(XMLHttpRequest, textStatus, errorThrown);
                    } else {
                        art.dialog({
                            title: "错误",
                            content: "出错啦！",
                            fixed: true,
                            okValue: '确定',
                            ok: function () {
                                return true;
                            }
                        }).lock();
                    }
                }
            });
            if (datas != null && typeof (datas) == "object" && datas.length > 0) {
                var storyHtml = "";
                for (var i = 0; i < datas.length; i++) {
                    var story = datas[i];
                    if (typeof (ops.item) == "function") {
                        storyHtml += ops.item(story);
                    } else {
                        storyHtml += story;
                    }
                }
                $("#" + showId).after(storyHtml);
            }
        },
        window: {
            pop: function (title, parameter, buttons) {
                var content = null;
                if (typeof (parameter) == "string") {
                    if (parameter.replace(ui.regularExpression.string_space, "").indexOf("<iframe") > -1) {
                        content = parameter;
                    } else if (parameter.match(ui.regularExpression.http_https)) {
                        content = "<iframe src=\"" + parameter + "\" />";
                    } else {
                        content = parameter;
                    }
                } else if (typeof (parameter) == "object") {
                    var properties = "";
                    for (key in parameter) {
                        if (key != "src" && key != "width" && key != "height") {
                            var value = parameter[key];
                            properties = properties + " " + key + "=\"" + value + "\"";
                        }
                    }
                    var size = new RegExp("^(\\d+(px)?)|(1?\\d{1,2}%)$", ["gi"]);
                    var src = typeof (parameter.src) == "string" ? parameter.src : null;
                    var width = typeof (parameter.width) == "number" || size.test(parameter.width) ? parameter.width : null;
                    var height = typeof (parameter.height) == "number" || parameter.height.match(size) ? parameter.height : null;
                    if (src != null) {
                        content = "<iframe " + properties + " src=\"" + src + "\"" + (width != null ? " width=\"" + width + "\"" : "") + (height != null ? " height=\"" + height + "\"" : "") + " />";
                    } else if (width != null && height != null) {
                        content = "<iframe " + properties + " src=\"\"" + (width != null ? " width=\"" + width + "\"" : "") + (height != null ? " height=\"" + height + "\"" : "") + " />";
                    } else {
                        content = parameter;
                    }
                } else {
                    content = parameter;
                }
                var config = {
                    id: "LIZHAO-UI-ART-DIALOG-WINDIW",
                    title: title,
                    fixed: true,
                    padding: 0,
                    esc: false,
                    content: content
                };
                if (buttons instanceof Array) {
                    config.button = buttons;
                }
                art.dialog(config).lock();
            },
            mainFrame: {
                pop: function (title, content, buttons) {
                    var config = {
                        id: "LIZHAO-UI-ART-DIALOG-WINDIW-FRAME-MAIN",
                        title: title,
                        fixed: true,
                        content: content
                    };
                    if (buttons instanceof Array) {
                        config.button = buttons;
                    }
                    var mainFrame = window.top.document.getElementById("mainFrame").contentWindow;
                    if (typeof (mainFrame) != "object") {
                        mainFrame = window.top.document.getElementsByName("mainFrame")[0].contentWindow;
                    }
                    mainFrame.art.dialog(config).lock();
                },
                close: function () {
                    var mainFrame = window.top.document.getElementById("mainFrame").contentWindow;
                    var mainFrameDialog = mainFrame.art.dialog.get("LIZHAO-UI-ART-DIALOG-WINDIW-FRAME-MAIN");
                    if (!mainFrameDialog.closed) {
                        mainFrameDialog.close();
                    }
                }
            },
            layout: {
                argument: [],
                fullScreen: function () {
                    jlUI.window.__win_fn.widthFullScreen()
                    jlUI.window.__win_fn.heightFullScreen();
                },
                init: function (ops) {
                    if (typeof (ops) != "object") {
                        return;
                    }
                    if (typeof (ops.offset) != "number") {
                        ops.offset = 0;
                    }
                    if (typeof (ops.isFill) != "boolean") {
                        ops.isFill = true;
                    }
                    if (typeof (ops.isPosition) != "boolean") {
                        ops.isPosition = false;
                    }
                    if (typeof (ops.position) != "object") {
                        ops.position = {
                            top: 0,
                            left: 0
                        };
                    }
                    if (typeof (ops.__offset) != "object") {
                        ops.__offset = {};
                    }
                    if (typeof (ops.position.vertical) != "number" && (typeof (ops.position.vertical) == "string" && !ops.position.vertical.match(ui.regularExpression.css_position_height))) {
                        ops.position.vertical = 0;
                    }
                    if (typeof (ops.position.horizontal) != "number" && (typeof (ops.position.horizontal) == "string" && !ops.position.horizontal.match(ui.regularExpression.css_position_width))) {
                        ops.position.horizontal = 0;
                    }
                    this.argument.push(ops);
                },
                resize: {
                    main: {
                        height: {
                            fill: function () {
                                var opsArray = ui.window.layout.argument;
                                if (typeof (opsArray) == "object" && opsArray instanceof Array) {
                                    for (var index in opsArray) {
                                        var ops = opsArray[index];
                                        if (ops.isFill == true) {
                                            var mainHeight = null, parentHeight = null;

                                            // 父容器
                                            if (typeof (ops.parent) == "undefined" || ops.parent == null) {
                                                parentHeight = $(window).height();
                                            } else if (typeof (ops.parent) == "number") {
                                                parentHeight = ops.parent;
                                            } else {
                                                var parentObject = $(ops.parent);
                                                if (typeof (parentObject) == "object") {
                                                    parentHeight = parentObject.outerHeight(true);
                                                } else {
                                                    parentHeight = 0;
                                                }
                                            }
                                            mainHeight = parentHeight;

                                            // 兄弟容器
                                            if (typeof (ops.brothers) == "object" && ops.brothers instanceof Array) {
                                                for (var brotherIndex in ops.brothers) {
                                                    var brotherHeight = null, brother = ops.brothers[brotherIndex];
                                                    if (typeof (brother) == "undefined" || brother == null) {
                                                        brotherHeight = 0;
                                                    } else if (typeof (brother) == "number") {
                                                        brotherHeight = brother;
                                                    } else {
                                                        var brotherObject = $(brother);
                                                        if (typeof (brotherObject) == "object") {
                                                            brotherHeight = brotherObject.outerHeight(true);
                                                        } else {
                                                            brotherHeight = 0;
                                                        }
                                                    }
                                                    mainHeight -= brotherHeight;
                                                }
                                            }

                                            // 计算主体高度
                                            mainHeight += ops.offset;
                                            if (mainHeight < 0) {
                                                mainHeight = 0;
                                            }

                                            // 主体
                                            var mainObject = null;
                                            if (typeof (ops.main) == "undefined" || ops.main == null) {
                                                mainObject = null;
                                            } else {
                                                mainObject = $(ops.main);
                                            }
                                            if (typeof (mainObject) == "object") {
                                                mainObject.height(mainHeight);
                                            }
                                        }
                                    }
                                }
                            }
                        },
                        position: function () {
                            var opsArray = ui.window.layout.argument;
                            if (typeof (opsArray) == "object" && opsArray instanceof Array) {
                                for (var index in opsArray) {
                                    var ops = opsArray[index];
                                    if (ops.isPosition == true) {
                                        var width = null, height = null, parentWidth = null, parentHeight = null, positionTop = null, positionLeft = null;

                                        // 父容器
                                        if (typeof (ops.parent) == "undefined" || ops.parent == null) {
                                            parentHeight = $(window).height();
                                            parentWidth = $(window).width();
                                        } else if (typeof (ops.parent) == "number") {
                                            parentHeight = ops.parent;
                                            parentWidth = ops.parent;
                                        } else {
                                            var parentObject = $(ops.parent);
                                            if (typeof (parentObject) == "object") {
                                                parentHeight = parentObject.outerHeight(true);
                                                parentWidth = parentObject.outerWidth(true);
                                            } else {
                                                parentHeight = 0;
                                                parentWidth = 0;
                                            }
                                        }
                                        height = parentHeight;
                                        width = parentWidth;

                                        // 兄弟容器
                                        if (typeof (ops.brothers) == "object" && ops.brothers instanceof Array) {
                                            for (var brotherIndex in ops.brothers) {
                                                var brotherWidth = null, brotherHeight = null, brother = ops.brothers[brotherIndex];
                                                if (typeof (brother) == "undefined" || brother == null) {
                                                    brotherHeight = 0;
                                                    brotherWidth = 0;
                                                } else if (typeof (brother) == "number") {
                                                    brotherHeight = brother;
                                                    brotherWidth = brother;
                                                } else {
                                                    var brotherObject = $(brother);
                                                    if (typeof (brotherObject) == "object") {
                                                        brotherHeight = brotherObject.outerHeight(true);
                                                        brotherWidth = brotherObject.outerWidth(true);
                                                    } else {
                                                        brotherHeight = 0;
                                                        brotherWidth = 0;
                                                    }
                                                }
                                                height -= brotherHeight;
                                                width -= brotherWidth;
                                            }
                                        }

                                        // 主体
                                        var mainObject = null, mainWidth = null, mainHeight = null;
                                        if (typeof (ops.main) == "undefined" || ops.main == null) {
                                            mainObject = null;
                                        } else {
                                            mainObject = $(ops.main);
                                        }
                                        mainHeight = mainObject.height();
                                        mainWidth = mainObject.width();

                                        // 计算宽高
                                        height += ops.offset;
                                        width += ops.offset;

                                        // 计算位置-高
                                        if (typeof (ops.position.vertical) == "number") {
                                            positionTop = ops.position.vertical;
                                        } else if (typeof (ops.position.vertical) == "string") {
                                            if (ops.position.vertical.match(/^\d+px$/ig)) {
                                                var pxIndex = ops.position.vertical.toLowerCase().indexOf("px");
                                                positionTop = parseInt(ops.position.vertical.substring(0, pxIndex));
                                            } else if (ops.position.vertical.match(/^\d+(\.\d*)?%$/ig)) {
                                                var pxIndex = ops.position.vertical.toLowerCase().indexOf("%");
                                                positionTop = parseFloat(ops.position.vertical.substring(0, pxIndex)) / 100;
                                            } else if (ops.position.vertical.match(/^bottom$/ig)) {
                                                positionTop = height;
                                            } else if (ops.position.vertical.match(/^middle$/ig)) {
                                                positionTop = (height - mainHeight) / 2;
                                            } else {
                                                positionTop = 0;
                                            }
                                        } else {
                                            positionTop = 0;
                                        }

                                        // 计算位置-宽
                                        if (typeof (ops.position.horizontal) == "number") {
                                            positionLeft = ops.position.horizontal;
                                        } else if (typeof (ops.position.horizontal) == "string") {
                                            if (ops.position.horizontal.match(/^\d+px$/ig)) {
                                                var pxIndex = ops.position.horizontal.toLowerCase().indexOf("px");
                                                positionLeft = parseInt(ops.position.horizontal.substring(0, pxIndex));
                                            } else if (ops.position.horizontal.match(/^\d+(\.\d*)?%$/ig)) {
                                                var pxIndex = ops.position.horizontal.toLowerCase().indexOf("%");
                                                positionLeft = parseFloat(ops.position.horizontal.substring(0, pxIndex)) / 100;
                                            } else if (ops.position.horizontal.match(/^bottom$/ig)) {
                                                positionLeft = width;
                                            } else if (ops.position.horizontal.match(/^middle$/ig)) {
                                                positionLeft = (width - mainWidth) / 2;
                                            } else {
                                                positionLeft = 0;
                                            }
                                        } else {
                                            positionLeft = 0;
                                        }

                                        if (typeof (mainObject) == "object") {
                                            var offset = mainObject.offset();
                                            if (typeof (ops.__offset.top) != "number") {
                                                ops.__offset.top = offset.top;
                                            }
                                            if (typeof (ops.__offset.left) != "number") {
                                                ops.__offset.left = offset.left;
                                            }
                                            var offsetTop = ops.__offset.top;
                                            var offsetLeft = ops.__offset.left;
                                            offsetTop += positionTop;
                                            offsetLeft += positionLeft;
                                            mainObject.offset({
                                                top: offsetTop,
                                                left: offsetLeft
                                            });
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            },
            __win_fn: {

                /**
                 * 宽度 - 全屏
                 */
                widthFullScreen: function () {
                    var bodyObject = $('body');
                    var allLefterObjects = bodyObject.find('[page-region="lefter"]');
                    var allRighterObjects = bodyObject.find('[page-region="righter"]');
                    var allCenterObjects = bodyObject.find('[page-region="center"]');
                    var allLefterWidth = 0, allRighterWidth = 0, offset = 0, bodyCount = allCenterObjects.size();

                    /**
                     * index - 选择器的 index 位置
                     * element - 当前的元素（也可使用 "this" 选择器）
                     */
                    allLefterObjects.each(function (index, element) {
                        allLefterWidth += $(this).effectWidth();
                    });

                    allRighterObjects.each(function (index, element) {
                        allRighterWidth += $(this).effectWidth();
                    });

                    allCenterObjects.each(function (index, element) {
                        offset += $(this).offsetWidth();
                    });

                    // 计算每个体的高度
                    var eachCenterWidth = ($(window).width() - allLefterWidth - allRighterWidth - offset) / bodyCount;

                    allCenterObjects.each(function (index, element) {
                        $(this).width(eachCenterWidth);
                    });
                },

                /**
                 * 高度 - 全屏
                 */
                heightFullScreen: function () {
                    var bodyObject = $('body');
                    var allHeaderObjects = bodyObject.find('[page-region="header"]');
                    var allFooterObjects = bodyObject.find('[page-region="footer"]');
                    var allBodyObjects = bodyObject.find('[page-region="body"]');
                    var bodyMarginTop = parseInt(bodyObject.css('marginTop')), bodyMarginBottom = parseInt(bodyObject.css('marginBottom'));
                    var allHeaderHeight = 0, allFooterHeight = 0, offsetHeight = 0, bodyCount = allBodyObjects.size(), offset = 3;

                    /**
                     * index - 选择器的 index 位置
                     * element - 当前的元素（也可使用 "this" 选择器）
                     */
                    allHeaderObjects.each(function (index, element) {
                        allHeaderHeight += $(this).effectHeight();
                    });

                    allFooterObjects.each(function (index, element) {
                        allFooterHeight += $(this).effectHeight();
                    });

                    allBodyObjects.each(function (index, element) {
                        offsetHeight += $(this).offsetHeight();
                    });

                    // 计算每个体的高度
                    var eachBodyHeight = ($(window).height() - bodyObject.offsetHeight() - allHeaderHeight - allFooterHeight - offsetHeight) / bodyCount - bodyMarginTop - bodyMarginBottom - offset;

                    allBodyObjects.each(function (index, element) {
                        $(this).height(eachBodyHeight);
                    });
                }
            }
        }
    };
    win.jlUI = jlUI;
})(window);
/*
 * jQuery.extend({ min : function(a, b) { return a < b ? a : b; }, max :
 * function(a, b) { return a > b ? a : b; } });
 */
$(document).ready(function () {
    jlUI.window.layout.fullScreen();
    $(window).resize(function () {
        jlUI.window.layout.fullScreen();
    });
});

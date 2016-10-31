/**
 * @license Copyright (c) 2003-2013, CKSource - Frederico Knabben. All rights
 *          reserved. For licensing, see LICENSE.html or
 *          http://ckeditor.com/license
 */

CKEDITOR.editorConfig = function(config) {
	// Define changes to default configuration here. For example:
	// config.language = 'fr';
	config.uiColor = '#1593C9';
	// config.startupMode = 'source';//默认模式为源码模式
	config.image_previewText = ''; // 预览区域显示内容
	config.enterMode = CKEDITOR.ENTER_BR;// 去掉BR
	config.shiftEnterMode = CKEDITOR.ENTER_P;// 去掉P
	config.filebrowserImageUploadUrl = __WEB_CROSS_DOMAIN_URL__ + "?crossURL=" + encodeURIComponent(__WEB_FILE_URL_ROOT__ + "/image_upload/ckeditor.file", "UTF-8") + "&model=web_fck"; // 待会要上传的action或servlet
};

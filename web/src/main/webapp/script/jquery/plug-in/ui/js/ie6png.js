function correctPNG() // correctly handle PNG transparency in Win IE < 7.
{
   for(var i=0; i < document.all.length; i++)
   {
		var img = document.all[i]
		//处理前景透明
		if(img.src && img.src.length > 0) 
		{
		   var imgName = img.src.toUpperCase()
		   if (imgName.substring(imgName.length-3, imgName.length) == "PNG")
		   {
			 var imgID = (img.id) ? "id='" + img.id + "' " : ""
			 var imgClick = (img.onclick) ? "onclick='" + img.onclick.toString().split('{')[1].split('}')[0].replace(/(^\s*)|(\s*$)/gm, "") + "' " : ""
			 var imgClass = (img.className) ? "class='" + img.className + "' " : ""
			 var imgTitle = (img.title) ? "title='" + img.title + "' " : ((img.alt) ? "alat='" + img.alt + "' ": "")
			 var imgStyle = "display:inline-block;" + img.style.cssText 
			 if (img.align == "left") imgStyle = "float:left;" + imgStyle
			 if (img.align == "right") imgStyle = "float:right;" + imgStyle
			 if (img.parentElement.href) imgStyle = "cursor:hand;" + imgStyle
			 if (img.onclick) imgStyle = "cursor:hand;" + imgStyle	
			 var strNewHTML = "<span " + imgID + imgClass + imgTitle + imgClick
			 + " style=\"" + imgStyle + ";"
			 + "filter:progid:DXImageTransform.Microsoft.AlphaImageLoader"
			 + "(src=\'" + img.src + "\', sizingMethod='scale');\"></span>" 
			 img.outerHTML = strNewHTML
		   }
		}
		//处理背景透明
		if(img.currentStyle && img.currentStyle.backgroundImage)
		{
			if (img.currentStyle.backgroundImage.toLowerCase().lastIndexOf(".png") != -1) 
			{	
				 var sM = (img.currentStyle.backgroundRepeat == 'no-repeat') ? 'crop' : 'scale';				
				 var bgimg = img.currentStyle.backgroundImage.substring(5, img.currentStyle.backgroundImage.length - 2)
				 var imgID = (img.id) ? "id='" + img.id + "' " : ""
				 var imgClick = (img.onclick) ? "onclick='" + img.onclick.toString().split('{')[1].split('}')[0].replace(/(^\s*)|(\s*$)/gm, "") + "' " : ""
				 var imgClass = (img.className) ? "class='" + img.className + "' " : ""
				 var imgTitle = (img.title) ? "title='" + img.title + "' " : ((img.alt) ? "alat='" + img.alt + "' ": "")
				 var imgStyle = "display:inline-block;" + delBackgroundImage(img.style.cssText)
				 if (img.align == "left") imgStyle = "float:left;" + imgStyle
				 if (img.align == "right") imgStyle = "float:right;" + imgStyle
				 var imgHref = (img.href) ? "href='" + img.href + "' " : ""
				 if (img.parentElement.href) imgStyle = "cursor:hand;" + imgStyle	
				 if (img.onclick) imgStyle = "cursor:hand;" + imgStyle	
				 var tag = img.tagName
				 var strNewHTML = "<" + tag + " " + imgID + imgHref + imgClick + imgClass + imgTitle
				 + " style=\"" + imgStyle + ";"
				 + "filter:progid:DXImageTransform.Microsoft.AlphaImageLoader"
				 + "(src=\'" + bgimg + "\', sizingMethod='" + sM + "');\">"
				 + img.innerHTML 
				 + "<//" + tag + ">"
				 img.outerHTML = strNewHTML
			}
		}
   }
}
function delBackgroundImage() {
	var arr = arguments[0].split(';')
	var result = ''
	for(var i=0; i < arr.length; i++)
	{
		if(arr[i].toLowerCase().lastIndexOf("background-image") == -1)
		{
			result += arr[i] + ';'
		}
	}
	return result.slice(0,-1)
}
var version = parseFloat(navigator.appVersion.split("MSIE")[1])
if (version < 7) window.attachEvent("onload", correctPNG)
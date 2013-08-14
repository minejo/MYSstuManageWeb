/**
 * 更新页面的新闻分类的小类列表
 */
function updateSmallTypeId() {
	var xml = xmlHttp.responseXML.documentElement;
	var smallTypes = xml.getElementsByTagName("smallType");
	var st = "";
	for (var i = 0; i < smallTypes.length; i ++) {
		var smallType = smallTypes[i];
		var id = smallType.getElementsByTagName('smallTypeId').item(0).firstChild.nodeValue;
		var name = smallType.getElementsByTagName('smallTypeName').item(0).firstChild.nodeValue;
		st = st + "<option value='" + id + "'>" + name + "</option>";
	}
	$("#smallTypeId").html(st);
}
var xmlHttp;
/**
 * 处理当异步数据传送完成后的操作
 */
function handleStateChange() {
	if (xmlHttp.readyState == 4) {
		if (xmlHttp.status == 200) {
			updateSmallTypeId();
		}
	}
}
/**
 * 开始执行异步数据传送
 * @param id 大类的ID号
 */
function GetSmallType(id) {
	var url ="news!searchSmallType?bigTypeId=" + id;
	startRequest(url);		// 在common_Ajax.js里，开始异步数据传送
}
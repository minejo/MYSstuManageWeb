var xmlHttp;
var placename;
/**
 * 开始执行异步数据传送
 * @param id 
 */
function GetDistrict(id, name) {
	var url = "activate!districtInfo?upid=" + id;
	placename = name;
	startRequest(url);
}

/**
 * 处理当异步数据传送完成后的操作
 */
function handleStateChange() {
	if (xmlHttp.readyState == 4) {
		if (xmlHttp.status == 200) {
			updateDistrict();
		}
	}
}

/**
 * 更新页面上的籍贯选项
 */
function updateDistrict() {
	var xml = xmlHttp.responseXML.documentElement;
	var root = xml.getElementsByTagName("item");
	var st = "";
	for (var i = 0; i < root.length; i ++) {
		var id = root[i].getAttribute("id");
		var name = root[i].getAttribute("name");
		st = st + "<option value='" + id +"'>" + name + "</option>";
	}
	if (placename == "province") {
		$("#city").html(st);
	}
	if (placename == "city") {
		$("#county").html(st);
	}
}
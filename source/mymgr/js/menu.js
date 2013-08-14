window.onload = function() {
	var divopt = document.getElementsByTagName("div");
	for (var i = 0; i < divopt.length; i++) {
		if (divopt[i].id != null) {
			divopt[i].onclick = function() {
				forder(this);
			};
		}
	}
};

function forder(opt) {
	var styname = 'sub'+opt.id;
	var imgname = 'img'+opt.id;
	var picpath = new Array('close_top.gif', 'open_top.gif');
	var parentpath = 'image/';
	styopt = document.getElementById(styname);
	styopt.style.display = styopt.style.display == 'block'?'none':'block';
	imgopt = document.getElementById(imgname);
	var list = imgopt.src.split("/");
	imgopt.src = list[list.length-1] == picpath[0]? parentpath+picpath[1]:parentpath+picpath[0];
}
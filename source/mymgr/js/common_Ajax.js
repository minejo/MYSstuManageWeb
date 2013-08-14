/**
 * 创建XMLHttpRequest对象  
 * @returns xmlHttp
 */
function createXMLHttpRequest() {
	// 兼容IE浏览器 
	var xmlHttp;
	try{
		xmlHttp = new ActiveXObject("Msxml2.XMLHTTP");
	} catch(e) {
		try {
			xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
		} catch(e2) {
			xmlHttp = false;
		}
	}
	// 兼容Mozilla、Safari等非IE浏览器 
	if (!xmlHttp && typeof XMLHttpRequest != 'undefined') {
		xmlHttp = new XMLHttpRequest();
	}
	return xmlHttp;
}

/**
 * 创建xmlHttp连接，发送接收数据
 * @param url 连接地址
 * @returns
 */
function startRequest(url) {
	xmlHttp = createXMLHttpRequest();
	/**
	 * onreadyStateChange
	 *   在readyState属性发生改变时触发 handleStateChange()函数
	 *   readyState的值表示了当前请求的状态,在事件处理程序中可以根据这个值来进行不同的处理
	 *   readyState有五种可取值
	 *   	0：尚未初始化
	 *   	1：正在加载
	 *   	2：加载完毕
	 *   	3：正在处理
	 *   	4：处理完毕
	 *   一旦readyState属性的值变成了4，就可以从服务器返回的响应数据进行访问了。 
	 */
	xmlHttp.onreadystatechange = handleStateChange;
	// 调用xmlHttp对象的open方法，打开与服务器之间的同步通信连接
	/**
	 * 建立异步连接
	 * xmlhttp.open(Method,Url,Async,User,Password)方法
	 * Method:表示Http方法，POST,GET,PUT,PROPFIND
	 * Url:参数请求的url
	 * Async:可选项，设置是否为异步通信，
	 *		默认true表示可以异步，
	 * 		取false,表明异步发出请求之后不需要等待服务端的响应，继续执行其他操作。
	 * User,password:可选项，表示请求的文件需要进行服务器进行验证
	 */
	xmlHttp.open("GET", url, true);
	/**
	 * 向服务器发送请求
	 * xmlhttp.send(null)
	 * 只有一个参数，该参数传递客户端发送给服务器的请求数据
	 * 该方法一般是在POST方式下传递参数，多个参数用&隔开
	 */
	xmlHttp.send(null);
}

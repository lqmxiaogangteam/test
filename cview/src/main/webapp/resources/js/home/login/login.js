var login = {
	
	verifyFlag : false,
	
	init:function(){
		var _this = this;
		
		var user_name_remember = $.cookie("user_name_remember");
		if(!(user_name_remember == null || user_name_remember == undefined || user_name_remember == "" || user_name_remember == "-1")){
			$("#username").val(user_name_remember);
			$("#user_name_remember").attr("checked",'true');
		}else{
			$("#user_name_remember").removeAttr("checked");
		}
		
		$("#verifyText").blur(function() {
			_this._verifyTextVerify(this);
		});
	},
	
	refreshVerify:function(){
		var url = cview.path
				+ "/verifycode/getcode?width=100&height=38&codeCount=4&sessionName=loginVerify&it="
				+ Math.random();
		$("#verifyImg").attr("src", url);
	},
	
	_verifyTextVerify: function(obj){
		var verifyCode = $(obj).val();
		$.ajax({
			url : cview.path + "/homePage/validateVerify",
			type : "post",
			cache : false,
			async : false,
			dataType : "json",
			data : {
				verifyCode : verifyCode
			},
			traditional : true,
			success : function(data, textStatus) {
				if (data == true || data == "true") {
					verifyFlag = true;
					$("#error_Message").css("display", "none"); 
				} else {
					$("#error_Message").css("display", "block");
					$("#error_content").html('验证码不正确'); 
				}
			},
			error : function(XMLHttpRequest, textStatus, errorThrown) {
				alert("请求失败");
			}
		});
	},
	
	//登录
	loginIn:function() {
		var username = $("#username").val();
		var password = $("#password").val();
		var verifyText = $("#verifyText").val();
		
		if(username == ""){
			$("#error_Message").css("display", "block");
			$("#error_content").html("用户名不能为空"); 
			return;
		}
		if(password == ""){
			$("#error_Message").css("display", "block");
			$("#error_content").html("密码不能为空"); 
			return;
		}
		if(verifyText == ""){
			$("#error_Message").css("display", "block");
			$("#error_content").html("验证码不能为空"); 
			return;
		}
		if(verifyFlag == false){
			$("#error_Message").css("display", "block");
			$("#error_content").html("验证码不正确"); 
			return;
		}
		
		$.ajax({
			url : cview.path + "/homePage/user/login",
			type : "post",
			cache : false,
			async : false,
			dataType : "json",
			data : {
				userName : username,
				passWord : password,
				verifyCode : verifyText
			},
			traditional : true,// 使用传统方式序列化
			success : function(data, textStatus) {
				if (data.statusCode == 200) {
					$.cookie("token", data.returnObj, {
						expires : 1,
						path : '/'
					});
					var checkedFlag = document.getElementById( "user_name_remember" ).checked;
					if(checkedFlag){
						$.cookie("user_name_remember", $("#username").val());
					}else{
						$.cookie("user_name_remember","");
					}
					location.href = cview.path + "/base/userManage/manageHome";
				} else {
					$("#error_Message").css("display", "block");
					$("#error_content").html(data.returnObj||'用户名或密码不正确'); 
				}
			},
			error : function(XMLHttpRequest, textStatus, errorThrown) {
				alert(errorThrown);
			}
		});
	}

	
	
};   
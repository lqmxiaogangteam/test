var menuController = {
		
	queryHeadMenu:function(){
		var _this = this;
		$.ajax({
			url: cview.path+"/base/MenuController/queryHeadMenu",
			type: "post",
			cache: false,
			async: false,
			dataType: "json",
			data: {
				parentId:"ROOT"
			},
			traditional: true,
			success: function(data, textStatus){
				if(data.statusCode == 200){
					var obj = data.returnObj;
					_this._addHeadMenu(obj);
				}else{
					alert(data.returnObj);
				}
			},
			error: function(XMLHttpRequest, textStatus, errorThrown){
				alert(errorThrown);
			}
		});
	},
	
	_addHeadMenu:function(array){
		for(var i in array){
			var obj = array[i];
			var newHtml = "<li><a data-id='"+ obj.id +"' href='" + cview.path + obj.url + "'>"+ obj.name +"</a></li>";
			$("#menu").append(newHtml);
		}
	},
	
	queryLeftMenu:function(){
		var _this = this;
		$.ajax({
			url: cview.path+"/base/MenuController/queryLeftMenu",
			type: "post",
			cache: false,
			async: false,
			dataType: "json",
			data: {
				parentId:"VISITOR03"
			},
			traditional: true,
			success: function(data, textStatus){
				if(data.statusCode == 200){
					var obj = data.returnObj;
					_this._addLeftMenu(obj);
				}else{
					alert(data.returnObj);
				}
			},
			error: function(XMLHttpRequest, textStatus, errorThrown){
				alert(errorThrown);
			}
		});
	},
	
	_addLeftMenu:function(array){
		for(var i in array){
			var obj = array[i];
			var newHtml = "<li><a data-id='"+ obj.id +"' href='" + cview.path + obj.url + "'>"+ obj.name +"</a></li>";
			$("#menu").append(newHtml);
		}
	}
};

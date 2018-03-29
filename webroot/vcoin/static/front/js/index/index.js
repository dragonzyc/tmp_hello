var login={
		indexLoginOnblur:function () {
		    var uName = document.getElementById("indexLoginName").value;
		    if (!util.checkEmail(uName) && !util.checkMobile(uName)) {
		        util.showerrortips("indexLoginTips",language["comm.error.tips.1"]);
		    } else {
		    	util.hideerrortips("indexLoginTips");
		    }
		},
		loginIndexSubmit:function () {
		    util.hideerrortips("indexLoginTips");
		    var url = "/user/login/index.html?random=" + Math.round(Math.random() * 100);
		    var uName = document.getElementById("indexLoginName").value;
		    var pWord = document.getElementById("indexLoginPwd").value;
		    var longLogin = 0;
		    if (util.checkEmail(uName)) {
		        longLogin = 1;
		    }
		    if (!util.checkEmail(uName) && !util.checkMobile(uName)) {
		    	util.showerrortips("indexLoginTips", language["comm.error.tips.1"]);
		        return
		    }
		    if (pWord == "") {
		    	util.showerrortips("indexLoginTips", language["comm.error.tips.2"]);
		        return;
		    } else if (pWord.length < 6) {
		    	util.showerrortips("indexLoginTips", language["comm.error.tips.3"]);
		        return;
		    }
		    var param = {
		        loginName: uName,
		        password: pWord,
		        type: longLogin
		    };
		    jQuery.post(url, param, function (data) {
		        if (data.code == 0) {
		            if (document.getElementById("forwardUrl") != null && document.getElementById("forwardUrl").value != "") {
		                var forward = document.getElementById("forwardUrl").value;
		                forward = decodeURI(forward);
		                window.location.href = forward;
		            } else {
		                var whref = document.location.href;
		                if (whref.indexOf("#") != -1) {
		                    whref = whref.substring(0, whref.indexOf("#"));
		                }
		                window.location.href = whref;
		            }
		        } else if (data.code <0) {
		        	util.showerrortips("indexLoginTips", data.msg);
		            document.getElementById("indexLoginPwd").value = "";
		        }
		    },"json");
		},
		refreshMarket:function(){
			var url="/real/indexmarket.html?random=" + Math.round(Math.random() * 100);
			$.post(url,{},function(data){
				$.each(data,function(key,value){
//					$("#"+key+"_high").html("￥"+Number(value.high));
//					$("#"+key+"_low").html("￥"+Number(value.low));
//					$("#"+key+"_totalAmt").html("￥"+Number(value.totalAmt));
//					$("#"+key+"_price").html("￥"+Number(value.price));
					$("#"+key+"_total").html(Number(value.total));
					
//					$("#"+key+"_total15Amt").html("￥"+Number(value.total15D));
					
					if(Number(value.rose)>=0){
						$("#"+key+"_rose").removeClass("text-danger").removeClass("text-success").addClass("text-danger").html('+'+value.rose+'%');
						$("#"+key+"_price").removeClass("text-danger").removeClass("text-success").addClass("text-danger").html("￥"+value.price);
					}else{
						$("#"+key+"_rose").removeClass("text-danger").removeClass("text-success").addClass("text-success").html(value.rose+'%');
						$("#"+key+"_price").removeClass("text-danger").removeClass("text-success").addClass("text-success").html("￥"+value.price);
					}
					
//					if(Number(value.rate7)>=0){
//						$("#"+key+"_rose7D").removeClass("text-danger").removeClass("text-success").addClass("text-danger").html('+'+value.rate7+'%');
//					}else{
//						if(Number(value.rate7) == -999999){
//							$("#"+key+"_rose7D").removeClass("text-danger").removeClass("text-success").addClass("text-success").html('--');
//						}else{
//							$("#"+key+"_rose7D").removeClass("text-danger").removeClass("text-success").addClass("text-success").html(value.rate7+'%');
//						}
//					}
//					
//					var istrade = value.istrade;
//				    if(istrade == true || istrade == 'true'){
//				    	$("#"+key+"_trade").html("去交易");
//				    	document.getElementById(key+"_trade").style.color = "red";
//				    }else{
//				    	$("#"+key+"_trade").html("暂停中");
//				    	document.getElementById(key+"_trade").style.color = "black";
//				    }
					
					
					
				$.plot($("#"+key+"_plot"), [{shadowSize:0, data:value.data}],{ grid: { borderWidth: 0}, xaxis: { mode: "time", ticks: false}, yaxis : {tickDecimals: 0, ticks: false},colors:['#f99f83']});
				});
			});
			window.setTimeout(function() {
				login.refreshMarket();
			}, 5000);
		},
		loginerror:function(){
			var errormsg =$("#errormsg").val();
			if(errormsg!="" && errormsg!="/"){
				util.showerrortips("", errormsg);
			}
		}
};
$(function(){
	login.loginerror();
	$("#indexLoginPwd").on("focus",function(){
		login.indexLoginOnblur();
		util.callbackEnter(login.loginIndexSubmit);
	});
	$("#loginbtn").on("click",function(){
		login.loginIndexSubmit();
	});
	
	$(".help_list li").mousemove(function() {
        var long = 104;
        $(this).data("long") && (long = 134),
        $(this).find("span").stop().animate({
            width: long + "px"
        },
        200);
    }).mouseout(function() {
        $(this).find("span").stop().animate({
            width: "0px"
        },
        200);
    });
	login.refreshMarket();	
});
/*
function lottery(){
	    var url = "/gamecenter/golottery.html";
	    jQuery.post(url, null, function (data) {
	        if (data.code == 0) {
	            if (data.qty ==0) {
	            	util.showerrortips("", "很遗憾，没有中奖，再接再厉！", {
						okbtn : function() {
							location.reload(true);
						}
					});
	            } else {
	            	$("#showQty").html(data.qty);
	            	$("#showName").html(data.name);
	            	document.getElementById("showDiv").style.display = "block";
	            }
	        } else if (data.code == -1) {
	        	util.showerrortips("",data.msg, {
					okbtn : function() {
						location.reload(true);
					}
				});
	        }
	    },"json");
	
}*/

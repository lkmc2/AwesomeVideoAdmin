// 删除视频
var deleteVideo = function (videoId) {
    var flag = window.confirm("是否删除该视频？");
    if (!flag) {
        return;
    }

    $.ajax({
        url: $("#hdnContextPath").val() + "/video/deleteVideo?videoId=" + videoId,
        type: "POST",
        async: false,
        success: function (data) {
            if (data.status === 200 && data.msg === "OK") {
                alert("操作成功");
                var jqGrid = $("#videoList");
                jqGrid.jqGrid().trigger("reloadGrid");
            } else {
                console.log(JSON.stringify(data));
            }
        }
    })
};

// 定义视频列表对象
var VideoList = function () {
    // 举报列表
	var handleUsersReportsList = function() {
		// 上下文对象路径
		var hdnContextPath = $("#hdnContextPath").val();
		var apiServer = $("#apiServer").val();

		var jqGrid = $("#videoList");  
        jqGrid.jqGrid({  
            caption: "视频列表",
            url: hdnContextPath + "/video/videoList",
            mtype: "post",  
            styleUI: 'Bootstrap',//设置jqgrid的全局样式为bootstrap样式  
            datatype: "json",  
            colNames: ['ID', '发布者', '描述', '视频内容', '时长', '操作', '宽度', '高度', '封面图', '赞美数', '状态', '创建时间'],
            colModel: [  
                { name: 'id', index: 'id', width: 30, sortable: false, hidden: false },  
                { name: 'userName', index: 'userName', width: 30, sortable: false },
                { name: 'videoDesc', index: 'videoDesc', width: 60, sortable: false },
                { name: 'videoPath', index: 'videoPath', width: 30, sortable: false,
                    formatter:function(cellvalue, options, rowObject) {
                        var src = apiServer + cellvalue;
                        var display = "<a href='" + src + "' target='_blank'>点我播放</a>";
                        return display;
                    }
                },
                { name: 'videoSeconds', index: 'videoSeconds', width: 20, sortable: false },
                {
                    name: '', index: '', width: 20,
                    formatter: function (cellvalue, option, rowObject) {
                        var html = '<button class="btn btn-outline blue-chambray" id="" onclick=deleteVideo("' + rowObject.id + '") style="padding: 1px 3px 1px 3px;">删除</button>';
                        return html;
                    }
                },
                { name: 'videoWidth', index: 'videoWidth', width: 15, sortable: false },
                { name: 'videoHeight', index: 'videoHeight', width: 15, sortable: false },
                {
                    name: 'coverPath', index: 'coverPath', width: 50, sortable: false,
                    formatter: function (cellvalue, options, rowObject) {
                        var src = apiServer + cellvalue;
                        var img = "<img src='" + src + "' width='120'/>";
                        return img;
                    }
                },
                { name: 'likeCount', index: 'likeCount', width: 20, sortable: false },
                { name: 'status', index: 'status', width: 15, sortable: false, hidden: false,
                	formatter:function(cellvalue, options, rowObject) {
			    		return cellvalue === 1 ? '正常' : '禁播';
			    	}
			    },
                { name: 'createTime', index: 'createTime', width: 40, sortable: false, hidden: false,
                	formatter:function(cellvalue, options, rowObject) {
                		var createTime = Common.formatTime(cellvalue,'yyyy-MM-dd HH:mm:ss');
			    		return createTime;
			    	}
			    }
            ],  
            viewrecords: true,  		// 定义是否要显示总记录数
            rowNum: 10,					// 在grid上显示记录条数，这个参数是要被传递到后台
            rownumbers: true,  			// 如果为ture则会在表格左边新增一列，显示行顺序号，从1开始递增。此列名为'rn'
            autowidth: true,  			// 如果为ture时，则当表格在首次被创建时会根据父元素比例重新调整表格宽度。如果父元素宽度改变，为了使表格宽度能够自动调整则需要实现函数：setGridWidth
            height: 500,				// 表格高度，可以是数字，像素值或者百分比
            rownumWidth: 36, 			// 如果rownumbers为true，则可以设置行号 的宽度
            pager: "#videoListPager",		// 分页控件的id  
            subGrid: false				// 是否启用子表格
        }).navGrid('#videoListPager', {
            edit: false,
            add: false,
            del: false,
            search: false
        });

        // 随着窗口的变化，设置jqgrid的宽度  
        $(window).bind('resize', function () {  
            var width = $('.videoList_wrapper').width() * 0.99;  
            jqGrid.setGridWidth(width);  
        });  
        
        // 不显示水平滚动条
        // jqGrid.closest(".ui-jqgrid-bdiv").css({ "overflow-x" : "hidden" });
    };
    
    return {
        // 初始化各个函数及对象
        init: function () {
        	handleUsersReportsList();
        }
    };
}();


jQuery(document).ready(function() {
	VideoList.init();
});
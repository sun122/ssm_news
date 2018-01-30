var nav = new Vue({
    el: "#nav",
    data:{name:[
    ]
    },
    method: $.ajax({
        url: "http://192.168.43.228:8080/ssm_new/showAllCatelory",
        type: "get",
        dataType:"json",
        async: true,
        success: function (result) {
            nav.name = result.extend.catelist.list;
        },
        error: function () {
            alert("error");
        }
    })
})
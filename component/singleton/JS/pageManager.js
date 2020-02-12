.pragma library
/*
主窗口界面控制器
*/
//var a =1,b;
//var obj = {

//}
//Object.defineProperty(obj,'a',{
//                          get:function() {
//                              console.log("get")
//                              return a
//                          },
//                          set: function(value) {
//                              console.log("set")
//                              a = value;
//                              b = a + 1;
//                          }
//                      })
//obj.a = 1;
//console.log("a:"+a)//1
//console.log("b:"+b)//2
//obj.a = 2;
//console.log("a:"+a)//2
//console.log("b:"+b)//3

//替换stackview中的组件
function load_page(stack,name,components) {
    switch (name) {
    case "新建任务":
    case "历史任务":
    case "系统设置":
    case "参数设定":
    case "校准":
        stack.push(components[name])
        break
    default:
        break
    }
}


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

//控制stackview
function controlStack(stack,name,components){
    var item = getStackItem(stack,name)
    if(item === null){
        console.log("栈中不存在该组件")
        push_page(stack,name,components)
    }else{
        console.log("栈中存在该组件")
        pop_page(stack,item)
    }
}

//控制stackview中的组件load_page
function push_page(stack,name,components) {
    switch (name) {
    case "新建任务":
    case "历史任务":
    case "系统设置":
    case "参数设定":
    case "校准":
    case "新建任务-参数界面":
        stack.push(components[name])
        break
    default:
        break
    }
}

//控制stackview中的组件load_page
function pop_page(stack,item) {
    stack.pop(item)
}

//获得stackView中的组件，如果存在返回组件，否则，返回null
function getStackItem(stack,name){
    var resultItem = stack.find(function(item){
        //如果存在子串，说明存在组件，并且存在子页面，直接跳转到子页面就好了
        return ((item.pageId.indexOf(name) !== -1) ? true : false)
    }
    );
    return resultItem
}


.pragma library

var a =1,b;
var obj = {

}
Object.defineProperty(obj,'a',{
                          get:function() {
                              console.log("get")
                              return a
                          },
                          set: function(value) {
                              console.log("set")
                              a = value;
                              b = a + 1;
                          }
                      })
obj.a = 1;
console.log("a:"+a)//1
console.log("b:"+b)//2
obj.a = 2;
console.log("a:"+a)//2
console.log("b:"+b)//3


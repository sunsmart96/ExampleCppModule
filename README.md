# ExampleCppModule

两个示例代码，来展示cmake和xmake如何使用c++ module特性进行开发。

着重点在于一个项目，分为多个组件，不同的组件是编译成动态度给主程序调用的。这些特性在cmake和xmake中如何配合c++ 最新的module使用。


c++版本说明，虽然module1是cpp 20的特性，但是20版本标准库支持不到位，这在c++ 23版本获得了改进，可以直接import std;
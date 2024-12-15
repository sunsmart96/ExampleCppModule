# ExampleCppModule

两个示例代码，来展示cmake和xmake如何使用c++ module特性进行开发。

着重点在于一个项目，分为多个组件，不同的组件是编译成动态度给主程序调用的。这些特性在cmake和xmake中如何配合c++ 最新的module使用。


c++版本说明，虽然module1是cpp 20的特性，但是20版本标准库支持不到位，这在c++ 23版本获得了改进，可以直接import std;
xmake版本说明v 2.9.6
cmake版本说明v 3.31.2

编译器和平台我使用的是msvc vs2022 v143 window11系统。其他平台和编译器我没试过。

尽量使用比我版本更新的。我这是写这个demo时候最新的了。因为这是对c++新特性的支持，所以越新支持的越完善。

cmake 构建编译方法：

在主目录就是src所在目录建立一个build文件夹，shell 当前目录进入到build
执行
1. cmake ..
2. cmake --build .

在build文件下下面就会生成整个项目的vs项目文件，后续修改调试就可以在vs里面做了


xmake 构建编译方法

在主目录下shell执行 xmake build是编译代码
在主目录下shell执行 xmake run是运行可执行文件

如果想生成vs项目文件

在主目录下执行命令 

xmake project -k vsxmake -a x64

会生成vsxmake2022文件夹，里面就有vs1项目文件，点击就可以在vs里面修改代码调试了

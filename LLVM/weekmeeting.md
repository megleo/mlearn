# Week Meeting

## 0427
1. 编译LLVM环境，已经能够在ubuntu18.04 LTS上成功运行。
2. 万花筒代码：
- Lexer 词法分析： Token的枚举定义，以及如何获取每个token的 gettok() 函数。

- 抽象语法树类： 基类ExprAST基类，

  - 派生类 ： NumberExprAST - 数字文字的表达式类，如“1.0”
  - 派生类：VariableExprAST - 变量的表达式类， 如 “a”
  - 派生类：CallExprAST - 函数调用的表达式类
  - 派生类： PrototypeAST 此类表示函数的“原型”，它捕获其名称及其参数名称（因此隐式地表示函数采用的参数数量）。
  - 派生类：FunctionAST - 用于表示函数定义的类

  

  CurTok/getNextToken - 提供一个简单的令牌缓冲区。 

  CurTok 是解析器正在查看的当前标记。 

  getNextToken 从词法分析器读取另一个标记并用其结果更新 CurTok。

- Code Generation

  为了生成LLVM IR， 在每个AST类中声明了一个虚函数codegen(). 每个派生类去实现这个函数
  
  
  
  



## 0413

- LLVM 学习， 概念， 安装， 例子跑通
- 万花筒例子， 跑通， 看懂代码

---

## 0402

### 课题背景

SystemC做仿真的时候，是串行执行，并不支持并行执行，所以导致整个仿真过程十分的缓慢。

目的是让不涉及数据竞争的SystemC代码能够并行执行。

方法是让编译器能够自动分析出那些代码部分不涉及到数据竞争， 进而让这部分的代码能够并行执行。



### 课题思路

- IR并发
- 并发信息存在于语法树中， 不同的线程之间可以根据语法树确定是否做并行执行。

### 需要查找的资料

- 数据竞争
- LLVM资料
- 编译原理的知识的补充。

### 代码部分

- LLVM的编译



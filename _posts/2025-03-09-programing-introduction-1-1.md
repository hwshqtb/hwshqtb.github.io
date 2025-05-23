---
layout: post

title: 编程导论：1.1：什么是编程
author: hwshqtb
license: <p xmlns:cc="http://creativecommons.org/ns#" >本文的授权方式为 <a href="https://creativecommons.org/licenses/by/4.0/" target="_blank" rel="license noopener noreferrer" style="display:inline-block;">Creative Commons Attribution 4.0 International<img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/cc.svg" alt=""><img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/by.svg" alt=""></a></p>
modified_date: 2025-03-13

categories: programing
tags: programing-introduction
excerpt: "通过编程语言、计算机及其用途之演变史，给出编程的定义。"
---
在讨论什么是编程之前，我们有必要回顾计算机的历史。

### 前电子计算机时代
人类对于大量数的计算的需求由来已久，因此发展出了大量的计算工具——算筹、算盘、计算尺等，用以处理四则运算、指对运算等，以及诸如帕斯卡计算器、莱布尼茨步进计算器、差分机、微分机、分析机等机械计算器。这些工具一方面只能处理数而不能处理更广泛的数据，另一方面单独的某个工具只能做少数几种运算。

### 计算机的早期——电子计算机的发明（二十世纪四十年代到五十年代）
1931年，库尔特·哥德尔成功给出了希尔伯特纲领的前两问——完备性、相容性的答案——否。此时还剩余一个问题：确定性，即存在一个过程（即算法），能确定一个形式化的命题为真或假。1936年，艾伦·图灵提出了图灵机这一数学上的、可以解决无穷多个问题的机器，通过在这个机器上构造出不可判断真假的命题进而否定了确定性。但是，图灵机这一强大的机器，催生出了对于通过一个尽可能通用的机器解决尽可能问题的思想。

1942年成功测试运行的ABC计算机是最早电子计算机（利用电子管进行构建），通过纸带输入欲求解的线性方程组，通过开关开始计算。但是其不能进行编程（这里指的是可自定义进行各类运算）。

在国防需求的推动下，由美国军方资助，带着ABC计算机的灵感，在图灵机的指导下，1946年，世界上第一台通用电子计算机ENIAC于宾夕法尼亚大学诞生，其通过插拔电缆和拨动开关的方式来设定程序以实现计算。与此同时，冯·诺依曼提出了冯·诺依曼架构，成为所有现代计算机的通用架构。总体而言，这个时期的计算机直接处理的是二进制数据，通过直接二进制数（即所谓的机器语言）作为程序由计算机执行。

### 计算机的理论研究和第一、二次普及（二十世纪五十年代后期到七十年代）
自冯·诺依曼架构提出起，计算机出现了软件和硬件的分化。如果说后者关注的是如何在现实中构建图灵机，那么前者关注的就是如何在图灵机上解决实际问题。正因对于如何解决问题的思考，关于计算机的理论——理论计算机科学蓬勃发展。事实上，大部分关键算法都在这一时期提出：
- 基础算法：Floyd算法（1962年，图论领域—最短路），Dijkstra算法（1962年，图论领域—最短路），A*算法（1968年，图论领域—最短路，搜索领域——启发式算法），KMP算法（1977年，计算理论—自动机理论，字符串—字符串匹配），BM算法（1977年，计算理论—自动机理论，字符串—字符串匹配），正则表达式（1950s，计算理论—自动机理论，字符串—字符串匹配）等；
- 数据结构：Trie（1960年）AVL树（1962年），堆（1964年），B树（1970年），红黑树（1978年）等；
- 进阶算法（理论）：计算理论（包括形式语言及自动机理论、可计算性理论以及计算复杂度理论），人工智能，计算机网络，计算机图形学等。

与此同时，由于晶体管和小规模集成电路的出现，伴随着计算机的第一次小型化，计算机走向大型商业等需要大量科学计算的行业（例如第一台商业计算机IBM701），以及高校等科研机构，出现了诸如数据库（1960年代中期）、早期网络（1969年正式运行的ARPANET）等项目，因此也出现了最早的、只关注软件（因此称为高级语言）的四种编程语言：
- COBAL，1959年，可读性高，用于商业、银行业；
- LISP，1958年，来源于数学，用于研究；
- Fortran，1957年，出现结构化思想，用于科学计算；
- ALGOL，1958年，出现结构化思想，用于教学。

由于计算机在这些领域的进一步应用，出现了BASIC（1965年，为了降低编程难度由Fortran简化而来的高级语言），Simula（1967年，出现面向对象思想的高级语言）和Pascal（1970年，第一个结构化编程语言、高级语言，广泛应用）。

随着计算机进一步小型化，为了在小型计算机上能够实现丰富的功能（例如娱乐需求——1971年第一款电子游戏《Computer Space》），出现一种通过创造性的引入指针这一概念，能够便于程序员操纵硬件的编程语言（所谓的中级语言）——C语言（1972年），伴随着用其编写的第一个操作系统Unix（1972年）出现。

### 计算机的第三次普及——跨界广泛应用（二十世纪七十年代后期到九十年代初）
集成电路的进一步发展允许计算机通过若干组件化的小型硬件（微处理器、微型芯片等）构建，因此计算机现在可以出现在任何地方，结合控制论通过计算机进行自动化控制管理也成为可能。比如用于文字排版的Tex（1982年）。

这也要求对于硬件应具有更强的设计能力，因此出现了Verilog（1986年）。

这也提高了对程序员数量的需求。为了能够进一步简化编程并使其符合人类认识习惯以增加程序员数量，出现了面向对象的编程语言——Smalltalk（1976年的Smalltalk-76），Objective-C（1983年），C++（1983年），Java（1991年，抓住了第四次普及的浪潮而腾飞）等，以及便于编写简单功能的脚本语言如Perl（1987年），Python（1989年）。

同时，面对着计算机行业的各大巨头通过各种协议限制用户的情况，出现了旨在使计算机用户获得自由计算的权利，即GNU运动（1983年起）。

### 计算机的第四次普及——广泛信息交流（二十世纪九十年代起）
在硬件的进一步发展下，包括但不限于以下几个分支大幅发展，构成了广泛的信息交流：
- 以互联网（1991年万维网成功实现）为代表的计算机通讯，并出现了专用语言：HTML（1991年），Javascript（1995年），PHP（1995年），CSS（1996年），Markdown（2004年）等；
- 现代服务器兴起，出现了Ruby（1995年），Go（也称Golang，2007年）等；
- 科学计算、仿真、模拟、验证，出现了R（1991年），Matlab（商业化起于1984年），Mathematica（1988年），Julia（2012年）；
- 高安全性/高保证需求（如商业高频交易）增加：Haskell（1990年），Ocaml（1996年），Rust（2012年）等；
- 低代码/无代码编程兴起；
- 计算机图形学、人工智能等再度发展；

---

上述过程可以总结为：随着需求的发展，计算机能够实现的功能也不断扩展，所用以实现功能的编程语言也随之发展。

程序员在其中起的作用，也即编程的定义就是：
> 把以自然语言描述的需求，转化为以形式语言描述的功能，最终用合适的方法编写为实现。

依这个定义，可以对编程进一步阐述：
- 编程不是编写代码，或者说，编写代码不是编程的必须过程，且即使需要编写代码，其所占的比重也是较低的。这一点在大型、长期的项目中尤为明显，也即组织、管理、维护代码和功能更为重要。
- 编程不是科学，或者说，编程在绝大多数情况下是对于科学规律的先验应用，因此编程具有相当大的工程性。
- 编程与数学具有一定关联，即可以将编程视为特殊数学理论（即范畴论等）的实践，也可以视为形式语言的实例，可以用这些理论作为指导（例如Lisp、Haskell、OCaml等函数式语言及现代编程语言的lambda函数），但不应陷入其中。

总体而言，编程是一项处于工程、科学和数学之间一种业务。
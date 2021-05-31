---
title: 请不要轻易的说「事实标准」
published_date: "2021-04-24 03:00:19 -0700"
layout: default.liquid
is_draft: false
---
我最近又看到了有人在博客里说「istio 已经成为服务网格的事实标准」。我知道作者其实只是想让大家感觉到这个东西有多么流行。但是现在仍然是行业快速发展的时期，Linkerd 作为 CNCF 孵化项目都没说话，Traefik 的 Maesh 现在也对服务网格有了新的看法（DaemonSet?），Nginx 都打算趟这个浑水，SMI 都刚刚建立，更不要说众多云厂商自己也在做。依我看，方便你管理一切网格的 SuperGloo,  都有机会成为「事实标准」。

我并不是因为我是 Linkerd 的粉丝而要搞什么宗教战争。我只是觉得，这种说法很容易让读者觉得「原来这才是标准？那我只要会这个就不用学别的了！」。因为标准的存在，人们往往会忽略更多的可能性，而这些可能性里有些相当重要的东西。

以 Git 为例。你了解 Git 吗？娴熟使用各种「事实标准」的你当然很自信。但 Git 历史里充满 Merge 记录的你可能不知道，真正的 Git 专家—— Linux 内核的开发者们[经常使用 Octopus Merge](https://www.destroyallsoftware.com/blog/2017/the-biggest-and-weirdest-commits-in-linux-kernel-git-history)。但今天 99% 的项目里都不会使用这种 merge. 顺便问一句 GitHub 标准吗？文中也有 Linus 抨击 GitHub 的文档误导开发者，警告内核开发人员不要使用 Github 的链接哦。

面向对象是事实标准了吧？也许你有必要知道，Alan Kay 在提出面向对象的时候，完全是另外的意思，以至于他后来不断的[澄清](https://userpage.fu-berlin.de/~ram/pub/pub_jf47ht81Ht/doc_kay_oop_en). Erlang 的作者2000年左右写过一篇 [Why OO sucks](www.cs.otago.ac.nz/staffpriv/ok/Joe-Hates-OO.htm) 引起巨大反响，但后来有人对他说，其实所有的面向对象语言，都不面向对象，只有 Erlang 的 Actor Model 才[最符合 Alan Kay 提出的 OO 定义](https://www.infoq.com/interviews/johnson-armstrong-oop/)，而且 Alan Kay 后来还[承认了](https://www.quora.com/What-does-Alan-Kay-think-about-Joe-Armstrong-claiming-that-Erlang-might-be-the-only-object-oriented-language-and-also-his-thesis-supervisor-s-claim-that-Erlang-is-extremely-object-oriented)。

有标准当然总体还是好事，但有时人们会用「事实标准」这样的话术去推广。说的人和听的人都觉得这是技术问题，但最后发现其实是个商业问题。

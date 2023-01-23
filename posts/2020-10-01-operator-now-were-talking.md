---
title: 这才是完全体的 operator
published_date: "2020-10-01 03:32:57 -0700"
layout: default.liquid
is_draft: true
---
![看这只自信的河马](https://access.crunchydata.com/documentation/postgres-operator/4.4.1/crunchy_logo.png)

一年来发生了许多事，operator 逐渐成为了显学。先是 mysql 的最强集群 vitess 官宣 planet scale 提供的 operator 已经稳定并且成为官方推荐， 大大降低了 vitess 的部署复杂程度；然后是收购了 pivotal 的 VMWare 提供了 [RabbitMQ 的 operator](https://github.com/rabbitmq/cluster-operator)，而且上个月进入 beta（这个项目的主程目测是个华裔女程序员而且最近火热更新中）。我也从一个「引入这么多复杂度真的好吗」的菜鸡变成积极引入 operator 减轻自己工作量的熟练操作员。

传说 operator 有一种最终形态，叫做 auto pilot. 什么是 auto pilot, 呵呵别问，自动驾驶啊朋友！双手扔掉方向盘的运维白拿工资，而你还在吭哧吭哧写 yaml。而当今世上达到这种境界的高手只有 9 款产品，这其中还有滥竽充数之辈比如 ArgoCD operator 我已经替你们试过了，bug 不少还不是最新版本，github 没几个星，也不是官方推荐的安装方法。

而这 9 个中有一位，就是 [Crunchy PostgreSQL for Kubernetes](https://access.crunchydata.com/documentation/postgres-operator). 你问我 PostgreSQL 何许人也，朋友快扔掉你手中被商业巨头掌控、却舅舅不疼姥姥不爱的 MySQL，一帮彩笔还在掘金或者什么傻网站上聊如何手动做读写分离。Postgres 是真正社区驱动、各种开源软件(包括 Sentry/Gitlab/Discourse/...*这里真的有无数个项目*)都无比偏爱的明星，25年久经考验却经久不衰的真正老OG.

当然现在的话题不是 Postgres 多牛屄，这个以后再吹。现在要说的是这款 operator.

## 安装
它提供了一个 operator installer. 这东西其实是一个job，所有初始配置都在里面，然后 job 的类型可以选 install/update/uninstall. Apply 以后执行 job，执行完要记得 kubectl delete -f 这个文件，否则下次你运行不了。这可太人性化了，它比你去用非常迷的 helm (以后我会找机会说明为什么 helm 非常不便而且 ECK/kube-prometheus/Jaeger 等都没有推荐), 或者某些提供一大堆 yaml 让你自己挑选你却不知如何挑选的 operator 优秀的多。

在 Operator 的 job 执行过程中就会生成你和他的 controller 交互的密钥。而这款 operator 提供了一个 CLI 工具 `pgo`. 运行他们提供的安装脚本就能自动得到密钥开始和 controller 交互。

## 交互
神奇的事情就在这款 cli 上发生。想要创建一个 Postgres 集群只需要一句话 `pgo create cluster`. 想要在已有的命名空间创建集群只需要 `pgo update namespace`. 其他例如创建和管理数据库用户、表空间、scale、switch over、pgbouncer 都只要一条命令就完事。它的 HA 是直接通过集群的 etcd 实现，虽然 postgres 以前的 HA 方案多不胜数，但明显这样比较云原生。接下来 postgres 集群可以随你折磨，干掉主节点什么的，都能轻松应对。自带 backrest 可以备份，还可以通过 pgo 查看和管理备份。

总的看来这个东西已经接近完美的存在了。还有些多集群之类的功能我都没深入探索，值得一提的是文档十分友好和完备，图文并茂深入浅出，有一篇就能上手的 Quickstart 也有深入的讲解如何定制该 operator 的 workflow 实现自由的定制化。总的来说对我这种刚接触 postgres 的人感觉自己何德何能居然能如此简单的操控一个 postgres cluster. 这样的 operator 自称 autopilot 确实让人心服口服。

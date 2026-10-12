<div align="center">

<img src="assets/ncu-banner.svg" alt="南昌大学 · 人机协同编程" width="100%"/>

# 南昌大学《人机协同编程》个人作品集

**学号：** `7902126143` &nbsp;|&nbsp; **姓名：** `王冰洋` &nbsp;|&nbsp; **专业：** `食品科学与工程`

[![Course](https://img.shields.io/badge/课程-人机协同编程-0b3d91?style=flat-square)](#)
[![Weeks](https://img.shields.io/badge/实验周-16_周-1a5490?style=flat-square)](#-全学期实验目录树)
[![Language](https://img.shields.io/badge/语言-Python%20%7C%20JavaScript-3572A5?style=flat-square)](#)
[![License](https://img.shields.io/badge/许可-仅用于课程学习-6b7280?style=flat-square)](#-许可与说明)

</div>

---

## 👋 这个仓库是什么？

这是我本学期《人机协同编程》课程的**个人作品集主仓库**。

整个学期 16 周的每一次实验、每一份代码、每一张截图，都会按周归档在这里。
它既是我的**学习档案**，也是我的**第一个代码作品集**——学期结束时，它可以作为一个链接直接展示给别人看。

---

## 👤 个人信息卡

| 字段 | 内容 |
| :--- | :--- |
| 学校 | 南昌大学 |
| 课程 | 人机协同编程（Human-AI Collaborative Programming） |
| 学号 | `7902126143` |
| 姓名 | `王冰洋` |
| 专业 | `食品科学与工程` |
| 仓库用途 | 课程实验归档 + 作品集展示 |

---

## 📁 全学期实验目录树

```text
NCU-Human-AI-Programming/
│
├── README.md                    ← 你现在看到的这份说明
├── .gitignore                   ← Git 的「免打扰名单」（见文末术语解释）
├── .gitattributes               ← 统一换行符，避免跨平台格式冲突
├── push-to-github.bat           ← 双击即可把本地存档推送到 GitHub
│
├── assets/                      ← 图片、校徽横幅等静态素材
│   └── ncu-banner.svg
│
├── docs/                        ← 课程笔记、实验报告模板、参考资料
│
├── labs/                        ← ⭐ 16 周实验主目录
│   ├── week-01-env-setup/           第 1 周  开发环境搭建与工具链
│   ├── week-02-prompt-engineering/  第 2 周  提示词工程基础
│   ├── week-03-python-basics/       第 3 周  Python 基础与 AI 辅助调试
│   ├── week-04-data-structures/     第 4 周  数据结构与算法思维
│   ├── week-05-file-and-data/       第 5 周  文件读写与数据处理
│   ├── week-06-oop-modules/         第 6 周  面向对象与模块化
│   ├── week-07-web-api/             第 7 周  网络请求与 API 调用
│   ├── week-08-midterm-cli-tool/    第 8 周  期中项目：命令行小工具
│   ├── week-09-html-css/            第 9 周  Web 前端基础 HTML / CSS
│   ├── week-10-javascript/          第 10 周 JavaScript 与页面交互
│   ├── week-11-backend-fastapi/     第 11 周 后端入门（FastAPI）
│   ├── week-12-database/            第 12 周 数据库与数据持久化
│   ├── week-13-llm-api/             第 13 周 大模型 API 集成
│   ├── week-14-rag-knowledge-base/  第 14 周 RAG 与个人知识库
│   ├── week-15-devops-deploy/       第 15 周 工程化与部署上线
│   └── week-16-final-demo/          第 16 周 期末作品展示
│
└── final-project/               ← 期末综合作品（独立于 weekly labs）
```

---

## 📅 16 周实验进度表

| 周次 | 主题 | 关键技能 | 状态 |
| :---: | :--- | :--- | :---: |
| 01 | 开发环境搭建 | VS Code、Python、Git 基础 | ⬜ |
| 02 | 提示词工程基础 | 结构化提问、上下文管理 | ⬜ |
| 03 | Python 基础 | 变量、流程控制、函数、调错 | ⬜ |
| 04 | 数据结构与算法 | 列表/字典/集合、复杂度直觉 | ⬜ |
| 05 | 文件与数据处理 | 文件读写、CSV/JSON、pandas 入门 | ⬜ |
| 06 | 面向对象与模块化 | 类、模块、包、依赖管理 | ⬜ |
| 07 | 网络与 API | HTTP、requests、JSON 接口 | ⬜ |
| 08 | 期中项目 | 命令行工具完整开发流程 | ⬜ |
| 09 | Web 前端基础 | HTML 语义化、CSS 布局 | ⬜ |
| 10 | JavaScript 交互 | DOM、事件、前后端联调 | ⬜ |
| 11 | 后端入门 | FastAPI、路由、请求响应 | ⬜ |
| 12 | 数据库 | SQL 基础、SQLite / PostgreSQL | ⬜ |
| 13 | 大模型 API | 调用 LLM、流式输出、成本控制 | ⬜ |
| 14 | RAG 知识库 | 向量检索、Prompt 增强 | ⬜ |
| 15 | 工程化与部署 | 测试、CI、云端部署 | ⬜ |
| 16 | 期末作品展示 | 完整项目 + 演示文稿 | ⬜ |

> ✅ = 已完成 &nbsp;&nbsp; 🚧 = 进行中 &nbsp;&nbsp; ⬜ = 未开始

---

## 🚀 每周实验怎么用？

1. 进入对应周次目录，例如第 3 周：
   ```bash
   cd labs/week-03-python-basics
   ```
2. 在该目录内创建本周的代码文件、笔记和截图。
3. 回到仓库根目录，提交本周成果：
   ```bash
   git add .
   git commit -m "week03: 完成 Python 基础语法实验"
   git push
   ```

---

## 📖 术语速查（零基础友好版）

| 术语 | 一句话解释 |
| :--- | :--- |
| **仓库（Repository）** | 一个被 Git 全程存档的文件夹。像游戏的「存档点集合」，随时能回到任何一个历史版本。 |
| **`.gitignore`** | 一张「免打扰名单」。名单里的文件（如密码、缓存、大文件）Git 会假装看不见，绝不上传。 |
| **Commit** | 一次「存档」。把当前所有改动打包并写一句说明，永久记录在时间线上。 |
| **Push** | 把本地的存档上传到 GitHub 云端，让别人也能看到。 |
| **README.md** | 仓库的「门面」和「说明书」，打开仓库第一眼看到的内容。 |

---

## 🔐 安全提醒

- 任何**密钥、密码、Token**一律写进 `.env` 文件，而 `.env` 已在 `.gitignore` 名单中，不会被上传。
- 上传前可用 `git status` 再看一眼：确认没有敏感文件出现在待提交列表里。
- 一旦密钥曾经被提交过，即使后来删除，Git 历史里仍然保留——此时应立即到平台**吊销并重新生成**该密钥。

---

## 📜 许可与说明

本仓库内容为南昌大学《人机协同编程》课程学习成果，**仅用于课程学习与教学展示**，不作商业用途。
如需引用部分代码，请注明出处。

<div align="center">

**格物致新 · 厚德泽人**

<sub>南昌大学 · 人机协同编程 · 2026 秋季学期</sub>

</div>

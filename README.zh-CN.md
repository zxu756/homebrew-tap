# zxu756/homebrew-tap

**[English](README.md)** | **简体中文**

由 [@zxu756](https://github.com/zxu756) 维护的 Apple Silicon macOS 原生开发者工作台与系统工程工具官方 [Homebrew](https://brew.sh) Tap 源（全系列内置 `中文 / EN` 实时语言切换）。

## 一键安装

```bash
brew tap zxu756/tap

# APFS 写时复制磁盘与快照血统管理、NoCloud ISO 构建（预览版；还不能启动虚拟机）
brew install --cask zxu756/tap/agentvm

# 纯 Swift ARM64/ARM64e 反汇编器、Mach-O 二进制检视、内联汇编与 MCP 服务端
brew install --cask zxu756/tap/machgraph

# 只读的工作区检视、MCP 所有权校验与实验性三路合并（预览版；不会启动 agent）
brew install --cask zxu756/tap/relayide

# 中英双语 LaTeX & BibTeX 解析器、APA/IEEE 引文格式化工具与 MCP 服务端
brew install --cask zxu756/tap/scholaros

# 7 天免 Root 系统飞行记录仪、5 轨 DVR 示波器与外联套接字账本
brew install --cask zxu756/tap/chronomac

# 只读 macOS .app、Universal Mach-O、Electron ASAR 与 WASM 解剖工作台
brew install --cask zxu756/tap/autopsymac

# 轻量级本地优先 LaTeX & Typst 证据工作台与引文防火墙
brew install --cask zxu756/tap/citestudio

# 多家 Coding CLI 本地零联网遥测状态栏与看板（Claude Code / Codex / OpenCode / Vibe / Antigravity）
brew install --cask zxu756/tap/agentbar

# LaunchAgents、孤儿 AI 守护进程与端口占用 RSS 账本（支持 SHA-256 可逆冻结）
brew install --cask zxu756/tap/launchlens

# Thunderbolt、USB4 与 USB-C 协商链路速率、线材瓶颈与 PD 供电分析仪
brew install --cask zxu756/tap/buslens-mac

# 原生 NVMe / SATA SMART 磁盘健康度、温度与剩余寿命监控
brew install --cask zxu756/tap/crystaldiskinfo-mac

# 原生 SwiftUI + C++17 POSIX 顺序与随机存储基准测试（SEQ1M / RND4K）
brew install --cask zxu756/tap/crystaldiskmark-mac
```

## 可用 Cask 列表

| Cask | 版本 | 最低系统要求 | 核心功能简介 |
|---|---|---|---|
| [`agentvm`](https://github.com/zxu756/AgentVM) | `1.2.0` | macOS 14+ (`arm64`) | `.agentvm` SQLite 工作区存储、APFS `clonefile(2)` 写时复制磁盘与快照血统、NoCloud ISO-9660 生成器、命令行与 stdio MCP 服务（`中文 / EN`）。预览版：还不能启动虚拟机（真实 Linux 客户机启动排在 M1） |
| [`machgraph`](https://github.com/zxu756/MachGraph) | `1.2.0` | macOS 14+ (`arm64`) | 纯 Swift Universal/Mach-O 64 解析、ARM64/ARM64e PAC 反汇编、dyld 链式修正与代码签名校验、内联 ARM64 微型汇编及 MCP 服务端（支持 `中文 / EN`） |
| [`relayide`](https://github.com/zxu756/RelayIDE) | `1.2.0` | macOS 14+ (`arm64`) | 预览版。只读检视 `.relayproj` 工作区存储（`status`、`lanes`、`dag-waves`、双语 HTML 导出），以及 2 个工具的 MCP 服务（`relay_check_ownership`、实验性的 `relay_semantic_merge`）。这一版不会启动 agent，也还不能通过命令行创建通道 |
| [`scholaros`](https://github.com/zxu756/ScholarOS) | `1.2.0` | macOS 14+ (`arm64`) | 中英双语（`中文 / EN`）LaTeX & BibTeX 解析、APA 7th / IEEE 参考文献格式化、不联网的引文格式检查与 JSON-RPC 2.0 MCP 服务端（预览版；桌面窗口目前只能看演示数据） |
| [`chronomac`](https://github.com/zxu756/ChronoMac) | `0.3.0` | macOS 14+ (`arm64`) | 应用开着时记录 CPU、内存、网络的时间序列，事后查是哪个进程造成了尖峰；这一版还没有无界面的后台记录（支持 `中文 / EN`） |
| [`autopsymac`](https://github.com/zxu756/AutopsyMac) | `0.3.0` | macOS 14+ (`arm64`) | 只读的 macOS `.app` 解剖工具：体积树图、链接的动态库、entitlement；这一版还不扫 `app.asar` 内部、Frameworks 和 Helper 应用（支持 `中文 / EN`） |
| [`citestudio`](https://github.com/zxu756/CiteStudio) | `0.3.0` | macOS 14+ (`arm64`) | 对照 Crossref 和 OpenAlex 核对 BibTeX 参考文献（macOS 应用、命令行、MCP）；查询失败报未验证，不报成编造（支持 `中文 / EN`） |
| [`agentbar`](https://github.com/zxu756/AgentBar) | `0.3.0` | macOS 14+ (`arm64`) | 只读的菜单栏与命令行账本：统计 Claude Code、Codex、OpenCode、Mistral Vibe 的本地 token 用量和按 API 价折算的花费（支持 `中文 / EN`） |
| [`launchlens`](https://github.com/zxu756/LaunchLens) | `0.3.0` | macOS 14+ (`arm64`) | 列出 launchd 启动项，冻结或恢复用户级 LaunchAgent（备份校验 SHA-256，失败可回滚）；冻结与恢复用替身 launchctl 测过，还没有在真实 launchd 上测（支持 `中文 / EN`） |
| [`buslens-mac`](https://github.com/zxu756/BusLensMac) | `0.3.0` | macOS 14+ (`arm64`) | 列出雷雳、USB4 和 USB 设备各自协商到的链路速率；设备是不是被线缆或集线器拖慢，这一版还不做判断（支持 `中文 / EN`） |
| [`crystaldiskinfo-mac`](https://github.com/zxu756/CrystalDiskInfoMac) | `0.1.0` | macOS 14+ (`arm64`) | 基于 `smartctl` 的磁盘健康度、温度、剩余寿命、SMART 属性表与 30 天历史曲线 |
| [`crystaldiskmark-mac`](https://github.com/zxu756/CrystalDiskMarkMac) | `0.1.0` | macOS 14+ (`arm64`) | 四档顺序与随机存储读写基准测试（C++17 POSIX 引擎） |

## 开源协议

MIT

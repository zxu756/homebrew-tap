# zxu756/homebrew-tap

**[English](README.md)** | **简体中文**

由 [@zxu756](https://github.com/zxu756) 维护的 Apple Silicon macOS 原生开发者工作台与系统工程工具官方 [Homebrew](https://brew.sh) Tap 源（全系列内置 `中文 / EN` 实时语言切换）。

## 一键安装

```bash
brew tap zxu756/tap

# Apple Silicon 微虚拟机沙盒、亚 20ms APFS 写时复制分支树与用户态 L2 DPI 防火墙
brew install --cask zxu756/tap/agentvm

# 零外部包装器原生二进制逆向 IDE、ARM64 SSA 反编译器与内联汇编热修补工作台
brew install --cask zxu756/tap/machgraph

# 多厂商 Coding Agent 并行 PTY 指挥舱、5 语言三路 AST 语义合并与 Wiretap 预算网关
brew install --cask zxu756/tap/relayide

# 零幻觉 LaTeX & Typst 学术证据 IDE、PRISMA 2020 双盲筛查与 PDF 坐标级溯源 LSP
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
| [`agentvm`](https://github.com/zxu756/AgentVM) | `1.1.0` | macOS 14+ (`arm64`) | Apple Silicon 微虚拟机管理程序（`Virtualization.framework`）、APFS `clonefile(2)` 快照分支、L2 DPI 防火墙与 `AVM1` Vsock 工作台（支持 `中文 / EN` 实时切换） |
| [`machgraph`](https://github.com/zxu756/MachGraph) | `1.1.0` | macOS 14+ (`arm64`) | 零外部 CLI 包装器二进制逆向 IDE（Universal/Mach-O 64/ARM64E PAC/ELF/PE/WASM、Sugiyama CFG、Cytron SSA 伪 C 反编译、稀疏 CoW Hex 与内联 ARM64 补丁，支持 `中文 / EN`） |
| [`relayide`](https://github.com/zxu756/RelayIDE) | `1.1.0` | macOS 14+ (`arm64`) | 多厂商 Coding Agent 并行 PTY 复用器（`claude`/`codex`/`agy`/`vibe`）、5 语言三路 AST 语义合并、`FSEvents` 领地围栏与 HTTP/SSE 预算网关（支持 `中文 / EN`） |
| [`scholaros`](https://github.com/zxu756/ScholarOS) | `1.1.0` | macOS 14+ (`arm64`) | 零幻觉 LaTeX & Typst 学术 IDE（LSP 3.17、CSL 1.0.2、`PDFKit` FTS5 `BM25` 坐标框溯源、PRISMA 2020 荟萃分析与 `ERR_UNVERIFIED_CITATION` 防火墙，支持 `中文 / EN`） |
| [`chronomac`](https://github.com/zxu756/ChronoMac) | `0.2.0` | macOS 14+ (`arm64`) | 7 天免 Root 系统飞行记录仪、5 轨 DVR 示波器、事后进程归因与外联套接字账本（支持 `中文 / EN`） |
| [`autopsymac`](https://github.com/zxu756/AutopsyMac) | `0.2.0` | macOS 14+ (`arm64`) | 只读 `.app`、Universal Mach-O、Electron `app.asar` 与 WASM 解剖工作台、版本膨胀对比与 Ghidra 伪 C 查看器（支持 `中文 / EN`） |
| [`citestudio`](https://github.com/zxu756/CiteStudio) | `0.2.0` | macOS 14+ (`arm64`) | 本地优先 LaTeX & Typst 学术证据工作台、引文防火墙与 `PDFKit` FTS5 `BM25` 溯源（支持 `中文 / EN`） |
| [`agentbar`](https://github.com/zxu756/AgentBar) | `0.2.0` | macOS 14+ (`arm64`) | 零联网只读菜单栏与 Swift Charts 遥测看板，支持多家 Coding CLI 与 `agent-relay`（支持 `中文 / EN`） |
| [`launchlens`](https://github.com/zxu756/LaunchLens) | `0.2.0` | macOS 14+ (`arm64`) | LaunchAgents 自启项、孤儿 AI 守护进程与监听端口 RSS 账本，内置 SHA-256 可逆冻结（支持 `中文 / EN`） |
| [`buslens-mac`](https://github.com/zxu756/BusLensMac) | `0.2.0` | macOS 14+ (`arm64`) | Thunderbolt、USB4 与 USB-C 协商速率、线材瓶颈诊断与 Power Delivery 拓扑台（支持 `中文 / EN`） |
| [`crystaldiskinfo-mac`](https://github.com/zxu756/CrystalDiskInfoMac) | `0.1.0` | macOS 14+ (`arm64`) | 基于 `smartctl` 的磁盘健康度、温度、剩余寿命、SMART 属性表与 30 天历史曲线 |
| [`crystaldiskmark-mac`](https://github.com/zxu756/CrystalDiskMarkMac) | `0.1.0` | macOS 14+ (`arm64`) | 四档顺序与随机存储读写基准测试（C++17 POSIX 引擎） |

## 开源协议

MIT

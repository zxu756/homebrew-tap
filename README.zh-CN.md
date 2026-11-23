# zxu756/homebrew-tap

**[English](README.md)** | **简体中文**

由 [@zxu756](https://github.com/zxu756) 维护的 Apple Silicon macOS 原生开发者工作台与系统工程工具官方 [Homebrew](https://brew.sh) Tap 源（全系列内置 `中文 / EN` 实时语言切换）。

## 一键安装

```bash
brew tap zxu756/tap

# APFS 写时复制磁盘与快照血统管理、NoCloud ISO 构建（预览版；还不能启动虚拟机）
brew install --cask zxu756/tap/agentvm

# ARM64/ARM64e 反汇编器、Mach-O 二进制与元数据检视、符号解混淆、内联汇编与 MCP 服务端
brew install --cask zxu756/tap/machgraph

# 经 agent-relay 在隔离 git worktree 中运行 coding agent、合并验证并提供只读实时桌面界面（预览版）
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
| [`agentvm`](https://github.com/zxu756/AgentVM) | `1.5.0` | macOS 14+ (`arm64`) | 在 Apple Silicon 上经单工作区守护进程无界面运行真实的 Debian 12 虚拟机，支持停机与运行中 APFS `clonefile(2)` 写时复制分叉（8 GiB 盘含 1 GiB 数据时停机中位数 `32.49 ms`、运行中 `115.31 ms`，新建克隆私有字节 `0 B`）与快照回滚、VirtioFS 目录共享（`--mount`）、经 vsock 的本地 TCP 端口转发（`forward`），以及中英双语（`中文 / EN`）命令行与接入守护进程的 stdio MCP 服务；桌面界面尚不操控运行中的虚拟机，出口防火墙拦截与实时抓包（M5）尚未实现 |
| [`machgraph`](https://github.com/zxu756/MachGraph) | `1.7.0` | macOS 14+ (`arm64`) | Universal/Mach-O 64 解析、ARM64/ARM64e PAC/AdvSIMD/Crypto 反汇编、结构化控制流图与支配树/自然循环分析（`machgraph cfg`）、进程内 Swift 与 C++ 解混淆（`demangle`）、ObjC 元数据（`objc`）、全表交叉引用（`xrefs`）、原生类型代码签名与 entitlements 校验（`codesign`）、ARM64 微型汇编（`machgraph asm` / `patch-asm`）、6 个已验收 stdio MCP 工具（`machgraph mcp`，另 2 个标明实验性未通过验收）及 3 个已验收 SwiftPM 库产品（`MachBinaryFormats`、`MachA64Decoder`、`MachCFGEngine`，支持 `中文 / EN`）；在 1,278 个系统二进制上，反汇编助记符（0 条归一规则）与操作数同 `llvm-objdump` 逐条对照（65,969,542 / 65,969,684 一致，判错 0，未识别 0），M3 六项检查（`symbols`、`dylibs`、`entitlements`、`demangle`、`xrefs` `bl` 调用边、`objc`）对照 Apple 参考工具合计 0 差异，M4 控制流图在 `standard`（8,408 个函数）与 `full` 固定种子 40 个文件抽样（31,981 个函数）上 `I1`–`I4` 不变量 0 违反、`clang -O0` 已知答案 8/8 符合、`/bin/ls` 对照 Ghidra 12.1.4 属于本项目的错误 0 条，M5 核验 4 个新 MCP 工具 14/14 组用例与命令行 `--json` 逐字节相等、外部 SwiftPM 空包编译运行 3/3 段示例通过（14/14 项收紧符号与移除产品探针拒绝编译）及 `Scripts/test.sh release` 35/35 步门禁通过（报告在仓库里；M2 新解码的 AdvSIMD 形态在 `asm` 中报 `unsupported`） |
| [`relayide`](https://github.com/zxu756/RelayIDE) | `1.6.0` | macOS 14+ (`arm64`) | 预览版。`relayide run <plan.json>` 经 `agent-relay` 在各自独立的 git worktree 里启动 coding agent 命令行，按顺序用 `git merge --no-ff` 合入集成分支并在伪终端执行 `verify`（从不改动 `base`），从 `.relay/LOG.md` 汇总美元花费与未计价 token 到 `status` 和 `export-html`，并支持整单美元预算 `RELAY_BUDGET_USD`；桌面应用在非演示模式下只读显示命令行实时运行（`.relay/NN-<agent>.log` 终端网格与 `<lane>.pty` 回退、运行 DAG、集成合并状态与 `git merge-file -p` 冲突块、`FSEvents` 文件归属；运行仍在命令行启动），另有 `.relayproj` 工作区只读检视与 1 个工具的 MCP 服务（`relay_check_ownership`） |
| [`scholaros`](https://github.com/zxu756/ScholarOS) | `1.5.0` | macOS 14+ (`arm64`) | 中英双语（`中文 / EN`）引文、稿件与 PDF 证据核查：`scholaros verify-citations` 把 `.bib` 条目拿到 Crossref、OpenAlex、`doi.org`、arXiv、PubMed 逐条核查（仓库 480 条评测集上 86 条编造文献 0 条被判为已核查），`scholaros diagnostics main.tex` 检查多文件 LaTeX 稿件并带文件和行号，`scholaros locate-evidence <pdf> --claim <文字>` 在双栏 PDF 里定位同语种相近段落（带页码和位置框）并核对显式数字（不判断原文是否支持结论），`scholaros mcp` 提供含 5 个默认工具的 JSON-RPC 2.0 MCP 服务端，其中 `add_verified_bibtex` 只把 `VERIFIED` 条目写进 `.bib`；桌面窗口目前只能看演示数据 |
| [`chronomac`](https://github.com/zxu756/ChronoMac) | `0.4.0` | macOS 14+ (`arm64`) | 记录 CPU、内存、网络的时间序列（可在应用内，也可用无界面的 `ChronoMac record` 命令），事后查是哪个进程造成了尖峰，包括已退出的进程（界面实时 `中文 / EN` 切换） |
| [`autopsymac`](https://github.com/zxu756/AutopsyMac) | `0.4.0` | macOS 14+ (`arm64`) | 只读的 macOS `.app` 解剖工具：密钥样式字符串和外连端点（含 `app.asar`、Frameworks、Helper 应用内部）、代码签名与 entitlement 检查、字节合计准确的体积树图（支持 `中文 / EN`） |
| [`citestudio`](https://github.com/zxu756/CiteStudio) | `0.4.0` | macOS 14+ (`arm64`) | 对照 Crossref 和 OpenAlex 核对 BibTeX 参考文献；没有 DOI 的条目按题名检索并用四条规则判断（标题相似度、不是书评、年份差不超过 1、第一作者姓氏一致）；查询失败判"未验证"，不说成编造；准确率还没有量过（支持 `中文 / EN`） |
| [`agentbar`](https://github.com/zxu756/AgentBar) | `0.3.0` | macOS 14+ (`arm64`) | 只读的菜单栏与命令行账本：统计 Claude Code、Codex、OpenCode、Mistral Vibe 的本地 token 用量和按 API 价折算的花费（支持 `中文 / EN`） |
| [`launchlens`](https://github.com/zxu756/LaunchLens) | `0.5.0` | macOS 14+ (`arm64`) | 列出 launchd 启动项并按进程树汇总服务内存，识别孤儿进程（`ppid == 1`），比对会话前后快照找出新增服务、监听端口与打码后的孤儿进程，并支持冻结或恢复用户级 LaunchAgent（备份校验 SHA-256，失败可回滚）；真实 launchd 下的冻结恢复与快照比对各在一台机器上跑过，其余用替身命令测过（支持 `中文 / EN`） |
| [`buslens-mac`](https://github.com/zxu756/BusLensMac) | `0.4.0` | macOS 14+ (`arm64`) | 列出雷雳、USB4 和 USB 设备各自协商到的链路速率及所在的物理端口；还会把速率和设备 `ioreg` 描述符所示能力比对，但「被线缆、集线器或端口拖慢」的结论大多标为推断，从没有在真正被限速的真机上检验过（支持 `中文 / EN`） |
| [`crystaldiskinfo-mac`](https://github.com/zxu756/CrystalDiskInfoMac) | `0.1.0` | macOS 14+ (`arm64`) | 基于 `smartctl` 的磁盘健康度、温度、剩余寿命、SMART 属性表与 30 天历史曲线 |
| [`crystaldiskmark-mac`](https://github.com/zxu756/CrystalDiskMarkMac) | `0.1.0` | macOS 14+ (`arm64`) | 四档顺序与随机存储读写基准测试（C++17 POSIX 引擎） |

## 开源协议

MIT

# zxu756/homebrew-tap

**English** | **[简体中文](README.zh-CN.md)**

Official [Homebrew](https://brew.sh) tap for native macOS developer & systems utilities by [@zxu756](https://github.com/zxu756).

## Quick Install

```bash
brew tap zxu756/tap

# APFS Copy-on-Write disk & snapshot lineage manager and NoCloud ISO builder (preview; cannot boot a VM yet)
brew install --cask zxu756/tap/agentvm

# Pure-Swift ARM64/ARM64e disassembler, Mach-O binary inspector, inline assembler & MCP server
brew install --cask zxu756/tap/machgraph

# Read-only workspace inspector, MCP ownership checker & experimental 3-way merge (preview; does not launch agents)
brew install --cask zxu756/tap/relayide

# Bilingual LaTeX & BibTeX parser, APA/IEEE citation formatter, and stdio MCP server
brew install --cask zxu756/tap/scholaros

# 7-day macOS system flight recorder, 5-track DVR oscilloscope & external socket ledger
brew install --cask zxu756/tap/chronomac

# Read-only macOS app, Mach-O, Electron ASAR & WASM anatomy workbench with Ghidra pseudo-C
brew install --cask zxu756/tap/autopsymac

# Zero-hallucination LaTeX & Typst evidence IDE with Citation Firewall, PDFKit BM25 & Tectonic SyncTeX
brew install --cask zxu756/tap/citestudio

# Multi-agent coding CLI local telemetry monitor (Claude Code, Codex, OpenCode, Vibe, Antigravity)
brew install --cask zxu756/tap/agentbar

# LaunchAgents, LaunchDaemons & orphaned AI daemon RSS ledger with SHA-256 reversible freeze
brew install --cask zxu756/tap/launchlens

# Thunderbolt, USB4 & USB-C negotiated link-speed and cable bottleneck analyzer
brew install --cask zxu756/tap/buslens-mac

# Native NVMe/SATA SMART health, temperature & remaining-life monitor
brew install --cask zxu756/tap/crystaldiskinfo-mac

# Native SwiftUI + C++17 POSIX storage benchmark (SEQ1M / RND4K)
brew install --cask zxu756/tap/crystaldiskmark-mac
```

## Available Casks

| Cask | Version | Minimum macOS | Description |
|---|---|---|---|
| [`agentvm`](https://github.com/zxu756/AgentVM) | `1.3.0` | macOS 14+ (`arm64`) | `.agentvm` SQLite workspace store, APFS `clonefile(2)` CoW disks & snapshot lineage, NoCloud ISO-9660 builder, CLI & stdio MCP server (`中文 / EN`). `agentvm image pull` and `agentvm run <vm> -- <cmd>` boot a real Debian 12 guest without a window for one command; `up`, `exec` and the desktop app do not operate real VMs yet (M2, M4) |
| [`machgraph`](https://github.com/zxu756/MachGraph) | `1.3.0` | macOS 14+ (`arm64`) | Pure-Swift Universal/Mach-O 64 inspector, ARM64/ARM64e PAC disassembler, dyld chained fixups & CodeSign verifier, inline ARM64 mini-assembler & MCP server (`中文 / EN`). Mnemonics are checked against `llvm-objdump` on 1,278 system binaries; the report is in the repository |
| [`relayide`](https://github.com/zxu756/RelayIDE) | `1.3.0` | macOS 14+ (`arm64`) | Preview. `relayide run <plan.json>` starts coding-agent CLIs through `agent-relay` in isolated git worktrees and commits each lane to its own branch; it does not merge, run `verify` or track a budget yet. Also read-only inspection of a `.relayproj` workspace store and a 2-tool MCP server. The desktop app does not launch agents |
| [`scholaros`](https://github.com/zxu756/ScholarOS) | `1.3.0` | macOS 14+ (`arm64`) | Bilingual (`中文 / EN`) citation checker: `scholaros verify-citations` looks every `.bib` entry up in Crossref, OpenAlex, `doi.org`, arXiv and PubMed and reports verified / differs / not found / retracted / could not check. On the 480-entry benchmark in the repository, 0 of 86 invented references were verified. Also LaTeX & BibTeX parsing, APA 7th / IEEE formatting and a JSON-RPC 2.0 MCP server; the desktop window only shows demo data |
| [`chronomac`](https://github.com/zxu756/ChronoMac) | `0.3.0` | macOS 14+ (`arm64`) | Records CPU, memory and network over time while the app is open, to trace which process caused a spike; no headless background recorder yet (live `中文 / EN` UI) |
| [`autopsymac`](https://github.com/zxu756/AutopsyMac) | `0.4.0` | macOS 14+ (`arm64`) | Read-only macOS `.app` inspector: secret-pattern strings and endpoints (including inside `app.asar`, Frameworks and Helper apps), code-signing and entitlement checks, byte-exact size treemap (live `中文 / EN` UI) |
| [`citestudio`](https://github.com/zxu756/CiteStudio) | `0.4.0` | macOS 14+ (`arm64`) | Checks BibTeX references against Crossref and OpenAlex; entries without a DOI are searched by title and judged by four rules (title similarity, not a book review, year within 1, same first-author surname); a failed lookup is reported as unverified, not as fabricated; accuracy not measured yet (live `中文 / EN` UI) |
| [`agentbar`](https://github.com/zxu756/AgentBar) | `0.3.0` | macOS 14+ (`arm64`) | Read-only menu bar and CLI ledger of local token usage and API-equivalent cost for Claude Code, Codex, OpenCode and Mistral Vibe (live `中文 / EN` UI) |
| [`launchlens`](https://github.com/zxu756/LaunchLens) | `0.4.0` | macOS 14+ (`arm64`) | Lists launchd startup items with per-service memory summed over the process tree, flags orphan (`ppid == 1`) processes, and freezes or restores user LaunchAgents with a SHA-256-checked backup and rollback; freeze/restore was run once on real launchd (one machine, one user agent), the rest is tested with a stand-in launchctl (live `中文 / EN` UI) |
| [`buslens-mac`](https://github.com/zxu756/BusLensMac) | `0.4.0` | macOS 14+ (`arm64`) | Lists Thunderbolt, USB4 and USB devices with each one's negotiated link speed and the physical port it is on; also compares the rate with what the device's `ioreg` descriptors indicate, but those slowed-by-cable/hub/port verdicts are mostly marked inferred and have never been checked on real throttled hardware (live `中文 / EN` UI) |
| [`crystaldiskinfo-mac`](https://github.com/zxu756/CrystalDiskInfoMac) | `0.1.0` | macOS 14+ (`arm64`) | Disk health, temperature, remaining life, SMART table & 30-day history via `smartctl` |
| [`crystaldiskmark-mac`](https://github.com/zxu756/CrystalDiskMarkMac) | `0.1.0` | macOS 14+ (`arm64`) | Four-profile sequential & random storage benchmark with C++17 POSIX engine |

## License

MIT

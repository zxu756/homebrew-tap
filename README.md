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
| [`agentvm`](https://github.com/zxu756/AgentVM) | `1.2.0` | macOS 14+ (`arm64`) | `.agentvm` SQLite workspace store, APFS `clonefile(2)` CoW disks & snapshot lineage, NoCloud ISO-9660 builder, CLI & stdio MCP server (`中文 / EN`). Preview: cannot boot a VM yet (real Linux guest boot is scheduled for M1) |
| [`machgraph`](https://github.com/zxu756/MachGraph) | `1.2.0` | macOS 14+ (`arm64`) | Pure-Swift Universal/Mach-O 64 inspector, ARM64/ARM64e PAC disassembler, dyld chained fixups & CodeSign verifier, inline ARM64 mini-assembler & MCP server (`中文 / EN`) |
| [`relayide`](https://github.com/zxu756/RelayIDE) | `1.2.0` | macOS 14+ (`arm64`) | Preview. Read-only inspection of a `.relayproj` workspace store (`status`, `lanes`, `dag-waves`, bilingual HTML export) and a 2-tool MCP server (`relay_check_ownership`, experimental `relay_semantic_merge`). This version does not launch agents and cannot create lanes from the command line |
| [`scholaros`](https://github.com/zxu756/ScholarOS) | `1.2.0` | macOS 14+ (`arm64`) | Bilingual (`中文 / EN`) LaTeX & BibTeX parser, APA 7th / IEEE reference formatter, citation syntax check without online lookup & JSON-RPC 2.0 MCP server (preview; the desktop window only shows demo data) |
| [`chronomac`](https://github.com/zxu756/ChronoMac) | `0.2.0` | macOS 14+ (`arm64`) | 7-day non-root system flight recorder, 5-track DVR oscilloscope, post-mortem process blame & external socket ledger (live `中文 / EN` UI) |
| [`autopsymac`](https://github.com/zxu756/AutopsyMac) | `0.3.0` | macOS 14+ (`arm64`) | Read-only macOS `.app` inspector: size treemap, linked dylibs and entitlements; does not yet scan inside `app.asar`, Frameworks or Helper apps (live `中文 / EN` UI) |
| [`citestudio`](https://github.com/zxu756/CiteStudio) | `0.3.0` | macOS 14+ (`arm64`) | Checks BibTeX references against Crossref and OpenAlex (macOS app, CLI, MCP); a failed lookup is reported as unverified, not as fabricated (live `中文 / EN` UI) |
| [`agentbar`](https://github.com/zxu756/AgentBar) | `0.3.0` | macOS 14+ (`arm64`) | Read-only menu bar and CLI ledger of local token usage and API-equivalent cost for Claude Code, Codex, OpenCode and Mistral Vibe (live `中文 / EN` UI) |
| [`launchlens`](https://github.com/zxu756/LaunchLens) | `0.3.0` | macOS 14+ (`arm64`) | Lists launchd startup items and freezes or restores user LaunchAgents with a SHA-256-checked backup and rollback; freeze/restore is tested with a stand-in launchctl, not yet on real launchd (live `中文 / EN` UI) |
| [`buslens-mac`](https://github.com/zxu756/BusLensMac) | `0.3.0` | macOS 14+ (`arm64`) | Lists Thunderbolt, USB4 and USB devices with each one's negotiated link speed; whether a cable or hub is slowing a device down is not judged yet (live `中文 / EN` UI) |
| [`crystaldiskinfo-mac`](https://github.com/zxu756/CrystalDiskInfoMac) | `0.1.0` | macOS 14+ (`arm64`) | Disk health, temperature, remaining life, SMART table & 30-day history via `smartctl` |
| [`crystaldiskmark-mac`](https://github.com/zxu756/CrystalDiskMarkMac) | `0.1.0` | macOS 14+ (`arm64`) | Four-profile sequential & random storage benchmark with C++17 POSIX engine |

## License

MIT

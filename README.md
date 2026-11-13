# zxu756/homebrew-tap

Official [Homebrew](https://brew.sh) tap for native macOS developer & systems utilities by [@zxu756](https://github.com/zxu756).

## Quick Install

```bash
brew tap zxu756/tap

# Native Apple Silicon microVM sandbox, sub-20ms APFS CoW branching & L2 DPI workbench
brew install --cask zxu756/tap/agentvm

# Zero-CLI-wrapper native binary reverse-engineering IDE, ARM64 SSA decompiler & patch workbench
brew install --cask zxu756/tap/machgraph

# Multi-vendor coding agent parallel workbench, 3-way semantic AST merger & wiretap proxy
brew install --cask zxu756/tap/relayide

# Zero-hallucination LaTeX & Typst academic IDE, PRISMA 2020 screener & citation provenance LSP
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
| [`agentvm`](https://github.com/zxu756/AgentVM) | `1.0.0` | macOS 14+ (`arm64`) | Native Apple Silicon microVM hypervisor (`Virtualization.framework`), sub-20ms APFS `clonefile(2)` CoW branching, user-space L2 DPI firewall & `AVM1` Vsock workbench |
| [`machgraph`](https://github.com/zxu756/MachGraph) | `1.0.0` | macOS 14+ (`arm64`) | Zero-CLI-wrapper binary reverse-engineering IDE (Universal/Mach-O 64/ARM64E PAC/ELF/PE/WASM, Sugiyama CFG, Cytron SSA Pseudo-C decompiler, Sparse CoW Hex & inline ARM64 patcher) |
| [`relayide`](https://github.com/zxu756/RelayIDE) | `1.0.0` | macOS 14+ (`arm64`) | Multi-vendor coding agent PTY multiplexer (`claude`/`codex`/`agy`/`vibe`), 5-language 3-Way Semantic AST Merger, `FSEvents` territory fences & HTTP/SSE wiretap budget proxy |
| [`scholaros`](https://github.com/zxu756/ScholarOS) | `1.0.0` | macOS 14+ (`arm64`) | Zero-hallucination LaTeX & Typst academic IDE (LSP 3.17, CSL 1.0.2, `PDFKit` FTS5 `BM25` bounding-box provenance, PRISMA 2020 DerSimonian-Laird & `ERR_UNVERIFIED_CITATION` firewall) |
| [`chronomac`](https://github.com/zxu756/ChronoMac) | `0.1.0` | macOS 14+ (`arm64`) | 7-day non-root system flight recorder, 5-track DVR oscilloscope, post-mortem process blame & external socket ledger |
| [`autopsymac`](https://github.com/zxu756/AutopsyMac) | `0.1.0` | macOS 14+ (`arm64`) | Read-only `.app`, Universal Mach-O, Electron `app.asar` & WASM anatomy workbench, version bloat diff & Ghidra pseudo-C reader |
| [`citestudio`](https://github.com/zxu756/CiteStudio) | `0.1.0` | macOS 14+ (`arm64`) | Local-first LaTeX & Typst academic evidence IDE with Citation Firewall, `PDFKit` FTS5 `BM25` provenance & `ERR_UNVERIFIED_CITATION` MCP |
| [`agentbar`](https://github.com/zxu756/AgentBar) | `0.1.0` | macOS 14+ (`arm64`) | Zero-network, read-only menu bar & Swift Charts telemetry monitor for coding CLIs & `agent-relay` |
| [`launchlens`](https://github.com/zxu756/LaunchLens) | `0.1.0` | macOS 14+ (`arm64`) | Persistent LaunchAgents, orphan AI/dev daemons & bound ports RSS ledger with SHA-256 reversible freeze |
| [`buslens-mac`](https://github.com/zxu756/BusLensMac) | `0.1.0` | macOS 14+ (`arm64`) | Thunderbolt, USB4 & USB-C negotiated link-rate, cable bottleneck & Power Delivery bench |
| [`crystaldiskinfo-mac`](https://github.com/zxu756/CrystalDiskInfoMac) | `0.1.0` | macOS 14+ (`arm64`) | Disk health, temperature, remaining life, SMART table & 30-day history via `smartctl` |
| [`crystaldiskmark-mac`](https://github.com/zxu756/CrystalDiskMarkMac) | `0.1.0` | macOS 14+ (`arm64`) | Four-profile sequential & random storage benchmark with C++17 POSIX engine |

## License

MIT

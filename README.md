# zxu756/homebrew-tap

**English** | **[简体中文](README.zh-CN.md)**

Official [Homebrew](https://brew.sh) tap for native macOS developer & systems utilities by [@zxu756](https://github.com/zxu756).

## Quick Install

```bash
brew tap zxu756/tap

# APFS Copy-on-Write disk & snapshot lineage manager and NoCloud ISO builder (preview; cannot boot a VM yet)
brew install --cask zxu756/tap/agentvm

# ARM64/ARM64e disassembler, Mach-O inspector, symbol demangler, inline assembler & MCP server
brew install --cask zxu756/tap/machgraph

# Runs coding-agent CLIs in git worktrees via agent-relay, merges & verifies, with a read-only live desktop UI (preview)
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
| [`agentvm`](https://github.com/zxu756/AgentVM) | `1.5.0` | macOS 14+ (`arm64`) | Runs headless Debian 12 VMs on Apple Silicon via a per-workspace daemon with live APFS `clonefile(2)` CoW branching (`32.49 ms` stopped / `115.31 ms` live median on an 8 GiB disk with 1 GiB data, `0 B` initial cloned private bytes) and snapshots, VirtioFS directory mounts (`--mount`), localhost TCP port forwarding over vsock (`forward`), and a bilingual (`中文 / EN`) CLI and daemon-backed stdio MCP server; the desktop UI does not control running VMs yet, and outbound firewall filtering and live packet capture (M5) are not implemented |
| [`machgraph`](https://github.com/zxu756/MachGraph) | `1.7.0` | macOS 14+ (`arm64`) | Universal/Mach-O 64 inspector, ARM64/ARM64e PAC/AdvSIMD/Crypto disassembler, structured CFG, dominator & loop analyzer (`machgraph cfg`), in-process Swift & C++ demangler (`demangle`), ObjC metadata (`objc`), full-binary xrefs (`xrefs`), native-typed CodeSign & entitlements verifier (`codesign`), ARM64 mini-assembler (`machgraph asm` / `patch-asm`), 6 verified stdio MCP tools (`machgraph mcp`, plus 2 tools marked experimental/unverified) & 3 verified SwiftPM library products (`MachBinaryFormats`, `MachA64Decoder`, `MachCFGEngine`, `中文 / EN`); across 1,278 system binaries, disassembly mnemonics (0 normalization rules) and operands are checked against `llvm-objdump` (65,969,542 / 65,969,684 agreed, 0 wrong, 0 unrecognized) and all 6 M3 checks (`symbols`, `dylibs`, `entitlements`, `demangle`, `xrefs` `bl` edges, `objc`) record 0 differences against Apple reference tools, M4 CFG checks record 0 `I1`–`I4` invariant violations across `standard` (8,408 functions) and the 40-file `full` sample (31,981 functions), 8/8 `clang -O0` C functions, and 0 MachGraph errors against Ghidra 12.1.4 on `/bin/ls`, and M5 checks 14/14 byte-identical MCP-vs-CLI `--json` cases, 3/3 external SwiftPM consumer packages (14/14 negative visibility/product probes rejected), and 35/35 `Scripts/test.sh release` steps (reports in repo; newly decoded M2 AdvSIMD forms report `unsupported` in `asm`) |
| [`relayide`](https://github.com/zxu756/RelayIDE) | `1.6.0` | macOS 14+ (`arm64`) | Preview. `relayide run <plan.json>` starts coding-agent CLIs through `agent-relay` in isolated git worktrees, merges succeeded lanes onto an integration branch with `git merge --no-ff` and runs `verify` in a PTY without touching `base`, aggregates `.relay/LOG.md` USD spend and unpriced tokens in `status` and `export-html`, and enforces an optional whole-job USD budget via `RELAY_BUDGET_USD`; the desktop app displays CLI runs live in read-only mode (`.relay/NN-<agent>.log` terminal grid with `<lane>.pty` fallback, run DAG, integration merge status and `git merge-file -p` conflict hunks, and `FSEvents` file ownership; runs are started from the CLI), plus `.relayproj` inspection and 1 MCP tool (`relay_check_ownership`) |
| [`scholaros`](https://github.com/zxu756/ScholarOS) | `1.5.0` | macOS 14+ (`arm64`) | Bilingual (`中文 / EN`) citation, manuscript & PDF evidence checker: `scholaros verify-citations` looks `.bib` entries up in Crossref, OpenAlex, `doi.org`, arXiv and PubMed (`0/86` invented references verified on the 480-entry benchmark), `scholaros diagnostics main.tex` checks multi-file LaTeX manuscripts with file and line, `scholaros locate-evidence <pdf> --claim <text>` locates same-language passages in two-column PDFs with bounding boxes and checks explicit numbers (without judging semantic support), and `scholaros mcp` runs a 5-tool JSON-RPC 2.0 MCP server whose `add_verified_bibtex` writes only `VERIFIED` entries to `.bib`; the desktop window only shows demo data |
| [`chronomac`](https://github.com/zxu756/ChronoMac) | `0.4.0` | macOS 14+ (`arm64`) | Records CPU, memory and network over time, in the app or with the headless `ChronoMac record` command, to trace which process caused a spike, including processes that already exited (live `中文 / EN` UI) |
| [`autopsymac`](https://github.com/zxu756/AutopsyMac) | `0.4.0` | macOS 14+ (`arm64`) | Read-only macOS `.app` inspector: secret-pattern strings and endpoints (including inside `app.asar`, Frameworks and Helper apps), code-signing and entitlement checks, byte-exact size treemap (live `中文 / EN` UI) |
| [`citestudio`](https://github.com/zxu756/CiteStudio) | `0.4.0` | macOS 14+ (`arm64`) | Checks BibTeX references against Crossref and OpenAlex; entries without a DOI are searched by title and judged by four rules (title similarity, not a book review, year within 1, same first-author surname); a failed lookup is reported as unverified, not as fabricated; accuracy not measured yet (live `中文 / EN` UI) |
| [`agentbar`](https://github.com/zxu756/AgentBar) | `0.3.0` | macOS 14+ (`arm64`) | Read-only menu bar and CLI ledger of local token usage and API-equivalent cost for Claude Code, Codex, OpenCode and Mistral Vibe (live `中文 / EN` UI) |
| [`launchlens`](https://github.com/zxu756/LaunchLens) | `0.5.0` | macOS 14+ (`arm64`) | Lists launchd startup items with per-service memory summed over the process tree, flags orphan (`ppid == 1`) processes, diffs before/after session snapshots for added services, listening ports, and redacted orphans, and freezes or restores user LaunchAgents with a SHA-256-checked backup and rollback; real-launchd freeze/restore and snapshot/diff round-trips were each run on one machine, the rest is tested with stand-in commands (live `中文 / EN` UI) |
| [`buslens-mac`](https://github.com/zxu756/BusLensMac) | `0.4.0` | macOS 14+ (`arm64`) | Lists Thunderbolt, USB4 and USB devices with each one's negotiated link speed and the physical port it is on; also compares the rate with what the device's `ioreg` descriptors indicate, but those slowed-by-cable/hub/port verdicts are mostly marked inferred and have never been checked on real throttled hardware (live `中文 / EN` UI) |
| [`crystaldiskinfo-mac`](https://github.com/zxu756/CrystalDiskInfoMac) | `0.1.0` | macOS 14+ (`arm64`) | Disk health, temperature, remaining life, SMART table & 30-day history via `smartctl` |
| [`crystaldiskmark-mac`](https://github.com/zxu756/CrystalDiskMarkMac) | `0.1.0` | macOS 14+ (`arm64`) | Four-profile sequential & random storage benchmark with C++17 POSIX engine |

## License

MIT

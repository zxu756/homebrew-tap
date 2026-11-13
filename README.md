# zxu756/homebrew-tap

Official [Homebrew](https://brew.sh) tap for native macOS developer & systems utilities by [@zxu756](https://github.com/zxu756).

## Quick Install

```bash
brew tap zxu756/tap

# 7-day macOS system flight recorder, 5-track DVR oscilloscope & external socket ledger
brew install --cask zxu756/tap/chronomac

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
| [`chronomac`](https://github.com/zxu756/ChronoMac) | `0.1.0` | macOS 14+ (`arm64`) | 7-day non-root system flight recorder, 5-track DVR oscilloscope, post-mortem process blame & external socket ledger |
| [`agentbar`](https://github.com/zxu756/AgentBar) | `0.1.0` | macOS 14+ (`arm64`) | Zero-network, read-only menu bar & Swift Charts telemetry monitor for coding CLIs & `agent-relay` |
| [`launchlens`](https://github.com/zxu756/LaunchLens) | `0.1.0` | macOS 14+ (`arm64`) | Persistent LaunchAgents, orphan AI/dev daemons & bound ports RSS ledger with SHA-256 reversible freeze |
| [`buslens-mac`](https://github.com/zxu756/BusLensMac) | `0.1.0` | macOS 14+ (`arm64`) | Thunderbolt, USB4 & USB-C negotiated link-rate, cable bottleneck & Power Delivery bench |
| [`crystaldiskinfo-mac`](https://github.com/zxu756/CrystalDiskInfoMac) | `0.1.0` | macOS 14+ (`arm64`) | Disk health, temperature, remaining life, SMART table & 30-day history via `smartctl` |
| [`crystaldiskmark-mac`](https://github.com/zxu756/CrystalDiskMarkMac) | `0.1.0` | macOS 14+ (`arm64`) | Four-profile sequential & random storage benchmark with C++17 POSIX engine |

## License

MIT

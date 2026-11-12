# zxu756/homebrew-tap

Official [Homebrew](https://brew.sh) tap for native macOS developer & systems utilities by [@zxu756](https://github.com/zxu756).

## Quick Install

```bash
brew tap zxu756/tap

# Multi-agent coding CLI local telemetry monitor (Claude Code, Codex, OpenCode, Vibe, Antigravity)
brew install --cask zxu756/tap/agentbar

# Native NVMe/SATA SMART health, temperature & remaining-life monitor
brew install --cask zxu756/tap/crystaldiskinfo-mac

# Native SwiftUI + C++17 POSIX storage benchmark (SEQ1M / RND4K)
brew install --cask zxu756/tap/crystaldiskmark-mac
```

## Available Casks

| Cask | Version | Minimum macOS | Description |
|---|---|---|---|
| [`agentbar`](https://github.com/zxu756/AgentBar) | `0.1.0` | macOS 14+ (`arm64`) | Zero-network, read-only menu bar & Swift Charts telemetry monitor for coding CLIs & `agent-relay` |
| [`crystaldiskinfo-mac`](https://github.com/zxu756/CrystalDiskInfoMac) | `0.1.0` | macOS 14+ (`arm64`) | Disk health, temperature, remaining life, SMART table & 30-day history via `smartctl` |
| [`crystaldiskmark-mac`](https://github.com/zxu756/CrystalDiskMarkMac) | `0.1.0` | macOS 14+ (`arm64`) | Four-profile sequential & random storage benchmark with C++17 POSIX engine |

## License

MIT

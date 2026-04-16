#!/bin/bash

echo "🤖 AI Meeting 설치 시작..."

# 1. ~/.claude/commands 디렉토리 생성
mkdir -p ~/.claude/commands

# 2. meeting.md 설치
SCRIPT_DIR="$(cd "$(dirname "$0")" 2>/dev/null && pwd)"
if [ -f "$SCRIPT_DIR/commands/meeting.md" ]; then
  # 로컬 설치 (git clone 후)
  cp "$SCRIPT_DIR/commands/meeting.md" ~/.claude/commands/meeting.md
else
  # 원격 설치 (curl)
  curl -fsSL https://raw.githubusercontent.com/very-bryan/ai-meeting/main/commands/meeting.md -o ~/.claude/commands/meeting.md
fi

echo "✅ 설치 완료!"
echo ""
echo "📋 사전 준비 (아직 안 했다면):"
echo "  1. Codex CLI 설치:  npm install -g @openai/codex"
echo "     로그인:          codex login"
echo ""
echo "  2. Gemini CLI 설치: npm install -g @google/gemini-cli"
echo "     로그인:          gemini (첫 실행 시 브라우저 로그인)"
echo ""
echo "🚀 사용법:"
echo "  Claude Code에서 /meeting 입력 후 주제를 적으면 됩니다."
echo ""
echo "  예시:"
echo "    /meeting 우리 앱의 수익 모델을 어떻게 다각화할까?"
echo "    /meeting React vs Vue, 어떤 프레임워크를 선택할까?"
echo "    /meeting 팀 채용을 늘릴까 AI 도구에 투자할까?"

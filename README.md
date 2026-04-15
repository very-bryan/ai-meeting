# AI Meeting

Claude Code 안에서 **Claude + GPT + Gemini** 3개 AI와 동시에 회의하는 도구입니다.

## 설치

### 1. 사전 준비

```bash
# Codex CLI (GPT)
npm install -g @openai/codex
codex login

# Gemini CLI
npm install -g @google/gemini-cli
gemini  # 첫 실행 시 브라우저 로그인
```

### 2. AI Meeting 설치

한 줄로 설치:

```bash
curl -fsSL https://raw.githubusercontent.com/go24/ai-meeting/main/install.sh | bash
```

또는 git clone:

```bash
git clone https://github.com/go24/ai-meeting.git
cd ai-meeting
./install.sh
```

## 사용법

Claude Code에서:

```
/meeting 우리 앱의 수익 모델을 어떻게 다각화할까?
```

## 비용

| AI | 비용 |
|----|------|
| Claude | Claude Code 구독에 포함 |
| GPT | ChatGPT Pro 구독에 포함 (codex login) |
| Gemini | 무료 (Google 계정) |

**추가 비용: $0**

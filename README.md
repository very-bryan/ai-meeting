[English](#english) | [한국어](#한국어)

---

# English

# AI Meeting

A tool that runs **real-time debates between Claude + GPT + Gemini** inside Claude Code.

Not just opinion listing — 3 rounds of debate → rebuttals → convergence → final verdict.

> **Note**: This is a **Claude Code skill**. It runs exclusively inside Claude Code as a `/meeting` slash command.

## Why?

- A single AI can have biased perspectives
- Each AI has unique thinking patterns (Claude, GPT, Gemini each have their own LLM characteristics)
- Multi-angle validation for business strategy, product decisions, technical choices, and philosophical debates
- **Users can join the debate** between rounds

## Installation

### 1. Prerequisites

You need Claude Code, Codex CLI (GPT), and Gemini CLI.

```bash
# Codex CLI (free for now / ChatGPT Plus $20/mo for permanent access)
npm install -g @openai/codex
codex login

# Gemini CLI (free, just needs a Google account)
npm install -g @google/gemini-cli
gemini  # Browser login on first run
```

### 2. Install AI Meeting

One-liner:

```bash
curl -fsSL https://raw.githubusercontent.com/very-bryan/ai-meeting/main/install.sh | bash
```

Or git clone:

```bash
git clone https://github.com/very-bryan/ai-meeting.git
cd ai-meeting
./install.sh
```

### 3. Verify Installation

```bash
cat ~/.claude/commands/meeting.md
```

If the file exists, you're good to go.

### 4. Update

Re-run the install command to get the latest version:

```bash
curl -fsSL https://raw.githubusercontent.com/very-bryan/ai-meeting/main/install.sh | bash
```

## Usage

In Claude Code, type `/meeting` followed by your debate topic.

```
/meeting your debate topic here
```

### Examples

```
/meeting How should we diversify our app's revenue model?

/meeting What is the meaning of human identity in the AI era?

/meeting React vs Vue vs Svelte for a new project?

/meeting Self-hosted vs cloud infrastructure?

/meeting Can UBI be the answer for the AI era?
```

## How It Works

```
User: /meeting topic
    |
    v
Round 1 — Initial Positions
    🔵 Claude → 🟢 GPT → 🔴 Gemini
    |
    v
[Menu] Add opinion / Ask specific AI / Next round ← Arrow key selection
    |
    v
Round 2 — Rebuttals & Persuasion
    🔵 Claude rebuts → 🟢 GPT counter → 🔴 Gemini counter
    |
    v
[Menu] Add opinion / Ask specific AI / Next round
    |
    v
Round 3 — Convergence
    Each AI acknowledges valid points, holds firm on core arguments
    |
    v
📋 Final Summary
    - Consensus points
    - Remaining disagreements
    - Position evolution tracking
    - MVP argument
```

## User Participation Between Rounds

After each round, an **arrow-key selection menu** appears:

- **Add opinion** — Your input gets reflected in the next round by all 3 AIs
- **Ask specific AI** — Pick Claude / GPT / Gemini to dig deeper
- **Next round** — Proceed immediately

## Sample Output

```
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
📋 Final Summary
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

🤝 Consensus
- Points all 3 AIs agreed on

⚔️ Remaining Disagreements
- Claude: ...
- GPT: ...
- Gemini: ...

💡 Position Evolution
- How each AI's stance changed from Round 1

🏆 MVP Argument
- The most persuasive argument and why
```

## Cost

| AI | Auth Method | Cost |
|----|------------|------|
| Claude | Claude Code subscription | Included |
| GPT | Codex CLI (`codex login`) | Free (temporarily) / ChatGPT Plus $20/mo |
| Gemini | Gemini CLI (Google login) | Free |

**Additional cost: $0** — Codex CLI is currently free for all ChatGPT plans (including Free) for a limited time.

## Limitations

- GPT/Gemini calls take 5-15 seconds each, ~30-45 seconds per round
- Gemini free tier has daily usage limits
- GPT/Gemini receive fresh context each call (no conversation history)

## Uninstall

```bash
rm ~/.claude/commands/meeting.md
```

## License

MIT

---

# 한국어

# AI Meeting

Claude Code 안에서 **Claude + GPT + Gemini** 3개 AI가 **서로 반박하고 설득하는 실시간 디베이트**를 진행하는 도구입니다.

의견 나열이 아닌 — 3라운드 토론 → 반박 → 수렴 → 최종 판정.

> **참고**: 이 도구는 **Claude Code 전용 스킬**입니다. Claude Code 안에서 `/meeting` 슬래시 커맨드로만 실행됩니다.

## 왜 필요한가?

- 하나의 AI만으로는 편향된 시각을 가질 수 있음
- 각 AI의 고유한 사고 방식이 다름 (Claude, GPT, Gemini 각자의 LLM 특성)
- 사업 방향성, 제품 전략, 기술 의사결정, 철학적 토론까지 다각적 검증 가능
- 라운드 사이에 **사용자가 직접 토론에 참여** 가능

## 설치

### 1. 사전 준비

Claude Code, Codex CLI(GPT), Gemini CLI가 필요합니다.

```bash
# Codex CLI 설치 및 로그인 (현재 무료 / 영구 이용은 ChatGPT Plus $20/월)
npm install -g @openai/codex
codex login

# Gemini CLI 설치 및 로그인 (무료, Google 계정만 있으면 됨)
npm install -g @google/gemini-cli
gemini  # 첫 실행 시 브라우저 Google 로그인
```

### 2. AI Meeting 설치

한 줄로 설치:

```bash
curl -fsSL https://raw.githubusercontent.com/very-bryan/ai-meeting/main/install.sh | bash
```

또는 git clone:

```bash
git clone https://github.com/very-bryan/ai-meeting.git
cd ai-meeting
./install.sh
```

### 3. 설치 확인

```bash
cat ~/.claude/commands/meeting.md
```

파일이 있으면 설치 완료입니다.

### 4. 업데이트

최신 버전으로 업데이트하려면 설치 명령어를 다시 실행하면 됩니다:

```bash
curl -fsSL https://raw.githubusercontent.com/very-bryan/ai-meeting/main/install.sh | bash
```

## 사용법

Claude Code 터미널에서 `/meeting` 뒤에 토론 주제를 입력합니다.

```
/meeting 토론하고 싶은 주제
```

### 사용 예시

```
/meeting 우리 앱의 수익 모델을 어떻게 다각화할까?

/meeting AI 시대에 인간의 정체성은 어디에 있을까?

/meeting React vs Vue vs Svelte, 신규 프로젝트에 어떤 프레임워크를 선택할까?

/meeting 자체 서버 vs 클라우드, 인프라를 어떻게 구성할까?

/meeting UBI는 AI 시대의 해답이 될 수 있는가?
```

## 동작 방식

```
사용자: /meeting 주제 입력
    |
    v
라운드 1 — 초기 입장
    🔵 Claude → 🟢 GPT → 🔴 Gemini
    |
    v
[메뉴] 의견 추가 / 특정 AI에게 질문 / 다음 라운드 ← 화살표 키로 선택
    |
    v
라운드 2 — 반박과 설득
    🔵 Claude 반론 → 🟢 GPT 재반박 → 🔴 Gemini 재반박
    |
    v
[메뉴] 의견 추가 / 특정 AI에게 질문 / 다음 라운드
    |
    v
라운드 3 — 수렴
    각 AI가 인정할 건 인정하고, 양보 못할 핵심을 고수
    |
    v
📋 최종 정리
    - 합의점
    - 평행선
    - 입장 변화 추적
    - MVP 주장
```

## 라운드 사이 사용자 참여

매 라운드가 끝나면 **화살표 키로 선택**할 수 있는 메뉴가 나타납니다:

- **의견 추가하기** — 내 의견을 넣으면 다음 라운드에서 3개 AI가 반응
- **특정 AI에게 질문하기** — Claude / GPT / Gemini 중 선택해서 깊이 파고들기
- **다음 라운드로 진행** — 바로 다음 라운드 시작

## 출력 예시

```
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
📋 토론 최종 정리
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

🤝 합의에 도달한 부분
- 3개 AI 모두 동의한 내용

⚔️ 끝까지 평행선인 부분
- Claude: ...
- GPT: ...
- Gemini: ...

💡 토론을 통해 진화한 생각
- 라운드 1 대비 각 AI의 입장 변화

🏆 가장 설득력 있었던 주장
- MVP 주장과 선정 이유
```

## 비용

| AI | 인증 방식 | 비용 |
|----|---------|------|
| Claude | Claude Code 구독 | 구독에 포함 |
| GPT | Codex CLI (`codex login`) | 무료 (한시적) / ChatGPT Plus $20/월 |
| Gemini | Gemini CLI (Google 로그인) | 무료 |

**추가 비용: $0** — Codex CLI는 현재 무료 플랜 포함 모든 ChatGPT 플랜에서 한시적으로 무료 제공 중입니다.

## 제약사항

- GPT/Gemini 호출에 각 5~15초 소요, 전체 1라운드 약 30~45초
- Gemini 무료 티어는 일일 사용량 제한 있음
- GPT/Gemini에는 매 호출마다 컨텍스트를 새로 전달 (대화 히스토리 없음)

## 삭제

```bash
rm ~/.claude/commands/meeting.md
```

## License

MIT

# AI Meeting

Claude Code 안에서 **Claude + GPT + Gemini** 3개 AI와 동시에 회의하는 도구입니다.

하나의 주제에 대해 3개 AI가 각자 의견을 제시하고, Claude가 종합 정리합니다.

## 왜 필요한가?

- 하나의 AI만으로는 편향된 시각을 가질 수 있음
- 각 AI의 강점이 다름 (Claude: 논리/분석, GPT: 창의/범용, Gemini: 검색/데이터)
- 사업 방향성, 제품 전략, 기술 의사결정 시 다각적 검증 가능

## 설치

### 1. 사전 준비

Claude Code, Codex CLI(GPT), Gemini CLI가 필요합니다.

```bash
# Codex CLI 설치 및 로그인 (ChatGPT Pro 구독 필요)
npm install -g @openai/codex
codex login

# Gemini CLI 설치 및 로그인 (무료)
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

## 사용법

Claude Code 터미널에서 `/meeting` 뒤에 토론 주제를 입력합니다.

```
/meeting 토론하고 싶은 주제
```

### 사용 예시

```
/meeting 우리 앱의 수익 모델을 어떻게 다각화할까?

/meeting React vs Vue vs Svelte, 신규 프로젝트에 어떤 프레임워크를 선택할까?

/meeting 팀 채용을 늘릴까 AI 도구에 투자할까?

/meeting 자체 서버 vs 클라우드, 인프라를 어떻게 구성할까?

/meeting 우리 서비스의 글로벌 진출 전략을 어떻게 세울까?
```

## 동작 방식

```
사용자: /meeting 주제 입력
    |
    v
1. Claude: 의견 제시
    |
    v
2. GPT 호출 (codex exec) → 의견 수집
    |
    v
3. Gemini 호출 (gemini) → 의견 수집
    |
    v
4. Claude: 3개 의견 종합 정리
   - 합의점
   - 쟁점
   - 추천 액션
```

## 출력 예시

```
## AI 3자 회의 결과

### 회의 주제
우리 앱의 수익 모델을 어떻게 다각화할까?

---

### Claude 의견
광고 수익 단일 구조에서 벗어나 구독 모델과 거래 수수료를
병행하는 것이 안정적입니다...

### GPT 의견
프리미엄 기능을 분리하여 인앱 구매를 도입하고,
B2B API 과금도 검토할 만합니다...

### Gemini 의견
시장 데이터를 보면 동남아 앱테크 시장이 연 23% 성장 중이므로
앱테크 콘텐츠 다각화가 유효합니다...

---

### 종합 정리

**합의점**
- 광고 단일 수익에서 벗어나야 한다는 점에 3개 AI 모두 동의

**쟁점**
- Claude: 구독 모델 우선
- GPT: 인앱 구매 + B2B API
- Gemini: 앱테크 콘텐츠 확대

**추천 액션**
- 단기: 앱테크 콘텐츠 다양화 (리스크 낮음)
- 중기: 프리미엄 구독 테스트
- 장기: B2B API 과금 검토
```

## 비용

| AI | 인증 방식 | 비용 |
|----|---------|------|
| Claude | Claude Code 구독 | 구독에 포함 |
| GPT | Codex CLI (`codex login`) | ChatGPT Pro 구독에 포함 |
| Gemini | Gemini CLI (Google 로그인) | 무료 |

**추가 비용: $0**

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

# Tail Tech HP 仕様書

最終更新: 2026-07-31

## 作業ルール

- 作業前にこのファイルを読む。
- 変更後はこのファイルの「変更履歴」と、必要に応じて該当仕様を更新する。
- HPの修正後は、ユーザーがローカルで確認するまでcommit・pushを行わない。pushはユーザーから明示的に依頼された場合のみ実施する。
- Tail Tech HPの変更は `/Users/nao/Desktop/project/tailtech_hp` で行う。（`wan/` → `project/` にリネーム、全ファイルを `tailtech_hp/` サブフォルダに移動済み）
- GitHubへpushする前に、`origin` が `https://github.com/naokoni24/tail_tech_hp.git` を向いていることを確認する。
- `post-generator` など別プロジェクトの履歴やファイルをTail Tech HPへ混ぜない。

## サイト概要

- サイト名: Tail Tech
- URL: `https://tail-tech.jp/`
- 用途: フリーランス事業のコーポレートLP
- 事業領域: AI活用、DX支援、業務効率化、業務改善、システム開発、インフラ・システム基盤支援
- 主なターゲット: 中小企業、店舗、サービス業、小売業、製造業など
- トーン: 日本のSaaS/ITコンサルLP風、白背景、ネイビー基調、信頼感、親しみやすさ

## 主要ページ

- `index.html`: LP本体
- `privacy.html`: プライバシーポリシー
- `commercial.html`: 特定商取引法に基づく表記
- `robots.txt`: クローラー向け設定
- `sitemap.xml`: Google Search Console送信用サイトマップ

## 主要セクション

### ヘッダー

- ロゴは透過WebPを使用する（旧: PNG → 現: WebP）。
- 現在のロゴ画像: `images/tail-tech-word-a-transparent.webp`
- iPhoneホーム画面追加用アイコン: `images/apple-touch-icon.png`（180×180px、白背景にロゴワードマークを中央配置）。`index.html`の`<head>`に`<link rel="apple-touch-icon" href="images/apple-touch-icon.png">`を設定。
- ヘッダーはsticky。
- 背景は半透明白 + blur。
- 透過ロゴを使う理由: スクロール時にロゴ背景の白い四角が残らないようにするため。
- ナビゲーションリンク: サービス / 強み / プロフィール / お問い合わせ（`contact.html`）
- 画面幅1060px以下ではハンバーガーメニューを表示し、よくあるお悩み / サービス / 強み / よくあるご質問 / お問い合わせへ移動できる。

### ヒーロー

- コピー:
  - `AI活用・業務改善・システム開発のご相談は Tail Tech へ`（eyebrow）
  - `日々の「手間」を減らし、本来の仕事に集中できる仕組みをつくる。`（h1）
- 説明文: `問い合わせ対応や転記作業、資料探しなどを減らし、従業員が接客や本来の仕事に集中できる状態をつくります。`
- hero-pointsの3つ:
  1. AI活用で新しい体験と価値を創出
  2. 業務改善・効率化で生産性を向上
  3. システムで業務を支え継続的な成長をサポート
- CTA:
  - お問い合わせはこちら（`contact.html`へ遷移）
  - よくあるお悩みを見る（`#problems`へアンカー）

### こんなお悩みありませんか？

- ヒーローとサービス一覧の間に配置する課題起点の導入セクション。IDは`#problems`。
- 見出し: `こんなお悩みありませんか？`
- 説明: `AIやITを導入したいけれど、何から手をつければよいか分からない。` と `まずは日々の「手間」から整理します。` の2行。
- 4つの悩みカードを表示し、該当するサービスカードへアンカーリンクする。
  1. 問い合わせ・予約対応が大変 → 業務効率化・DX支援
  2. 社内資料を探すのに時間がかかる → AIドキュメント検索システム
  3. 集客に取り組みたいけれど、手が回らない → AI体験コンテンツ
  4. Excel・紙・複数ツールが限界 → システム提案・開発
- カードはデスクトップで4列、タブレットで2列、スマートフォンで1列。

### サービス

表示順:

1. 業務効率化・業務改善・DX支援
2. AIドキュメント検索システム
3. AI体験コンテンツ
4. システム提案・開発

表示順はCSSだけで変更せず、HTML上の要素順も同じ並びにする。

セクション見出しは `中小企業・店舗向け｜お悩み別のAI・自動化・システム開発`。
補足文は `業務効率化から集客まで、必要な仕組みを組み合わせてご提案します。`。

リンク仕様:

- AI体験コンテンツ: `assets/wanko_ai.pdf`（トリミング後の記念画像サービス提案資料、8ページ）を別タブで開く
- AIドキュメント検索システム: `assets/search_ai.pdf` を別タブで開く
- 業務効率化・DX支援: `contact.html`
- システム提案・開発: `contact.html`
- 各カードの末尾にクリック後の動きを示すCTAを表示する。PDFへ移動するカードは`サービス資料を見る`、お問い合わせへ移動するカードは`このサービスについて相談する`。
- サービス説明の行数にかかわらず、各カードのCTAは下端で揃える。
- デスクトップではサービス名の領域を3行分の高さで統一し、サービス名の行数による画像・本文の開始位置のずれを防ぐ。スマホでは自然な高さで表示する。

### 強み（Tail Techを選ぶ理由）

セクションID: `#strength`。`about-grid` で「Tail Techについて」と「プロフィール」を横並びに配置。

- Tail Techを選ぶ理由（check-list）:
  1. 金融・官公庁向けシステムで培った、安定性を重視する設計
  2. AI・業務改善・システム基盤まで、一つの窓口で対応
  3. 現場に必要な機能から始められる、小規模で柔軟な導入
  4. 導入後の運用・改善まで、継続して伴走

### ご利用の流れ

5ステップ:

1. Step01 ヒアリング
2. Step02 ご提案・お見積り
3. Step03 設計・開発・導入
4. Step04 運用・サポート
5. Step05 改善・最適化

スマホ表示では、ステップ間の矢印を下向きの丸アイコンとして表示する。

- ステップカードはPROBLEMSのカードと同じ余白・最小高さ（PC: 244px）・見出し（17px）・本文（13px）に揃える。スマホでは自然な高さで表示する。

### プロフィール

- 表記:
  - `プロフィール`
  - `Tail Tech 代表 小西 直樹`
  - `AI / DX / インフラ・システム基盤エンジニア`
- profile-lead: `金融・官公庁のシステム経験を活かした信頼性の高いインフラ構築・運用支援`
- profile-text: `大手メーカー系SEを経て独立。金融・官公庁向けインフラで培った信頼性を武器に、中小企業・店舗のAI活用・DX推進を支援しています。`
- 現在はインフラエンジニア寄りの経験を反映する。
- 金融・官公庁向けシステム、安定性・信頼性が必要なインフラ・システム基盤領域の経験を強調する。
- プロフィール写真: `images/profile-temp-selected.webp`

### CTA

- お問い合わせはこちら: `contact.html`
- LINEで相談する: `https://lin.ee/7qalLf4`
- 説明文: `初回相談・お見積もりは無料です。「何から始めればよいか分からない」段階からご相談いただけます。`
- スマホ表示では画面下部に固定の相談バーを表示する。メール相談とLINE相談の2つの導線を並べ、iPhoneのセーフエリアを考慮する。

### よくあるご質問

- セクションID: `#faq`。CTAの直前に配置する。
- HTML上にFAQを表示し、`FAQPage`のJSON-LDと質問・回答を一致させる。
- 質問: 費用 / 対応エリア（東京以外の遠方はオンライン対応可能） / 対象の企業・店舗 / 導入期間 / 初回相談の費用。

### フッター

並び:

- Xアイコン: `https://x.com/tailtechjp`
- LINEアイコン: `https://lin.ee/7qalLf4`
- プライバシーポリシー
- 特定商取引法に基づく表記
- `© Tail Tech`

Xアイコンは20px、LINEアイコンは28px。

## 連絡導線

### メール

- メールアドレス: `info@tail-tech.jp`
- HTMLにメールアドレスを直書きしない。
- `js/contact-links.js` でクリック時に `mailto:` を生成する。
- メールテンプレートでは `URLSearchParams` を使わず、`encodeURIComponent` で件名・本文を組み立てる。
- 理由: メールアプリでスペースが `+` 表示されるのを避けるため。

### お問い合わせフォーム

- お問い合わせフォームは`contact.html`に配置する。LP上のヘッダー・CTA・サービスカード・スマホ固定相談バーは、このページへ誘導する。
- 送信先はNetlify Forms。フォーム名は`contact`、スパム対策にはハニーポットを使用する。
- 入力項目: お名前（必須）/ 会社名・店舗名 / メールアドレス（必須）/ 電話番号 / いちばん近いお悩み（必須）/ ご相談内容（必須）/ プライバシーポリシーへの同意（必須）。同意チェックは送信条件としてのみ利用し、通知メールには含めない。
- お悩みの選択肢: 問い合わせ・予約対応を楽にしたい / 社内資料を探しやすくしたい / 集客やイベントにAIを活用したい / Excel・紙・複数ツールを整理したい / まだ決まっていない・その他。
- 送信後は`/thanks`（公開ファイルは`thanks.html`）を表示する。Netlify管理画面では、フォーム送信時の通知先として`info@tail-tech.jp`を設定済み。
- 送信開始時は送信ボタンを`送信中…`へ切り替えて無効化し、二重送信を防ぐ。

### LINE

- URL: `https://lin.ee/7qalLf4`
- フッターはサイト色に馴染むLINE文字入り吹き出しアイコン。
- 公式LINEロゴそのものを色変更して使うのは避ける。

### X

- アカウント: `@tailtechjp`
- URL: `https://x.com/tailtechjp`

## アナリティクス

- Google Analytics (GA4): 計測ID `G-V9KQ2YSTVH`
- 実装方式: `window.addEventListener('load', ...)` で非同期ロード（パフォーマンス最適化）
- `index.html` の `<head>` 先頭に配置。
- `js/cta-tracking.js`で、`data-track`属性を持つCTAのクリックをGA4の`cta_click`イベントとして送信する。イベントには`cta_name`と`link_url`を含める。
- 対象はヒーローCTA、お悩みカード、サービスカード、最終CTA、スマホ固定相談バー。

## SEO / Search Console

- Google Search Console: プロパティ登録済み（`tail-tech.jp`）、DNSのTXTレコードで所有権確認済み。
- 確認metaタグ: `content="Ad9NmadEjXUfo6OTfEJyxDzbKEyL61iDKcuCOYuIeEU"`
- サイトマップ送信済み: `https://tail-tech.jp/sitemap.xml`
- robots: `https://tail-tech.jp/robots.txt`
- `sitemap.xml` に含めるURL:
  - `https://tail-tech.jp/`
  - `https://tail-tech.jp/contact.html`
  - `https://tail-tech.jp/privacy.html`
  - `https://tail-tech.jp/commercial.html`

### JSON-LD 構造化データ（3種）

1. `ProfessionalService`: サービス情報、メール、住所（東京都）、sameAs（X・LINE）
2. `Person`: 小西直樹、jobTitle、worksFor Tail Tech
3. `FAQPage`: 5つのFAQ（費用・対応エリア・対象・導入期間・初回相談）

FAQの構造化データは、ページ内でユーザーに表示している質問・回答と一致させる。

### OGP / SNS共有画像

- OGP・Twitter Card・`ProfessionalService`の画像には`images/case_pet_ai_event_photo.png`を使用する（1544×1002px）。
- 存在しない`hero_laptop_phone.png`は参照しない。

## セキュリティヘッダー

管理ファイル:

- `_headers`
- `netlify.toml`
- `vercel.json`

設定済みヘッダー:

- `Content-Security-Policy`
- `X-Content-Type-Options: nosniff`
- `Referrer-Policy`
- `Permissions-Policy`
- `Strict-Transport-Security`
- `X-Frame-Options`
- `Cross-Origin-Opener-Policy: same-origin-allow-popups`（LINEボタンの別タブ開きを許容しつつオリジン分離）

## デプロイ

### 手動デプロイ

```sh
cd /Users/nao/Desktop/project/tailtech_hp
./scripts/sync-site.sh
netlify deploy --dir site --prod
```

注意: `cd site` してから `netlify deploy --dir . --prod` を実行すると、`netlify.toml` の `publish = "site"` が `site/site` に解釈されてエラーになる。必ず `tailtech_hp/` から `--dir site` で実行する。

### Git連携デプロイ

Netlify設定:

- Repository: `naokoni24/tail_tech_hp`
- Branch: `main`
- **Base directory: `tailtech_hp`**（要設定: Netlify Site settings → Build & deploy → Base directory）
- Build command: `./scripts/sync-site.sh`
- Publish directory: `site`

`netlify.toml` にも以下を設定する。

```toml
[build]
  command = "./scripts/sync-site.sh"
  publish = "site"
```

## Git運用

正しいリモート:

```sh
git remote -v
```

期待値:

```text
origin  https://github.com/naokoni24/tail_tech_hp.git (fetch)
origin  https://github.com/naokoni24/tail_tech_hp.git (push)
```

基本手順:

```sh
git status --short --branch
git add <変更ファイル>
git commit -m "<変更内容>"
git -c http.version=HTTP/1.1 push
```

過去に `post-generator` の `.git` が混ざったことがあるため、push前に必ずremoteを確認する。

**注意（2026-06-30判明）**: `tailtech_hp/` は独自の `.git` を持たず、親フォルダ `/Users/nao/Desktop/projects/.git` を共有している。この `.git` は `post-generator` プロジェクトの作業（`rss-generator` 関連スキル等）からも触られる可能性があり、`origin` のURLが `post-generator` に書き換わることがある（2026-06-30に実際発生、push型は拒否されたため実害はなし）。push前に必ず `git remote -v` で `https://github.com/naokoni24/tail_tech_hp.git` になっているか確認し、違っていたら `git remote set-url origin https://github.com/naokoni24/tail_tech_hp.git` で戻してからpushする。

## ファイル構成

主な管理対象:

- `.gitignore`
- `.vercelignore`
- `_headers`
- `index.html`
- `privacy.html`
- `commercial.html`
- `404.html`
- `contact.html`
- `thanks.html`
- `favicon.svg`
- `robots.txt`
- `sitemap.xml`
- `netlify.toml`
- `vercel.json`
- `js/contact-links.js`
- `js/cta-tracking.js`
- `scripts/sync-site.sh`
- `assets/wanko_ai.pdf`
- `assets/search_ai.pdf`
- `docs/tailtech-hp.md`（Obsidian仕様書のコピー）
- `images/tail-tech-word-a-transparent.webp`（旧: `.png` → 現: `.webp`）
- `images/dog-event-hiyori.webp`（ヒーローのスマホ画面）
- `images/profile-temp-selected.webp`（プロフィール写真）
- `images/cost-navy-final-thick.webp`（価値カードアイコン）
- `images/apple-touch-icon.png`（iPhoneホーム画面用アイコン）
- 各種LP用画像（`.webp`形式）

`site/` は `sync-site.sh` で生成される公開用フォルダ。

## 注意点

- `site/` はGit管理から外す方針。Netlifyビルド時に生成する。
- 画像を差し替えたら `scripts/sync-site.sh` のコピー対象も更新する。
- ロゴは白背景付きPNGを使わず、透過PNGを使う。
- メールアドレスはHTMLに直接書かない。
- 公式ロゴはブランドガイドラインに従う。LINE公式ロゴの色改変は避ける。

## 変更履歴

### 2026-07-31

- ヒーロー直下に、顧客課題からサービスを選べる`#problems`セクションを追加。
- 4つの悩みカードから、対応するサービスカードへアンカーリンクする導線を追加。
- サービスセクションの見出しを、提供側の「サービス一覧」から課題起点の文言へ変更。
- お悩みセクションの説明文を2行に分けて表示するよう変更。
- 「Tail Techが提供する価値」セクションを削除し、お悩み・サービス・事例の流れに整理。
- サービス内容との重複を避けるため、「事例・実績例」セクションを一旦削除し、ナビゲーションの事例リンクも削除。
- ヒーローの見出し・説明文を、日々の業務上の手間と解決策が伝わる内容に変更。第2CTAを「よくあるお悩みを見る」に変え、`#problems`へ誘導。
- SEO優先で、存在しないSNS共有画像の参照を実在画像へ修正。ページ上のFAQを追加し、FAQPage構造化データと表示内容を一致。サービス見出し・強み見出し・CTAにも対象顧客と検索意図に沿う文言を追加。
- FAQの対応エリア回答を、遠方の場合のオンライン対応が伝わる文言に変更。
- お悩みカードの並びに合わせてサービスカードを並べ替え、全サービスカードにクリック後の動きが分かるCTAを追加。
- 「Tail Techを選ぶ理由」を、実務経験・対応範囲・導入のしやすさ・継続支援が伝わる具体的な内容に更新。
- スマホ画面下部にメール・LINEの固定相談バーを追加。主要CTAのクリックをGA4の`cta_click`イベントで計測するよう追加。
- サービスカードのHTML上の順番をお悩みカードと一致させ、キーボード操作・読み上げ時も自然な順番に変更。
- サービスカード内のCTA位置を下端に揃え、内容量が異なるカードでも高さの見え方を統一。
- サービスカードのチェック項目を各3行に揃えるため、業務効率化・DX支援とシステム提案・開発の項目を整理。
- タブレット・スマホ用のハンバーガーメニューを追加し、主要セクションへ移動できるようにした。
- サービスカードのサービス名領域をデスクトップで3行分の高さに統一し、カード内の開始位置を揃えた。
- 非表示コメントとして残していた「Tail Techが提供する価値」と「事例・実績例」のHTMLを完全に削除した。
- ヒーローの説明文に、従業員の手間を減らし接客や本来の仕事へ集中できる価値を追加した。
- Netlify Formsを利用したお問い合わせフォームを追加し、送信完了ページ・ハニーポットによるスパム対策・プライバシーポリシー同意を実装した。
- お問い合わせフォームを専用の`contact.html`へ移し、LP上の各お問い合わせ導線を同ページに統一した。
- フォームの選択項目をサービス名から、利用者が選びやすいお悩みベースの表現へ変更した。
- LPとスマホ固定相談バーのフォーム導線を「お問い合わせはこちら」に変更した。
- お悩みカードの集客に関する見出しを「集客に取り組みたいけれど、手が回らない」に変更した。
- お悩みカードの資料検索に関する見出しを「社内資料を探すのに時間がかかる」に変更した。
- FAQの対応エリア回答を、東京以外の遠方の場合はオンライン対応できる文言に変更した。
- 「ご利用の流れ」のステップカードを、PROBLEMSのカードと同じサイズ・フォントスケールに統一した。
- Step03の説明文を「設計 / 開発 / テストを行い、」の表記に変更した。
- Step05の説明文を「継続的な改善でビジネスの成長を支えます。」に変更した。
- Step05の説明文は改行せず1行で表示するようにした。
- サービスカードのチェック項目とCTA区切り線の間に、24pxの余白を確保して見やすくした。
- HP修正後はローカル確認を優先し、ユーザーから明示依頼があるまでcommit・pushしない運用ルールを追加。

### 2026-06-30（セッション5）

- iPhoneホーム画面追加用の`apple-touch-icon.png`（180×180px）を新規作成。既存のロゴワードマーク（`tail-tech-word-a-transparent.png`）の透明余白をクロップし、白背景の正方形キャンバスに中央配置して生成。
- `index.html`の`<head>`に`<link rel="apple-touch-icon" ...>`を追加。
- `scripts/sync-site.sh`のコピー対象に`images/apple-touch-icon.png`を追加し、ビルド確認済み。

### 2026-06-16（セッション4）

- 現在の `index.html` を読み込み、仕様書を実態に合わせて更新。
- ロゴ形式を PNG → WebP に修正（`tail-tech-word-a-transparent.webp`）。
- ナビゲーションリンク一覧を追記（強み・プロフィールを含む）。
- ヒーローCTA「サービス資料をダウンロード」は `#services` アンカーと明記（PDFへの直接リンクではない）。
- `#strength` セクション（Tail Techについて・check-list 4項目）を新規追記。
- プロフィールの `profile-lead`・`profile-text` の現行テキストを仕様書に反映。
- Google Analytics (GA4) セクションを新規追記（計測ID: `G-V9KQ2YSTVH`）。
- JSON-LD 構造化データ（3種）の概要を追記。
- ファイル構成に `404.html`・`docs/tailtech-hp.md`・各WebP画像を追記。
- 仕様書を `docs/tailtech-hp.md` としてリポジトリにpush済み。

### 2026-06-16（セッション3）

- 作業前に本仕様書を読み込み、以後の作業ルールとして参照する運用を開始。
- `/Users/nao/Desktop/wan` のGitリモートを確認し、Tail Tech HPの正しいリポジトリ `https://github.com/naokoni24/tail_tech_hp.git` へ戻した。
- GitHub上の `main` に別プロジェクト（post-generator）の履歴が混在していたため、`backup-post-generator-main-20260616` ブランチへ退避した。
- Tail Tech HPのローカル `main` をGitHub `main` へ反映した。
- `site/` は生成物としてGit管理から外し、Netlifyビルド時に `./scripts/sync-site.sh` で生成する方針に整理した。

### 2026-06-16（セッション2）

- メールアドレスを `naokoni24@gmail.com` → `info@tail-tech.jp` に変更（`js/contact-links.js`）。
- SEO強化: OGP・Twitter Card・canonical・JSON-LD・robots meta を `index.html` に追加。
- `robots.txt`・`sitemap.xml` を新規作成、ドメインを `tail-tech.jp` で設定。
- JSON-LDの `sameAs` に X (`https://x.com/tailtechjp`) と LINE (`https://lin.ee/7qalLf4`) を追加。
- ヒーロー eyebrow・hero-copy・hero-point・サービスカードに「業務改善」キーワードを追加。
- タイトルタグと meta description を検索キーワードを意識した文言に改善。
- カスタムドメイン `tail-tech.jp` を取得・Netlify に設定・全URLを一括置換。
- Google Search Console 登録・サイトマップ送信は完了済み。

### 2026-06-16（初版）

- 初版作成。
- Tail Tech HPの仕様、運用手順、Git/Netlify/SEO/セキュリティ設定を整理。
- 今後の作業前読み込み、作業後更新のルールを追加。

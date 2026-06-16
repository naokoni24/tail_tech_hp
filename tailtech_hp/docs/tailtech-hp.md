# Tail Tech HP 仕様書

最終更新: 2026-06-16（セッション4）

## 作業ルール

- 作業前にこのファイルを読む。
- 変更後はこのファイルの「変更履歴」と、必要に応じて該当仕様を更新する。
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
- ヘッダーはsticky。
- 背景は半透明白 + blur。
- 透過ロゴを使う理由: スクロール時にロゴ背景の白い四角が残らないようにするため。
- ナビゲーションリンク: サービス / 提供価値 / 事例 / 強み / プロフィール / お問い合わせ

### ヒーロー

- コピー:
  - `AI活用・業務改善・システム開発のご相談は Tail Tech へ`（eyebrow）
  - `業務を変え、成長を支えるパートナー`（h1）
- 説明文: `AI活用・業務改善・システム開発まで、課題に合わせた最適な仕組みをワンストップで提供します。`
- hero-pointsの3つ:
  1. AI活用で新しい体験と価値を創出
  2. 業務改善・効率化で生産性を向上
  3. システムで業務を支え継続的な成長をサポート
- CTA:
  - お問い合わせはこちら（`#contact`へアンカー）
  - サービス資料をダウンロード（`#services`へアンカー、PDFへの直接リンクではない）

### サービス

表示順:

1. AI体験コンテンツ
2. AIドキュメント検索システム
3. 業務効率化・業務改善・DX支援
4. システム提案・開発

リンク仕様:

- AI体験コンテンツ: `assets/wanko_ai.pdf` を別タブで開く
- AIドキュメント検索システム: `assets/search_ai.pdf` を別タブで開く
- 業務効率化・DX支援: `#contact`
- システム提案・開発: `#contact`

### 強み（Tail Techについて）

セクションID: `#strength`。`about-grid` で「Tail Techについて」と「プロフィール」を横並びに配置。

- Tail Techについて（check-list）:
  1. 業務システムで培った高い技術力と品質
  2. AI・システム・業務改善までワンストップで対応
  3. 小規模でも相談しやすい柔軟なサポート
  4. 現場目線の提案で成果につながる仕組みを構築

### 事例

表示順:

1. AIイベントフォト（ペットサロン）
2. AIドキュメント検索
3. LINE自動化（サービス業）
4. 業務システム開発（小売業）

### 価値

見出しは `Tail Techが提供する価値`。

主な価値:

- 集客・売上UP
- 業務を効率化
- データを活用
- コストを最適化
- 安心のサポート

### ご利用の流れ

5ステップ:

1. Step01 ヒアリング
2. Step02 ご提案・お見積り
3. Step03 設計・開発・導入
4. Step04 運用・サポート
5. Step05 改善・最適化

スマホ表示では、ステップ間の矢印を下向きの丸アイコンとして表示する。

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

- お問い合わせはこちら: メール作成
- LINEで相談する: `https://lin.ee/7qalLf4`

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

## SEO / Search Console

- Google Search Console: プロパティ登録済み（`tail-tech.jp`）、DNSのTXTレコードで所有権確認済み。
- 確認metaタグ: `content="Ad9NmadEjXUfo6OTfEJyxDzbKEyL61iDKcuCOYuIeEU"`
- サイトマップ送信済み: `https://tail-tech.jp/sitemap.xml`
- robots: `https://tail-tech.jp/robots.txt`
- `sitemap.xml` に含めるURL:
  - `https://tail-tech.jp/`
  - `https://tail-tech.jp/privacy.html`
  - `https://tail-tech.jp/commercial.html`

### JSON-LD 構造化データ（3種）

1. `ProfessionalService`: サービス情報、メール、住所（東京都）、sameAs（X・LINE）
2. `Person`: 小西直樹、jobTitle、worksFor Tail Tech
3. `FAQPage`: 5つのFAQ（費用・対応エリア・対象・導入期間・初回相談）

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

## ファイル構成

主な管理対象:

- `.gitignore`
- `.vercelignore`
- `_headers`
- `index.html`
- `privacy.html`
- `commercial.html`
- `404.html`
- `favicon.svg`
- `robots.txt`
- `sitemap.xml`
- `netlify.toml`
- `vercel.json`
- `js/contact-links.js`
- `scripts/sync-site.sh`
- `assets/wanko_ai.pdf`
- `assets/search_ai.pdf`
- `docs/tailtech-hp.md`（Obsidian仕様書のコピー）
- `images/tail-tech-word-a-transparent.webp`（旧: `.png` → 現: `.webp`）
- `images/dog-event-hiyori.webp`（ヒーローのスマホ画面）
- `images/profile-temp-selected.webp`（プロフィール写真）
- `images/cost-navy-final-thick.webp`（価値カードアイコン）
- 各種LP用画像（`.webp`形式）

`site/` は `sync-site.sh` で生成される公開用フォルダ。

## 注意点

- `site/` はGit管理から外す方針。Netlifyビルド時に生成する。
- 画像を差し替えたら `scripts/sync-site.sh` のコピー対象も更新する。
- ロゴは白背景付きPNGを使わず、透過PNGを使う。
- メールアドレスはHTMLに直接書かない。
- 公式ロゴはブランドガイドラインに従う。LINE公式ロゴの色改変は避ける。

## 変更履歴

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

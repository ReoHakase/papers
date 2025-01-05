#import "template.typ": *

// Take a look at the file `template.typ` in the file panel
// to customize this template and discover how it works.
#show: project.with(
  subject: "2024年度 卒業研究",
  // title: "視線推移とLLMの隠れ状態ベクトルを用いた\n文章の読解時間分布の予測モデルの開発",
  title: "視線推移とLLMの隠れ状態ベクトルを用いた\n文章の読解時間分布の予測モデルの開発\nDevelopment of Prediction Models for\nReading Time Distribution of Text Using\nEye Tracking and Hidden State Vectors of a LLM",
  authors: (
    (name: "白田 連大 (Reo HAKUTA)", org: "茨城工業高等専門学校 国際創造工学科 情報系", email: "st20152ro@gm.ibaraki-ct.ac.jp"),
    (name: "奥出 真理子 (Mariko OKUDE)", org: "茨城工業高等専門学校 国際創造工学科 専門共通教育部 教授", email: "mokude@gm.ibaraki-ct.ac.jp")
  ),
  // Insert your abstract after the colon, wrapped in brackets.
  // Example: `abstract: [This is my abstract...]`
  // abstract: lorem(59),
  // abstract: "従来, 読解時間の予測は, 時間と文章長が強相関であることを仮定した手法が用いられてきた. しかし, これは偽である上, 文章の文学的表現や語彙・必要知識の難解さを考慮したものでない. そこで, 大規模言語モデルのトークン毎の隠れ状態ベクトルと, 視線トラッカーを用いて収集した視線の滞在時間を対にしたデータセットを構築した. そして、MLP, 1次元畳み込みCNN, 2次元畳み込みCNN, RNN(LSTM)モデルを学習させた. その結果, 最良の***モデルで, Pearson相関係数 *, 平均二乗誤差 *[s^2]の性能が得られた.",
  abstract: "従来, 読解時間の予測は, 時間と文章長が強相関であることを仮定した手法が用いられてきた. しかし, これは偽である上, 文章の文学的表現や語彙・必要知識の難解さを考慮したものでない. そこで, 大規模言語モデルのトークン毎の隠れ状態ベクトルと, 視線トラッカーを用いて収集した視線の滞在時間を対にしたデータセットを構築した. そして、MLP, 1次元畳み込みCNN, RNN(LSTM)モデルを学習させた. その結果, 最良の***モデルで, Pearson相関係数 *, 平均二乗誤差 *[s^2]の性能が得られた.\nTraditionally, methods for predicting reading time have been based on the hypothesis that reading time strongly correlates with the text length. However, this assumption is flawed and fails to account for contextual factors. To address this limitation, we constructed a dataset pairing the hidden state vectors of a large language model (LLM) for each token with gaze dwell times. Then, we trained prediction models, including MLP, CNN, and RNN (LSTM). As a result, the best-performing *** model achieved a Pearson correlation coefficient of * and a MSE of * [s²].",
  keywords: ("reading time estimation", "eye tracking", "hidden states", "MLP", "CNN", "LSTM"),
  date: "2025年1月8日",
)

// We generated the example code below so you can see how
// your document will look. Go ahead and replace it with
// your own content!

= はじめに

記事に読解時間の目安を提示すると、エンゲージメントが最大40%上昇した報告がある。 @simpleview_blog_2024

日本語の金融ニュースの実世界ユーザを分析結果によると、読解時間は文章長と強い相関を示さない。@ishihara2022 @ishihara2023

= 提案手法

== データセット

== モデル

== 性能評価

= おわりに

#bibliography("refs.bib", full: true)
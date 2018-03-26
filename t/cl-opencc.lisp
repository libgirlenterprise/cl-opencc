(in-package #:cl-user)
(defpackage #:cl-opencc-test
  (:use #:cl
        #:cl-opencc
        #:prove))
(in-package #:cl-opencc-test)

;; NOTE: To run this test file, execute `(asdf:test-system :cl-opencc)' in your Lisp.

(plan nil)

(subtest "clopencc-all"
  (is (cl-opencc:hongkongtosimplified "虛偽歎息
潮濕灶台
沙河涌洶湧的波浪
")
       "虚伪叹息
潮湿灶台
沙河涌汹涌的波浪
" "hongkongtosimplified")
  (is (cl-opencc:simplifiedtohongkong
        "虚伪叹息
潮湿灶台
沙河涌汹涌的波浪")
       "虛偽歎息
潮濕灶台
沙河涌洶湧的波浪"
       "simplifiedtohongkong")
  (is (cl-opencc:simplifiedToTraditional "夸夸其谈 夸父逐日
我干什么不干你事。
太后的头发很干燥。
燕燕于飞，差池其羽。之子于归，远送于野。
请成相，世之殃，愚暗愚暗堕贤良。人主无贤，如瞽无相何伥伥！请布基，慎圣人，愚而自专事不治。主忌苟胜，群臣莫谏必逢灾。
曾经有一份真诚的爱情放在我面前，我没有珍惜，等我失去的时候我才后悔莫及。人事间最痛苦的事莫过于此。如果上天能够给我一个再来一次得机会，我会对那个女孩子说三个字，我爱你。如果非要在这份爱上加个期限，我希望是，一万年。
新的理论被发现了。
鲶鱼和鲇鱼是一种生物。
金胄不是金色的甲胄。")
"誇誇其談 夸父逐日
我幹什麼不干你事。
太后的頭髮很乾燥。
燕燕于飛，差池其羽。之子于歸，遠送於野。
請成相，世之殃，愚闇愚闇墮賢良。人主無賢，如瞽無相何倀倀！請布基，慎聖人，愚而自專事不治。主忌苟勝，羣臣莫諫必逢災。
曾經有一份真誠的愛情放在我面前，我沒有珍惜，等我失去的時候我才後悔莫及。人事間最痛苦的事莫過於此。如果上天能夠給我一個再來一次得機會，我會對那個女孩子說三個字，我愛你。如果非要在這份愛上加個期限，我希望是，一萬年。
新的理論被發現了。
鮎魚和鮎魚是一種生物。
金胄不是金色的甲冑。" "simplifiedToTraditional")
  (is (cl-opencc:simplifiedToTaiwan "着装污染虚伪发泄棱柱群众里面
鲶鱼和鲇鱼是一种生物。")
       "著裝汙染虛偽發洩稜柱群眾裡面
鯰魚和鯰魚是一種生物。"
       "simplifiedToTaiwan")
  (is (cl-opencc:simplifiedToTaiwanWithPhrases"鼠标里面的硅二极管坏了，导致光标分辨率降低。
我们在老挝的服务器的硬盘需要使用互联网算法软件解决异步的问题。
为什么你在床里面睡着？")
"滑鼠裡面的矽二極體壞了，導致游標解析度降低。
我們在寮國的伺服器的硬碟需要使用網際網路演算法軟體解決非同步的問題。
為什麼你在床裡面睡著？" "simplifiedToTaiwanWithPhrases")
  (is (cl-opencc:traditionalToSimplified "曾經有一份真誠的愛情放在我面前，我沒有珍惜，等我失去的時候我才後悔莫及。人事間最痛苦的事莫過於此。如果上天能夠給我一個再來一次得機會，我會對那個女孩子說三個字，我愛你。如果非要在這份愛上加個期限，我希望是，一萬年。")
      "曾经有一份真诚的爱情放在我面前，我没有珍惜，等我失去的时候我才后悔莫及。人事间最痛苦的事莫过于此。如果上天能够给我一个再来一次得机会，我会对那个女孩子说三个字，我爱你。如果非要在这份爱上加个期限，我希望是，一万年。" "traditionalToSimplified")
  (is (cl-opencc:taiwanToSimplified "著裝著作汙染虛偽發洩稜柱群眾裡面")
      "着装著作污染虚伪发泄棱柱群众里面" "taiwanToSimplified")
  (is (cl-opencc:taiwanToSimplifiedWithPhrases "滑鼠裡面的矽二極體壞了，導致游標解析度降低。
我們在寮國的伺服器的硬碟需要使用網際網路演算法軟體解決非同步的問題。
為什麼你在床裡面睡著？")
"鼠标里面的硅二极管坏了，导致光标分辨率降低。
我们在老挝的服务器的硬盘需要使用互联网算法软件解决异步的问题。
为什么你在床里面睡着？" "taiwanToSimplifiedWithPhrases"))

(finalize)

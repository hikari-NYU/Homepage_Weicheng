# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
LinkLang.delete_all
LinkLang.create(link:'home', lang:'English', types:'home')
LinkLang.create(link:'首页', lang:'Chinese', types:'home')
LinkLang.create(link:'インデックス', lang:'Japanese', types:'home')
LinkLang.create(link:'work', lang:'English', types:'work')
LinkLang.create(link:'工作', lang:'Chinese', types:'work')
LinkLang.create(link:'作品', lang:'Japanese', types:'work')
LinkLang.create(link:'interest', lang:'English', types:'interest')
LinkLang.create(link:'兴趣', lang:'Chinese', types:'interest')
LinkLang.create(link:'趣味', lang:'Japanese', types:'interest')
SelfIntro.delete_all
SelfIntro.create(name: 'Weicheng Ma', university: 'City University of New York', email: 'Email: weicheng.ma1991@gmail.com', phone: 'Phone: +1(347) 933-3468', intro:'My research interests lie mainly on the interaction of the fields Natural Language Processing(NLP), Information Retrieval(IR), Data Mining and Machine Learning(ML), for solving problems more general concerning human languages. <br />Though all belonging to the area of Artificial Intelligence, the four fields have always been torn apart, used most of the time separately on distinct problem sets. But regarding the fact that a large portion of the problems are similar and sometimes complementary to each other, the separation may have laid in the way of the development of their respective fields. Examples can be the sanitation of results in Data Mining vs. language standardization in NLP, or the document indexing in IR vs. sentence embedding task in NLP. The purpose of my research is to take advantage of knowledge in all the related fields instead of using them separately, and to finally construct a complete framework of knowledge for future research on language related tasks.<br />What’s more, it seems to be a trouble that current Artificial Intelligence systems rely too much on human annotated corpora. It seems valid since human beings should be better with their languages than the computers. However, according to surveys, compared to the performance of human annotators, the rules of languages are better represented in the records of these languages. So I believe in the future, the intelligent systems should in the contrary be able to summarize language rules for us human beings to learn. To start, it is crucial that we get better results in solving the cold start problem in my mind.', lang: 'English')
SelfIntro.create(name: '马伟诚', university: '纽约城市大学', email: '电子邮件: weicheng.ma1991@gmail.com', phone: '电话: +1(347) 933-3468', intro:'我的研究主要集中于自然语言处理(NLP)，信息检索(IR)，数据挖掘(Data Mining)和机器学习(ML)四个领域的交界点，即将这些领域的理论知识结合起来用以解决与人类语言相关的问题。<br />一直以来，这些领域虽然是同源（人工智能），却被领域的界限分割开来，很少被结合使用。然而事实上这些领域中的问题很大程度上是相似的，比如数据挖掘中对结果的清洗之于自然语言处理中的语言规范化，还有信息检索中的文档相关度之于自然语言处理中的句子相似度计算等等。只不过是着眼点的不同以及宏观微观的差别导致了这些领域的分裂。然而对于语言处理这项任务本身却没有这样清晰的界限，所以单一领域知识对自然语言的处理往往不够彻底。所以在我看来，正是这一点阻碍着它们的发展。我的研究目标正是将这些分割开来的知识体系重新组合，从而建立起一套真正适合语言处理的完整的知识框架供以后的研究所用。<br />另外，现今人工智能领域的系统对于人类标注的参与依赖太过严重也是弊端之一。虽然是人类使用的语言，但是根据调查，人类并没有办法100%地掌握语言规则，尤其是对于网络用语等新近出现的语言体系更是如此。这些语言规则反而更完整地表现在记录这些语言的文档之中。因此我认为以后的系统应当不依赖或者少依赖开发者或者一部分人对于语言的理解，而要从大数据的方向着手，归纳总结语言规则，并将之反哺于人类。作为一个开端，在减少训练数据量的情况下尽可能保持系统的表现（即冷启动问题）至关重要。', lang: 'Chinese')
SelfIntro.create(name: '馬偉誠', university: 'ニューヨーク市立大学', email: 'メール: weicheng.ma1991@gmail.com', phone: '携帯: +1(347) 933-3468', intro:'申し訳ありませんが、まだ開発中なので、しばらくお待ちください。', lang: 'Japanese')
WorkInfo.delete_all
WorkInfo.create(work_id: 1, name: 'Technical Writing Sample - Sentence Divider', link:'https://github.com/hikari-NYU/Sentence_Divider', description:'This program devides a string of characters into separated words using maximum match.', note:'', lang:'English')
WorkInfo.create(work_id: 1, name: '代码样例 - 基于最大匹配的英文分词器', link:'https://github.com/hikari-NYU/Sentence_Divider', description:'这个程序可以将一串没有空格分隔的字符串分割成为合理的词语。该方法主要依赖于对字典进行搜索并在合理的选项中匹配最长的。', note:'', lang:'Chinese')
WorkInfo.create(work_id: 1, name: 'プログラミングサンプル　ー　英語を対象とした単語分割システム', link:'https://github.com/hikari-NYU/Sentence_Divider', description:'このプログラムは、一連の英語の文字を単語に分割することができる。辞書で単語を調べて決めるのが基本ですが、複数な可能性がある時は、一番長いのを選ぶことにしました。', note:'', lang:'Japanese')
WorkInfo.create(work_id: 2, name: 'Technical Writing Sample - Viterbi Search', link:'https://github.com/hikari-NYU/Viterbi_Search', description:'This program implements Viterbi Search Algorithm, tagging input sentences with Part-of-Speech tags according to pre-generated Hidden Markov Model.', note:'', lang:'English')
WorkInfo.create(work_id: 2, name: '代码样例 - 维特比算法', link:'https://github.com/hikari-NYU/Viterbi_Search', description:'这个程序实现的是维特比算法，基于预先生成的隐马尔可夫模型对输入的英文语句进行POS标注', note:'', lang:'Chinese')
WorkInfo.create(work_id: 2, name: 'プログラミングサンプル　ー　ビタビアルゴリズム', link:'https://github.com/hikari-NYU/Viterbi_Search', description:'このプログラムは、ビタビアルゴリズムを適用し、英語の語句に品詞分類をすることができる。作成した隠れマルコフモデルが必要です。', note:'', lang:'Japanese')
WorkInfo.create(work_id: 3, name: 'RSS Updator', link:'https://github.com/hikari-NYU/RSS-Updator', description:'The system gets news from RSS sources, and, when encountered with newer version of documented news, move the old one to obsolete list and replace it with the newly come one.', note:'', lang:'English')
WorkInfo.create(work_id: 3, name: 'RSS新闻自动更新系统', link:'https://github.com/hikari-NYU/RSS-Updator', description:'本系统从RSS源读取新闻，并在遇到已归档新闻的更新时，将原版移入obsolete标签并用新版替换之。', note:'', lang:'Chinese')
WorkInfo.create(work_id: 3, name: 'RSSニュースアップデーター', link:'https://github.com/hikari-NYU/RSS-Updator', description:'このシステムは、RSSからのニュースを整理することができます。その上、新しいバージョンがある時は、上書きして、そして古いバージョンをobsolete表に移動することもできます。', note:'', lang:'Japanese')

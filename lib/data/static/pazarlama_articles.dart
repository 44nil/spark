import '../models/static_article.dart';

const List<StaticArticle> pazarlamaArticles = [
  StaticArticle(
    id: 'paz_01',
    title: 'Ürün Odaklı Büyüme: Satış Ekibi Olmadan Nasıl Büyünür?',
    category: 'Pazarlama',
    estimatedMinutes: 7,
    content: '''
<p>Product-Led Growth (PLG), ürünün kendisinin birincil büyüme motoru olduğu stratejidir. Kullanıcılar ürünü deneyimleyerek ikna olur, satın alır ve başkalarını davet eder. Slack, Dropbox, Figma, Notion — hepsi bu modelle büyüdü.</p>

<h2>PLG vs. Sales-Led Growth</h2>

<p>Geleneksel SaaS satışı şöyle çalışır: potansiyel müşteri bulunur, demo yapılır, anlaşma müzakere edilir, imzalanır, onboarding yapılır. Bu süreç aylar sürebilir ve pahalıdır.</p>

<p>PLG'de ise: kullanıcı ürünü dener (ücretsiz veya freemium), değeri kendi başına keşfeder, ödemeye geçer. Satıcı yoktur — ürün satar.</p>

<h2>PLG'nin Temel Bileşenleri</h2>

<p><strong>Viral loop:</strong> Kullanıcı ürünü kullandıkça başkalarını davet eder. Figma'da tasarım paylaşırsınız, karşı taraf projeyi görmek için açar — ve ürünü ilk kez deneyimler.</p>

<p><strong>Freemium:</strong> Ürünü ücretsiz deneyin. Yeterince değer gördüklerinde ödemeye geçerler. Bu model, satış maliyetini sıfıra yaklaştırır.</p>

<p><strong>Anında değer (time-to-value):</strong> Kullanıcı ürünü açtığı andan ne kadar hızlı değer elde ediyor? İlk 5 dakika kritiktir.</p>

<h2>PLG Metrikleri</h2>

<p>Geleneksel satış metrikleri (pipeline, close rate) yerine PLG metrikleri:</p>
<ul>
<li><strong>Activation rate:</strong> Kayıt olan kullanıcıların ne kadarı "aha moment"e ulaşıyor?</li>
<li><strong>PQL (Product Qualified Lead):</strong> Belirli davranışları gösteren, satın almaya hazır kullanıcı</li>
<li><strong>Expansion revenue:</strong> Mevcut kullanıcıların daha fazla ödemesi</li>
</ul>

<h2>Her Şirket İçin Uygun mu?</h2>

<p>Hayır. PLG, ürünün kendi kendini açıklayabildiği, anında değer sunabildiği durumlarda çalışır. Kurumsal satış, karmaşık entegrasyon ya da uzun onboarding gerektiren ürünler için hibrit model daha uygundur.</p>

<p>Ama temel prensip her şirket için geçerlidir: ürün ne kadar iyi anlatılıyor ve ne kadar hızlı değer sunuyor?</p>
''',
  ),

  StaticArticle(
    id: 'paz_02',
    title: 'İçerik Pazarlaması: Reklam Değil, Güven İnşa Etmek',
    category: 'Pazarlama',
    estimatedMinutes: 7,
    content: '''
<p>HubSpot, içerik pazarlaması sayesinde bugün milyar dolarlık bir şirkettir. Başlangıçta reklam bütçeleri yoktu — onun yerine potansiyel müşterilerinin sorularını cevaplayan içerikler yazdılar. Arama motorları onları buldu, güven kuruldu, satın alma gerçekleşti.</p>

<h2>İçerik Pazarlaması Neden İşe Yarar?</h2>

<p>İnsanlar satın almak istediklerinde araştırır. Google'a sorar, YouTube'da video arar, Reddit'te deneyim okur. Bu araştırma sürecinde karşılarına çıkan marka, güven kazanır.</p>

<p>Reklam dikkat satın alır. İçerik güven inşa eder. Dikkat anlık, güven kalıcıdır.</p>

<h2>İçerik Türleri</h2>

<p><strong>Blog ve makaleler:</strong> SEO'nun temeli. Potansiyel müşterinin sorduğu soruları yanıtlayan, kalıcı ve aranabilir içerik.</p>

<p><strong>Video:</strong> Karmaşık konuları görsel anlatma. YouTube ikinci büyük arama motorudur.</p>

<p><strong>Podcast:</strong> Dikkat süresi uzun. Çalışırken, giderken dinlenir. Otorite ve güven inşası için güçlüdür.</p>

<p><strong>Newsletter:</strong> En yüksek ROI'li kanal. Listeniz size aittir, algoritma değişmez.</p>

<h2>İçerik Stratejisi Nasıl Kurulur?</h2>

<p>1. <strong>Kitle:</strong> Kimin için yazıyorsunuz? Hangi soruları soruyor?</p>
<p>2. <strong>Anahtar kelimeler:</strong> Hedef kitleniz neyi arıyor? Search volume ve competition dengesi nerede?</p>
<p>3. <strong>Takvim:</strong> Tutarlılık kritiktir. Haftada bir harika içerik, ayda bir içerikten iyidir.</p>
<p>4. <strong>Dağıtım:</strong> İçerik yazmak yeterli değil. LinkedIn, Twitter, email, topluluklar — her kanala uygun formatta paylaşın.</p>

<h2>İçerik ROI Nasıl Ölçülür?</h2>

<p>Organik trafik, lead sayısı, conversion rate, içerikten gelen gelir. Kısa vadede bu sayılar düşük görünebilir — içerik pazarlaması 6-18 ay sonra meyvelerini verir. Sabır gerektirir.</p>

<p>En büyük hata: birkaç ay deneyip bırakmak. İçerik bir varlık inşasıdır, reklam değil.</p>
''',
  ),

  StaticArticle(
    id: 'paz_03',
    title: 'Fiyatlandırma Psikolojisi: Fiyat Bir Pazarlama Kararıdır',
    category: 'Pazarlama',
    estimatedMinutes: 6,
    content: '''
<p>Çoğu şirket fiyatı "maliyet artı kâr marjı" ile belirler. Bu, para masada bırakmaktır. Fiyat, maliyetle değil, müşterinin algıladığı değerle ilgili olmalıdır.</p>

<h2>Değer Bazlı Fiyatlandırma</h2>

<p>Basit soru: müşteriniz ürününüzden ne kadar değer elde ediyor? Eğer ürününüz bir şirkete yılda 1 milyon TL tasarruf ettiriyorsa, 100.000 TL fiyat ucuzdur.</p>

<p>Value-based pricing için: müşteri görüşmelerinde değer soruları sorun. "Bu ürün olmasaydı ne yapardınız? Kaça mal olurdu?" Cevaplar fiyatlandırmanızı şekillendirir.</p>

<h2>Psikolojik Fiyatlandırma</h2>

<p><strong>Charm pricing:</strong> 100 TL yerine 99 TL. Beyni farklı işler. Sol rakam değişir: 100'den 99'a geçişte beyin "90'larda" okur.</p>

<p><strong>Anchor pricing:</strong> Yüksek fiyatlı seçenek, orta fiyatlıyı makul gösterir. Apple her zaman en pahalı modeli öne çıkarır — böylece diğerleri ucuz görünür.</p>

<p><strong>Decoy effect:</strong> Üç seçenek sunulduğunda, orta seçenek en çok tercih edilir. Netflix planları bunu kullanır.</p>

<h2>Freemium'un Tehlikesi</h2>

<p>Freemium, müşteri edinme maliyetini düşürür. Ama yanlış uygulanırsa şirketi mahveder. Kritik soru: ücretsiz kullanıcıların kaçı ücretliye dönüşüyor?</p>

<p>%1-5 dönüşüm oranı çoğu B2C freemium için normaldir. Ama bu oran, ücretsiz kullanıcı hizmet maliyetini karşılamalıdır.</p>

<h2>Fiyat Artırımı</h2>

<p>Pek çok startup fiyatını düşük tutar, "sonra artırırız" der. Ama fiyat artırmak zordur — mevcut müşteriler tepki gösterir. Bu yüzden doğru fiyatla başlamak daha kolaydır.</p>

<p>Fiyatı test edin. A/B testi yapın. Farklı segmentlere farklı fiyat sunun. Veriye dayalı fiyatlandırma, tahmine dayalıdan her zaman üstündür.</p>
''',
  ),

  StaticArticle(
    id: 'paz_04',
    title: 'Retention: Müşteriyi Tutmak, Kazanmaktan Çok Daha Zordur',
    category: 'Pazarlama',
    estimatedMinutes: 6,
    content: '''
<p>Yeni müşteri edinmenin maliyeti, mevcut müşteriyi tutmanın 5-25 katıdır. Buna rağmen çoğu şirket pazarlama bütçesinin büyük kısmını yeni müşteri edinmeye harcayıp, mevcut müşteriyi görmezden gelir. Bu, sürekli su doldurulan delik kova problemidir.</p>

<h2>Churn Neden Önemlidir?</h2>

<p>%5 aylık churn, yılda %46 müşteri kaybı demektir. Bu şirketi sıfır noktasında tuttuğu anlamına gelir — ne kadar büyürseniz büyüyün, yerinde sayarsınız.</p>

<p>Tersine: %1 churn azalması, compound etkisiyle yıllar içinde büyük gelir farkı yaratır.</p>

<h2>Churn'ü Anlamak</h2>

<p>Müşteriler neden ayrılıyor? Varsayım değil, veri:</p>
<ul>
<li>Çıkış anketi: ayrılırken sorun</li>
<li>Win-back kampanyası: geri kazanmaya çalışırken öğrenin</li>
<li>Usage data: ayrılmadan önce kullanım düşüyor muydu?</li>
</ul>

<p>Genellikle churn, ürün kalitesinden değil, müşterinin değeri anlayamamasından kaynaklanır. Onboarding problemidir.</p>

<h2>Onboarding'in Kritikliği</h2>

<p>Kullanıcı ürünü ilk deneyimlediğinde "aha moment"e ulaşmalıdır — ürünün değerini hissettiği an. Bu an ne kadar geç gelirse churn o kadar yüksektir.</p>

<p>Slack'in aha moment'i 2000 mesajdır: bu eşiği geçen takımların büyük çoğunluğu ürüne yapışır. Bu metriki bulmak ve yeni kullanıcıları oraya taşımak, tüm onboarding stratejisini şekillendirdi.</p>

<h2>Customer Success</h2>

<p>B2B'de Customer Success ekibi, müşterilerin ürünü doğru kullandığından emin olur. Reaktif destek değil, proaktif başarı: "Hedeflerinize ulaşıyor musunuz? Şunu denediniz mi?"</p>

<h2>Net Promoter Score</h2>

<p>"Bu ürünü bir arkadaşınıza tavsiye eder misiniz?" sorusuna 0-10 arası verilen cevap. 9-10 promoter, 7-8 pasif, 0-6 detractors. NPS = promoter% - detractor%.</p>

<p>NPS, müşteri sadakatinin nabzını ölçer. Ama tek başına yeterli değil — düşük NPS'in arkasındaki nedeni bulmak asıl iştir.</p>
''',
  ),

  StaticArticle(
    id: 'paz_05',
    title: 'Email Pazarlaması: Algoritma Değişmez, Liste Size Aittir',
    category: 'Pazarlama',
    estimatedMinutes: 6,
    content: '''
<p>Instagram algoritması değişti, organik erişim düştü. Twitter kuralları değişti, hesaplar askıya alındı. Facebook reklamları pahalandı. Ama email listesi her zaman sizindir. Bu yüzden email, en güvenilir pazarlama kanalı olmaya devam eder.</p>

<h2>Email'in Avantajları</h2>

<p><strong>Sahiplik:</strong> Listenizdeki her kişiyle direkt iletişiminiz var. Algoritma filtresi yok, ücretli boost yok.</p>

<p><strong>Yüksek açılma oranı:</strong> İyi kurulmuş bir email listesinde açılma oranı %20-40'tır. Sosyal medya organik erişimi genellikle %2-5'tir.</p>

<p><strong>Yüksek satın alma niyeti:</strong> Email abonesi, içeriğinizi bilinçli olarak almak istemiştir. Bu niyet, rastgele sosyal medya kullanıcısından çok daha değerlidir.</p>

<h2>Liste Oluşturma</h2>

<p>Email listesi satın almayın. Satın alınan listeler düşük açılma oranı, yüksek spam şikayeti ve domain reputation hasarı getirir.</p>

<p>Organik büyüme yolları:</p>
<ul>
<li>Lead magnet: e-kitap, şablon, araç — değerli bir şey karşılığında email</li>
<li>İçerik duvarı: premium içeriğe email ile erişim</li>
<li>Bekleme listesi: ürün lansmanı öncesi merak uyandırma</li>
<li>Webinar/etkinlik: kayıt için email</li>
</ul>

<h2>Email Tasarımı</h2>

<p>Karmaşık HTML şablonlar yerine sade, metin ağırlıklı emailler çoğu zaman daha yüksek etkileşim sağlar. Kişisel gibi hissettirir.</p>

<p>Konu satırı her şeydir. A/B testi yapın. Kısa, merak uyandıran, kişiselleştirilmiş konu satırları açılma oranını iki katına çıkarabilir.</p>

<h2>Segmentasyon ve Otomasyon</h2>

<p>Herkese aynı email göndermek, kaynakları israf eder. Davranışa göre segmentleyin: yeni kullanıcı, aktif kullanıcı, inaktif kullanıcı, ödeme yapan müşteri. Her segment için farklı mesaj.</p>

<p>Otomasyon akışları kurun: hoşgeldin serisi, onboarding, win-back. Bu akışlar bir kez kurulur, sürekli çalışır.</p>
''',
  ),

  StaticArticle(
    id: 'paz_06',
    title: 'Marka Kimliği: Bütçe Olmadan Güçlü Marka Nasıl Kurulur?',
    category: 'Pazarlama',
    estimatedMinutes: 6,
    content: '''
<p>Büyük markalar büyük bütçelerle kurulur diye bir kural yoktur. Patagonia, Basecamp, Notion — bunların hepsi güçlü marka kimliklerini büyük reklam harcamaları olmadan inşa etti. Sır, tutarlılık ve özgünlüktür.</p>

<h2>Marka Nedir?</h2>

<p>Marka, bir logo ya da renk paleti değildir. Marka, insanların sizi düşündüklerinde hissettikleridir. Jeff Bezos'un tanımı: "Marka, insanlar odada yokken sizin hakkınızda söyledikleridir."</p>

<p>Bu tanım, markanın kontrolünüzde olmadığını gösterir — ama onu şekillendirebilirsiniz.</p>

<h2>Marka Kimliğinin Bileşenleri</h2>

<p><strong>Değerler:</strong> Neye inanıyorsunuz? Ne için duruyorsunuz? Patagonia, çevre aktivizmine açıkça bağlıdır. Bu tutum müşteri kaybettirir ama sadık bir topluluk oluşturur.</p>

<p><strong>Ses tonu:</strong> Nasıl konuşuyorsunuz? Resmi mi, samimi mi? Esprili mi, ciddi mi? Mailchimp'in ses tonu: arkadaşça, esprili, asla kurumsal. Bu tutarlılık, marka kimliğinin temelidir.</p>

<p><strong>Görsel kimlik:</strong> Logo, renkler, tipografi. Bunlar değerlerin görsel temsilidir. Ucuza yaptırmak kısa vadede tasarruf, uzun vadede marka hasarıdır.</p>

<h2>Küçük Şirketler İçin Marka Stratejisi</h2>

<p><strong>Niş seçin:</strong> "Herkese" hitap eden marka, kimseye hitap etmez. Belirli bir kitleye, belirli bir değerle konuşun.</p>

<p><strong>Tutarlı olun:</strong> Her temas noktasında aynı ses, aynı değerler, aynı his. Web sitesi, email, sosyal medya, müşteri desteği — hepsi aynı markayı yansıtmalı.</p>

<p><strong>Hikaye anlatın:</strong> Neden bu işi yapıyorsunuz? Kurucunun hikayesi, şirketin varoluş amacı — bunlar markanızı insan yapar.</p>

<h2>Marka Uzun Vadeli Yatırımdır</h2>

<p>Marka inşası performans pazarlaması gibi anlık sonuç vermez. Aylarca, yıllarca tutarlı çalışma gerektirir. Ama güçlü marka, zamanla en ucuz müşteri edinme kanalına dönüşür: insanlar sizi ararlar, siz onları aramak zorunda kalmazsınız.</p>
''',
  ),

  StaticArticle(
    id: 'paz_07',
    title: 'SEO\'nun Temeli: Algoritma Değil, İnsan İçin Yaz',
    category: 'Pazarlama',
    estimatedMinutes: 6,
    content: '''
<p>SEO'nun temel paradoksu şudur: algoritmayı memnun etmeye çalışan içerikler arama sıralamalarında düşer. İnsanı memnun eden içerikler ise yükselir. Google'ın algoritması, giderek artan bir hassasiyetle insanın ne istediğini anlamaya çalışır.</p>

<h2>Anahtar Kelime Araştırması</h2>

<p>SEO her şeyden önce niyeti anlamakla başlar: kullanıcı neden bu kelimeyi arıyor? Bilgi mi arıyor, satın alma mı yapacak, karşılaştırma mı yapıyor?</p>

<p><strong>Bilgi niyeti:</strong> "flutter nedir" — Eğitici içerik</p>
<p><strong>Ticari niyet:</strong> "en iyi proje yönetim yazılımı" — Karşılaştırma içeriği</p>
<p><strong>İşlemsel niyet:</strong> "notion indir" — Doğrudan yönlendirme</p>

<p>Her niyet için farklı içerik türü gerekir.</p>

<h2>Teknik SEO Temelleri</h2>

<p>Harika içerik bile teknik sorunlar varsa sıralamaya giremez:</p>
<ul>
<li>Sayfa hızı: 3 saniyenin üzerindeki yükleme süresi kullanıcı kaybettirir</li>
<li>Mobile uyumluluk: Google mobile-first indexing kullanır</li>
<li>Core Web Vitals: LCP, FID, CLS metrikleri</li>
<li>Canonical URL: duplicate content sorunlarını önler</li>
</ul>

<h2>Backlink Stratejisi</h2>

<p>Diğer sitelerden gelen linkler, Google için güvenilirlik sinyalidir. Kaliteli backlink elde etmenin en iyi yolu: link almayı hak eden içerik üretmek. Data-driven çalışmalar, orijinal araştırmalar, kapsamlı rehberler doğal link çeker.</p>

<h2>İçerik Derinliği</h2>

<p>Uzun biçimli, kapsamlı içerik genellikle kısa içerikten daha iyi sıralanır. Ama uzunluk için uzunluk değil — bir konuyu gerçekten derinlemesine ele alan içerik.</p>

<p>SEO bir sprint değil, maraton. 6-12 ay sonra meyvelerini verir. Ama o meyveler reklamın durduğu gün bitmez — içerik kalıcıdır.</p>
''',
  ),

  StaticArticle(
    id: 'paz_08',
    title: 'Hangi Metrikler Gerçekten Önemli? Vanity vs. Actionable',
    category: 'Pazarlama',
    estimatedMinutes: 5,
    content: '''
<p>Sosyal medya takipçi sayısı büyüyor. Web sitesi ziyaretçisi artıyor. App Store indirmesi yükseliyor. Bunların hepsi güzel görünür ama hiçbirinin gelirle ilgisi olmayabilir. Bu, vanity metrics — iyi hissettiren ama karar almayı zorlaştıran sayılar.</p>

<h2>Vanity vs. Actionable Metrik</h2>

<p>Vanity metrik: "Bu ay 10.000 yeni kullanıcı kaydoldu."</p>
<p>Actionable metrik: "Bu ay 10.000 kullanıcı kaydoldu, %12'si aktif oldu, %3'ü ödeme yaptı."</p>

<p>Vanity metrik sizi iyi hissettirir. Actionable metrik ne yapmanız gerektiğini söyler.</p>

<h2>North Star Metrik</h2>

<p>Şirketin tek odaklanacağı, büyüme ile müşteri değerini aynı anda yakalayan metrik. Herkesin bildiği, herkesin peşinden koştuğu.</p>

<p>Örnekler:</p>
<ul>
<li>Airbnb: gece sayısı</li>
<li>Spotify: dinleme dakikası</li>
<li>WhatsApp: gönderilen mesaj sayısı</li>
<li>HubSpot: haftalık aktif ekip üyesi</li>
</ul>

<p>North star metriği bulmak: hangi metrik arttığında hem şirket büyür hem müşteri değer görür?</p>

<h2>AARRR Çerçevesi</h2>

<p>Pirate Metrics olarak da bilinen bu çerçeve, startup büyüme funnel'ını tanımlar:</p>
<ul>
<li><strong>Acquisition:</strong> Kullanıcılar nereden geliyor?</li>
<li><strong>Activation:</strong> İlk değer deneyimi yaşıyor mu?</li>
<li><strong>Retention:</strong> Geri dönüyor mu?</li>
<li><strong>Revenue:</strong> Ödeme yapıyor mu?</li>
<li><strong>Referral:</strong> Başkalarına öneriyor mu?</li>
</ul>

<p>Her aşamada en zayıf halkayı bulun. Güçlendirin. Tekrarlayın.</p>

<h2>Dashboard Disiplini</h2>

<p>20 metrik takip etmek, 0 metrik takip etmekle aynıdır. Odak sağlamak için: her hafta 3-5 kritik metriğe bakın, gerisini aylık raporlara bırakın.</p>
''',
  ),

  StaticArticle(
    id: 'paz_09',
    title: 'B2B vs B2C Pazarlama: Aynı Oyunun Farklı Kuralları',
    category: 'Pazarlama',
    estimatedMinutes: 6,
    content: '''
<p>B2B ve B2C pazarlama arasındaki fark çoğu zaman abartılır. İkisi de insanlara pazarlıyor. Ama satın alma kararının yapısı temelden farklıdır ve bu fark, stratejiyi kökten değiştirir.</p>

<h2>Satın Alma Kararı Farkı</h2>

<p><strong>B2C:</strong> Genellikle bir kişi, kısa sürede, duygusal etkenlerle karar verir. "Bu ceket güzel görünüyor, alıyorum."</p>

<p><strong>B2B:</strong> Birden fazla karar verici, uzun süreç (ortalama 3-6 ay), mantıksal gerekçeler. "Bu yazılım bize nasıl ROI sağlayacak? IT güvenliği onaylıyor mu? CFO bütçe verir mi?"</p>

<h2>B2B Pazarlamada Farklılıklar</h2>

<p><strong>İlişki odaklı:</strong> B2B satışta ilişki kritiktir. Soğuk email değil, konferans, etkinlik, LinkedIn — insan tanımak önemlidir.</p>

<p><strong>Eğitim içeriği:</strong> Webinar, case study, whitepaper. B2B alıcı satın almadan önce çok araştırır. Bu araştırma sürecinde güven kurmak gerekir.</p>

<p><strong>Hesap bazlı pazarlama (ABM):</strong> Hedef şirketlere özelleştirilmiş yaklaşım. "Bu sektördeki şu büyüklükteki şirketlere" mesaj göndermek yerine, "şu şirketin şu ekibine" kişiselleştirilmiş yaklaşım.</p>

<h2>B2C Pazarlamada Farklılıklar</h2>

<p><strong>Duygusal bağ:</strong> Ürün ne hissettiriyor? Marka kimliği, hikaye anlatımı ön plandadır.</p>

<p><strong>Geniş erişim:</strong> TV, sosyal medya, influencer — kitleye ulaşmak için geniş ağ.</p>

<p><strong>Hız:</strong> Satın alma kararı anlıktır. İlk 3 saniyede ilgi çekilmeli.</p>

<h2>Ortak Noktalar</h2>

<p>Her iki model de nihayetinde insana pazarlar. Duygular B2B'de de karar sürecini etkiler. Güven her ikisinde de kritiktir. Müşteri deneyimi her ikisinde de belirleyicidir.</p>

<p>B2B mi, B2C mi? Hangisine pazarlıyorsunuz, onun kararlarını anlayın. Sonra o kararları kolaylaştırın.</p>
''',
  ),

  StaticArticle(
    id: 'paz_10',
    title: 'Dönüşüm Hunisi: Her Aşamada Ne Yapılır, Ne Kaybedilir?',
    category: 'Pazarlama',
    estimatedMinutes: 6,
    content: '''
<p>1000 kişi web sitenize gelir. 200'ü bir sayfaya bakar. 50'si kayıt olur. 10'u ödeme yapar. Bu, dönüşüm hunisidir — ve her aşama kayıp noktasıdır. Optimizasyonun amacı bu kayıpları azaltmaktır.</p>

<h2>Farkındalık (Awareness)</h2>

<p>Potansiyel müşteri sizi ilk kez fark eder. Bu aşamada görev: doğru kanalda, doğru kitleye görünmek.</p>

<p>Metrikler: impression, reach, organik trafik. Hata: yanlış kitleye ulaşmak — yüksek trafik, düşük kalite.</p>

<h2>İlgi (Interest)</h2>

<p>Sizi fark eden kişi daha fazla araştırır. Web sitenize girer, içeriğinizi okur. Bu aşamada görev: değer göstermek, güven kurmak.</p>

<p>Metrikler: oturum süresi, sayfa başına görüntüleme, geri dönüş oranı. Hata: ziyaretçiyi yanlış yönlendirmek, net bir next step sunmamak.</p>

<h2>Değerlendirme (Consideration)</h2>

<p>Satın almayı düşünüyor ama henüz karar vermedi. Demo istiyor, rakiplerle karşılaştırıyor, fiyatı inceliyor. Bu aşamada görev: rakiplerden farklılaşmak, itirazları önceden yanıtlamak.</p>

<p>Araçlar: case study, testimonial, karşılaştırma sayfası, ücretsiz deneme.</p>

<h2>Karar (Decision)</h2>

<p>Satın almaya hazır. Küçük bir sürtüşme bu aşamada kaybettirir. Ödeme sayfası karmaşıksa, form uzunsa, şüphe varsa — gider.</p>

<p>Optimizasyon: ödeme akışını basitleştirin. Güven sinyalleri ekleyin (SSL, para iade garantisi, referanslar). Anlık destek sunun.</p>

<h2>Sadakat (Retention)</h2>

<p>Satın alan müşteri, huni bitmez. Çünkü asıl para burada: tekrar satın alma, üst satış, tavsiye. Bu aşamanın optimizasyonu, yeni müşteri edinmekten çok daha ucuzdur.</p>

<p>Huni optimizasyonu: en büyük kayıp hangi aşamada? Oraya odaklanın. Küçük iyileştirmeler, huni boyunca compound etkisiyle büyük fark yaratır.</p>
''',
  ),
];

import '../models/static_article.dart';

const List<StaticArticle> startupArticles = [
  StaticArticle(
    id: 'startup_01',
    title: 'Ürün-Pazar Uyumu: Bulduğunda Zaten Hissedeceksin',
    category: 'Startup',
    estimatedMinutes: 7,
    content: '''
<p>Startup dünyasında en çok tekrarlanan ama en az anlaşılan kavramlardan biri ürün-pazar uyumudur. Marc Andreessen'in 2007'de tanımladığı bu kavram basittir: iyi bir pazarda, o pazarı tatmin edebilecek bir ürün yaratmak.</p>

<p>Ama "iyi pazar" ne demektir? Ve uyumu nasıl anlarsınız?</p>

<h2>Pazar mı, Ürün mü?</h2>

<p>Çoğu kurucu sorunu yanlış kurar. "Harika bir ürün yaptım, şimdi pazar bulacağım" der. Oysa Andreessen'in tezi tam tersidir: önce pazar, sonra ürün. Büyük ve acı veren bir problemi olan bir pazar, orta halli bir ürünü bile başarıya taşır. Küçük veya sahte bir problemi olan bir pazarda ise mükemmel ürün bile boğulur.</p>

<p>Türkiye'den örnek verelim. 2010'larda e-ticaret altyapısı yoktu — lojistik, ödeme, güven. Bu acıyı çözen her ürün büyüdü. Problem gerçekti, pazar büyüktü. Ürünler mükemmel değildi ama pazar onları taşıdı.</p>

<h2>Uyumu Nasıl Anlarsınız?</h2>

<p>Sean Ellis testini kullanın: "Bu ürün yarın kapansa ne hissederdiniz?" sorusunu kullanıcılarınıza sorun. %40 veya fazlası "çok hayal kırıklığı yaşarım" diyorsa, muhtemelen uyumu yakalamışsınızdır.</p>

<p>Ama sayıların ötesinde, uyumu hissedersiniz:</p>

<ul>
<li>Kullanıcılar sizi bulmak için çabalıyor, siz onları aramıyorsunuz</li>
<li>Churn düşük, insanlar ürüne yapışmış durumda</li>
<li>Beklentisiz büyüme var — reklam vermeden insanlar duyuyor</li>
<li>Destek talepleri "bu nasıl çalışır" değil "bunu da ekler misiniz" şeklinde</li>
</ul>

<h2>Uyum Öncesi ve Sonrası</h2>

<p>Paul Graham'ın deyimiyle: uyum öncesi tek göreviniz uyumu bulmaktır. Büyüme, ekip, süreç — bunların hepsi ikinci plandadır. Uyum bulmadan ölçeklenen şirketler, yanlış yönde hızlanan araçlardır.</p>

<p>Uyum bulduktan sonra ise dinamikler tersine döner. Artık sorun "yeterince hızlı büyüyebilir miyiz" olur.</p>

<h2>Yaygın Hatalar</h2>

<p><strong>Sahte uyum:</strong> İlk 10 müşteri arkadaşlarınızsa ve onlar da kibarlıktan kullanıyorsa, bu uyum değildir. Ürünü tanımadığınız insanlara satabilmeli ve onlar geri dönmeliydi.</p>

<p><strong>Erken ölçekleme:</strong> "Büyüyünce düzelir" düşüncesi. Düzelmez. Kırık bir şeyi ölçeklendirdiğinizde daha büyük kırık bir şey elde edersiniz.</p>

<p><strong>Metrik yanılsaması:</strong> Yüksek kayıt sayısı, aktif kullanım anlamına gelmez. Önemli olan insanların ürünü bırakmaması, bıraktıklarında geri gelmek istemeleridir.</p>

<h2>Sonuç</h2>

<p>Ürün-pazar uyumu bir formül değil, bir hissidir. Ama bu hisse ulaşmak için sistematik olmak gerekir: küçük başlayın, dinleyin, değiştirin, tekrar dinleyin. Kullanıcılarınızın sözleri değil, davranışları size gerçeği söyler.</p>

<p>En iyi startuplar büyük vizyon değil, gerçek acıyı çözdükleri için büyüdüler. Sizin çözdüğünüz acı gerçek mi?</p>
''',
  ),

  StaticArticle(
    id: 'startup_02',
    title: 'MVP Yanılgısı: "Minimum" Kelimesi Sizi Mahvedebilir',
    category: 'Startup',
    estimatedMinutes: 6,
    content: '''
<p>Minimum Viable Product kavramı Eric Ries'in "The Lean Startup" kitabıyla popüler oldu. Ama çoğu kurucu bu kavramı yanlış anlıyor. "Minimum" kelimesine takılıp, "viable" kelimesini unutuyorlar.</p>

<h2>MVP Ne Değildir?</h2>

<p>MVP, yarım kalmış, bug dolu, özür diler nitelikte bir ürün değildir. "Beta'yı çıkaralım, sonra düzeltiriz" mantığıyla yapılan şeyler MVP değil, tamamlanmamış üründür.</p>

<p>MVP bir öğrenme aracıdır. Amacı en az kaynakla en çok şeyi öğrenmektir. Kritik soru şudur: "Hangi hipotezi test ediyoruz?"</p>

<h2>Doğru MVP Sorusu</h2>

<p>Bir ürün kurmadan önce şunu yazın: "En büyük riskimiz şudur: ____". Bu riski test eden en küçük şeyi yapın. Bu, MVP'nizdir.</p>

<p>Dropbox'ın MVP'si bir ürün değil, bir videoydu. Drew Houston, dosya senkronizasyonunun çalıştığını gösteren 3 dakikalık bir video yayınladı. Gece içinde 75.000 kişi bekleme listesine kaydoldu. Hiç kod yazmadan en büyük riski test etti: "İnsanlar bunu ister mi?"</p>

<h2>Türleri</h2>

<p><strong>Wizard of Oz MVP:</strong> Ürün çalışıyormuş gibi görünür ama arka planda insan çalışır. Zappos başlangıçta böyle çalıştı — Jeff Bezos mağazaları dolaşıp ayakkabı satın alıyor, müşterilere gönderiyordu. Talep olduğunu kanıtladıktan sonra sistemi kurdu.</p>

<p><strong>Concierge MVP:</strong> Hizmeti elle, bire bir sunarsınız. Airbnb kurucuları başlangıçta ev sahiplerinin yanına gidip fotoğraflarını çekti, profillerini kendileri oluşturdu.</p>

<p><strong>Landing Page MVP:</strong> Ürün yoktur, sadece satış sayfası vardır. İnsanlar satın almaya çalışırsa problem gerçektir.</p>

<h2>Ne Kadar Minimum?</h2>

<p>İşte zor soru bu. Çok minimum olursa öğrenemezsiniz — ürün o kadar kötüdür ki reddedilmesi anlamlı değildir. Çok doluysa, yanlış şeyi öğrendiniz.</p>

<p>Kural şu: kullanıcının problemini gerçekten çözebilecek kadar iyi olmalı. Ama sadece o kadar.</p>

<h2>Başarı Metriği Önceden Belirlenmeli</h2>

<p>MVP çıkmadan önce şunu yazın: "Eğer X olursa, hipotezimiz doğrulanmış sayılır." X olmadan çıkarsanız, her sonucu kendinize göre yorumlarsınız. Bu ölçüm değil, kendini kandırmadır.</p>

<p>MVP bir ürün değil, bir deney. Deneyin başarısı öğrenmekten geçer, satıştan değil.</p>
''',
  ),

  StaticArticle(
    id: 'startup_03',
    title: 'Network Effect: Neden Bazı Ürünler Kullanıldıkça Güçlenir?',
    category: 'Startup',
    estimatedMinutes: 8,
    content: '''
<p>WhatsApp'ı neden kullanıyorsunuz? Muhtemelen çevrenizin kullandığı için. Peki Instagram? LinkedIn? Aynı sebep. Bu, ağ etkisinin gücüdür: her yeni kullanıcı, mevcut kullanıcılar için ürünü daha değerli kılar.</p>

<h2>Ağ Etkisinin Türleri</h2>

<p><strong>Direkt ağ etkisi:</strong> Kullanıcılar doğrudan birbirleriyle etkileşime girer. Telefon ağları, mesajlaşma uygulamaları. Metcalfe Yasası'na göre ağın değeri kullanıcı sayısının karesiyle orantılıdır.</p>

<p><strong>Dolaylı ağ etkisi:</strong> Farklı kullanıcı grupları birbirini güçlendirir. iOS geliştiricileri çoğaldıkça iPhone kullanıcıları artar, kullanıcılar arttıkça geliştiriciler çoğalır. Bu çift taraflı pazar dinamiğidir.</p>

<p><strong>Veri ağ etkisi:</strong> Daha fazla kullanıcı daha fazla veri üretir, bu da ürünü daha zekice yapar. Google Arama ve Waze bu modelin örnekleridir.</p>

<h2>Neden Önemli?</h2>

<p>Ağ etkisi olan bir ürün, zamanla rakipler tarafından kopyalanamaz hale gelir. Sizi kopyalayabilirler, ama ağınızı kopyalayamazlar. Bu yüzden WhatsApp 19 milyar dolara satın alındı — sadece bir uygulama değil, 450 milyon kullanıcılık bir ağ satın alındı.</p>

<h2>Soğuk Başlangıç Problemi</h2>

<p>Her ağ etkisi ürünü "tavuk-yumurta" sorunuyla başlar. İlk kullanıcı neden gelsin, kimse yokken? Çözümler:</p>

<ul>
<li><strong>Tek taraflı değer:</strong> Ağ olmadan da işe yarayan bir ürün yapın. Dropbox başlangıçta sadece kendi dosyalarınızı senkronize ediyordu — ağ gelmeden önce bile değerliydi.</li>
<li><strong>Küçük ağ:</strong> Küçük, sıkı bir topluluktan başlayın. Facebook sadece Harvard öğrencileriyle başladı. Küçük ama yoğun bir ağ, büyük ama seyrek bir ağdan daha değerlidir.</li>
<li><strong>Özel davet:</strong> Gmail'in başlangıcındaki davet sistemi hem kıtlık algısı yarattı hem de yüksek kaliteli ilk kullanıcı tabanı oluşturdu.</li>
</ul>

<h2>Türkiye'den Öğrenmek</h2>

<p>BiTaksi, Uber ve Lyft'in Türkiye'ye girmesinden önce güçlü bir ağ etkisi oluşturmuştu. Ama Uber geldiğinde bu avantajı koruyamadı çünkü ağ etkisi tek başına yetmez — ürün kalitesi de eşit ya da üstün olmalıdır.</p>

<h2>Yanılgılar</h2>

<p>Her pazar iki taraflı değildir. Her ürün ağ etkisinden yararlanamaz. "Ağ etkimiz var" demek için gerçekten her kullanıcının diğer kullanıcı için değer yaratıyor olması gerekir.</p>

<p>Ağ etkisi bir hendektir, ama hendek duvarlarını inşa etmek için önce doğru zemini bulmak gerekir.</p>
''',
  ),

  StaticArticle(
    id: 'startup_04',
    title: 'Pivot: Ne Zaman Dönmeli, Ne Zaman İnanmaya Devam Etmeli?',
    category: 'Startup',
    estimatedMinutes: 7,
    content: '''
<p>Startup tarihinin en romantik anlatıları pivotlarla doludur. YouTube video flört sitesiydi. Instagram konum paylaşım uygulamasıydı. Slack oyun şirketinin iç iletişim aracıydı. Bu hikayeler pivotun kaçınılmaz olduğu izlenimini verir. Ama her pivot başarıya götürmez — çoğu pivot, aslında teslimiyettir.</p>

<h2>Pivot Nedir, Değildir?</h2>

<p>Pivot, stratejik bir dönüşümdür. Ürünün bazı unsurlarını değiştirirken diğerlerini korumak. Bu, sadece fikri değiştirmek ya da başarısızlığı gizlemek değildir.</p>

<p>Eric Ries'e göre iyi bir pivot şunu korur: öğrendiklerinizi. İki yıl boyunca öğrendiklerinizi çöpe atmak pivot değil, sıfırdan başlamaktır.</p>

<h2>Pivot Sinyalleri</h2>

<p>Şu işaretler görüldüğünde pivot değerlendirilmelidir:</p>

<ul>
<li>Kullanıcılar ürünü kullanıyor ama siz hayal ettiğiniz şekilde değil — farklı bir şekilde kullanıyorlar</li>
<li>Büyüme durmuş, her şeyi denemiş ama hareket yok</li>
<li>Müşteriler ürünün sadece bir özelliğini seviyor, gerisi ilgi görmüyor</li>
<li>Pazar beklediğinizden çok daha küçük çıktı</li>
</ul>

<h2>Devam Sinyalleri</h2>

<p>Öte yandan şu durumlarda ısrar etmek gerekebilir:</p>

<ul>
<li>Pazar gecikmesi var — pazar henüz hazır değil ama hazırlanıyor</li>
<li>Ürün-pazar uyumuna yakınsınız — kullanıcı geri bildirimleri netleşiyor</li>
<li>Büyüme yavaş ama düzenli — viral değil ama sürdürülebilir</li>
</ul>

<h2>Kurucuların En Büyük Hatası</h2>

<p>Çok erken pivot, ya da çok geç pivot. Çok erken pivot genellikle ilk redden sonra yapılır — henüz yeterince öğrenmeden. Çok geç pivot ise sunk cost fallacy'nin kurbanı olmaktan gelir: "Bu kadar yatırım yaptık, geri dönemeyiz."</p>

<p>Kural basit: veriye bakın, ego'ya değil. Kullanıcılarınız size neden geldiklerini ve neden kaldıklarını söylüyorsa, dinleyin.</p>

<h2>Pivot Kararı Nasıl Verilir?</h2>

<p>Şu soruları yanıtlayın:</p>
<ol>
<li>Son üç aydaki öğrenmelerimiz hipotezlerimizi doğruladı mı?</li>
<li>Yeterince denediniz mi? Kaç kullanıcıyla, kaç iterasyonla?</li>
<li>Mevcut kullanıcılarınız gerçekten ürünü seviyor mu, yoksa kibarlık mı yapıyorlar?</li>
<li>Pivottan sonra ne değişecek, ne aynı kalacak?</li>
</ol>

<p>Pivot, başarısızlığın itirafı değildir. Öğrenmenin aksiyona dönüşmesidir. Ama her pivot kararında kendinize şunu sorun: "Cesaretten mi pivotluyorum, yoksa korkudan mı?"</p>
''',
  ),

  StaticArticle(
    id: 'startup_05',
    title: 'Kurucu Uyumu: Neden Çoğu Startup Ürün Değil, Ortak Yüzünden Batar?',
    category: 'Startup',
    estimatedMinutes: 6,
    content: '''
<p>Y Combinator verilerine göre erken aşama startup başarısızlıklarının en büyük nedenlerinden biri kurucu ayrılıklarıdır. Ürün değil, teknoloji değil, pazar değil — iki insanın çalışamaması.</p>

<h2>Ortak Seçimi Evlilik Gibidir</h2>

<p>Bu benzetme klişe ama doğru. Bir startup yolculuğunda ortağınızla eşinizden daha fazla zaman geçireceksiniz. Onun karar alma biçimini, stresle başa çıkma yöntemini, para hakkındaki değerlerini, ne kadar risk alabileceğini bilmeniz gerekir.</p>

<p>Çoğu kurucu ortaklarını "harika biriydi, çalışmak istedim" diyerek seçer. Bu, tanışma uygulamasından birini görüşmeye davet etmek gibidir. Yeterli değil.</p>

<h2>Tamamlayıcı Olun, Benzer Değil</h2>

<p>İki teknik kurucu veya iki iş geliştirme kurucusu risk taşır. İdeal kombinasyon tamamlayıcıdır: biri ürünü yapar, diğeri satar. Biri içeri bakar, diğeri dışarı.</p>

<p>Ama sadece beceri değil, bakış açısı da tamamlayıcı olmalıdır. Biri hızlı hareket etmek isterken diğeri her şeyi mükemmelleştirmek istiyorsa, bu sürtüşme enerji tüketir.</p>

<h2>Zor Konuşmaları Baştan Yapın</h2>

<p>Çoğu kurucu "sonra konuşuruz" dediği konular yüzünden ayrılır. Bu konuşmaları baştan yapın:</p>

<ul>
<li>Şirket batarsa ne olur? Borcumuz olursa?</li>
<li>Birisi ayrılmak isterse hisse nasıl çalışır? (Vesting)</li>
<li>Büyük bir şirketten düşük bir teklif gelse, satar mıyız?</li>
<li>Karar kilitlenirsek nasıl çözeriz?</li>
<li>Başarısız olduğumuzda birbirimizi suçlar mıyız?</li>
</ul>

<h2>Vesting Neden Zorunludur</h2>

<p>Her kurucu, hisselerini zaman içinde kazanmalıdır. Standart: 4 yıl vesting, 1 yıl cliff. Bu, ilk yıl ayrılırsa hiçbir şey almadığı anlamına gelir.</p>

<p>Bu "güvensizlik" değil, sağlıklı yapı kurmaktır. Hatta bu konuşmayı reddeden bir ortak adayı ciddi bir uyarı işaretidir.</p>

<h2>Ne Zaman Ayrılmalı?</h2>

<p>Değerler ayrışmışsa. Vizyon uyuşmuyorsa. Güven kırılmışsa. Bunlar teknik sorunlar gibi "çözülür" değildir.</p>

<p>Erken ayrılmak zordur. Geç ayrılmak ise her ikisi için de yıkıcıdır. Şirketi mahvedebilir, dostluğu mahvedebilir.</p>

<p>İş ortaklığı, iyilik günlerinde değil kötü günlerde test edilir. O günler gelmeden önce hazır olun.</p>
''',
  ),

  StaticArticle(
    id: 'startup_06',
    title: 'Burn Rate ve Runway: Kaç Ayınız Var ve Bunu Biliyor musunuz?',
    category: 'Startup',
    estimatedMinutes: 5,
    content: '''
<p>Startup'ların büyük çoğunluğu ürün ya da pazar yüzünden değil, parası bittiği için batar. Ve çoğu kurucu kaç ay paraları kaldığını tam olarak bilmez. Bu, uçakta yakıt göstergesine bakmamak gibidir.</p>

<h2>Temel Kavramlar</h2>

<p><strong>Burn rate:</strong> Her ay ne kadar para harcıyorsunuz? Gross burn tüm giderleriniz, net burn ise gelirleriniz düşüldükten sonraki harcamanızdır.</p>

<p><strong>Runway:</strong> Mevcut paranızı net burn'e böldüğünüzde kaç ay ömrünüz kaldığı. Kasada 500.000 TL, aylık net burn 50.000 TL ise 10 aylık runway'iniz var.</p>

<h2>Kaç Ay Yeterli?</h2>

<p>Genel kural: her zaman en az 12 ay runway'iniz olmalı. Yatırım süreçleri 3-6 ay sürer. Runway'iniz 6 ayın altına düştüğünde zaten geç kalmışsınızdır — stres altında iyi kararlar veremezsiniz, kötü koşulları kabul edersiniz.</p>

<h2>Büyüme ile Burn Dengesi</h2>

<p>Hızlı burn her zaman kötü değildir — eğer büyüme buna eşlik ediyorsa. Sorun, büyüme olmadan yüksek burn'dür.</p>

<p>Basit kontrol: aylık harcamanız ile aylık büyümeniz arasındaki ilişkiyi izleyin. Her 100.000 TL harcama, ne kadar gelir artışı getiriyor? Bu oran düşüyorsa, dikkatli olun.</p>

<h2>Krize Girmeden Önce Ne Yapmalı?</h2>

<ol>
<li>Her ay başında net burn'ünüzü hesaplayın</li>
<li>12 ayın altına düştüğünde fon arayışını başlatın</li>
<li>Krize girdiğinizde değil, güçlü pozisyondayken görüşün</li>
<li>Geliri artırma veya gideri azaltma senaryolarınız olsun</li>
</ol>

<p>Para yönetimi sıkıcı görünür ama bu takımın hayatta kalmasıdır. En iyi ürün bile para bitmeden önce büyüyemezse anlamsızlaşır.</p>
''',
  ),

  StaticArticle(
    id: 'startup_07',
    title: 'Erken Müşteri: İlk 10 Satış Her Şeyi Belirler',
    category: 'Startup',
    estimatedMinutes: 6,
    content: '''
<p>İlk müşterileriniz sadece gelir kaynağı değildir. Onlar ürününüzü şekillendirecek, referans olacak, size gerçek problemi öğretecek insanlardır. Bu yüzden ilk 10 satış, hızlıca kapamaya değil, doğru insanları bulmaya odaklanmalıdır.</p>

<h2>Doğru İlk Müşteri Kim?</h2>

<p>Problemi en yoğun hisseden. "Olsa iyi olur" değil, "olmadan hayatım çok zor" diyen. Bu insanlar mükemmel bir ürün beklemez — şu an ne kullandıklarından daha iyisini bekler.</p>

<p>Hubspot kurucuları ilk müşterilerini küçük işletme sahiplerinden seçti. Büyük kurumsal müşteriler kolay para gibi görünüyordu ama onların beklentileri ve satış döngüleri, erken aşama bir startup için öldürücüydü.</p>

<h2>İlk Satışı Nasıl Yapmalı?</h2>

<p>Soğuk e-posta değil, sıcak temas. Ağınızı kullanın. Konferanslara gidin. LinkedIn'de direkt mesaj gönderin. İlk satış relasyon satışıdır — ürünü değil, vizyonu, sizi satıyorsunuz.</p>

<p>Ve bedava vermeyin. Bedava müşteri size gerçek geri bildirim vermez. Para ödüyorlarsa gerçekten önemsiyorlar demektir.</p>

<h2>Öğrenme Amaçlı Satış</h2>

<p>Her satış görüşmesinde aynı soruları sorun:</p>
<ul>
<li>Bu problemi şu an nasıl çözüyorsunuz?</li>
<li>Bu problem size ne kadara mal oluyor (zaman, para)?</li>
<li>Bizi neden rakibinize tercih ettiniz?</li>
<li>Bizi rakibinize tercih etmenizi ne engeller?</li>
</ul>

<p>Bu soruların cevapları, satış konuşmanızı, ürün yol haritanızı ve fiyatlandırmanızı şekillendirir.</p>

<h2>İlk Müşterilerinizi Memnun Edin</h2>

<p>İlk 10 müşterinize aşırı hizmet verin. Onların sorunlarına gece de cevap verin. Özellik isteğini hemen yapın. Onlar sizin case study'leriniz, referanslarınız ve en büyük öğretmenlerinizdir.</p>

<p>Salesforce başlangıçta kurucular bizzat kurulum yapıyor, eğitim veriyordu. Bu ölçeklenebilir değildir ama ne istediğinizi öğretir.</p>

<p>İlk müşteri sadece bir satış değil, bir ortaklıktır. Buna göre davranın.</p>
''',
  ),

  StaticArticle(
    id: 'startup_08',
    title: 'Yatırım Turları: Pre-seed\'den Seri A\'ya Ne Beklenmeli?',
    category: 'Startup',
    estimatedMinutes: 8,
    content: '''
<p>Yatırım almanın romantik bir yanı yoktur. Gerçekte aylarca süren görüşmeler, redler, ego krizleri ve sonunda belki bir anlaşmadır. Süreci anlamak, hem zamanınızı hem de beklentilerinizi yönetmenizi sağlar.</p>

<h2>Aşamalar ve Beklentiler</h2>

<p><strong>Pre-seed (Türkiye: 500K - 5M TL):</strong> Genellikle fikir veya erken prototip aşaması. Yatırımcı ürüne değil, kurucuya bahis yapar. Melek yatırımcılar, kuluçkalar ve aile-arkadaş çevresi bu aşamada devrededir. Beklenen: vizyon, takım, pazar boyutu.</p>

<p><strong>Seed (Türkiye: 5M - 50M TL):</strong> MVP var, ilk müşteriler var. Ürün-pazar uyumuna doğru ilerliyorsunuz. Venture fonlar ve bazı melekler bu aşamada girer. Beklenen: erken traksiyon, büyüme potansiyeli.</p>

<p><strong>Seri A:</strong> Ürün-pazar uyumu bulunmuş, büyümeye hazır. Büyük VC fonları bu aşamada ağırlıklı. Beklenen: kanıtlanmış model, tekrarlanabilir büyüme, güçlü ekip.</p>

<h2>Yatırımcı Ne Arar?</h2>

<p>Basitçe: büyük bir pazarda hızlı büyüyen, güçlü bir takım tarafından yönetilen şirket. Ama bunun ötesinde:</p>

<ul>
<li><strong>Neden şimdi?</strong> Bu problem neden şimdi çözülüyor, 5 yıl önce değil?</li>
<li><strong>Neden siz?</strong> Bu problemi çözmek için neden siz doğru takımsınız?</li>
<li><strong>Neden bu pazar?</strong> Kazanırsanız ne kadar büyük olabilirsiniz?</li>
</ul>

<h2>Sık Yapılan Hatalar</h2>

<p><strong>Erken yatırım arama:</strong> Ürün-pazar uyumu bulmadan yatırım ararsanız hem reddedilirsiniz hem de zamanca ciddi kayıp yaşarsınız.</p>

<p><strong>Sadece paraya odaklanmak:</strong> İyi yatırımcı akıllı para getirir — network, deneyim, tavsiye. Kötü yatırımcı sadece para getirir ama kontrol ister, baskı yapar.</p>

<p><strong>Seyreltmeyi anlamamak:</strong> Her turda hisselerinizin bir kısmını veriyorsunuz. Çok fazla seyreltme, ileride motivasyonu öldürür.</p>

<h2>Türkiye Ekosistemi</h2>

<p>Son yıllarda 212, Revo Capital, IdeasHouse, Earlybird gibi fonlar Türkiye merkezli yatırımlar yapıyor. Global fonlar da Türkiye'ye bakıyor — özellikle fintech, e-ticaret, SaaS alanlarında.</p>

<p>Yatırım almak bir hedef değil, araçtır. Asıl hedef, o parayla ürün-pazar uyumunu bulmak ya da mevcut uyumu ölçeklendirmektir.</p>
''',
  ),

  StaticArticle(
    id: 'startup_09',
    title: 'İlk 10 Çalışan: Kültürü Onlar Kurar, Siz Değil',
    category: 'Startup',
    estimatedMinutes: 6,
    content: '''
<p>Bir startup'ın kültürü, kurucuların söylediği değerlerde değil, ilk çalışanların davranışlarında yaşar. İlk 10 kişi, ilerleyen yıllarda 100 kişiyi seçecek, 1000 kişiyi etkileyecek. Bu yüzden bu işe alımlar en kritik kararlardır.</p>

<h2>Yetenek mi, Uyum mu?</h2>

<p>Her ikisi de gerekli, ama erken aşamada uyum daha kritiktir. Mükemmel yetenekli ama yanlış değerlere sahip bir kişi, ekibin tamamını etkileyebilir. Küçük bir takımda bir zehirli eleman büyük hasara yol açar.</p>

<p>Netflix'in "Brilliant Jerks" politikası nettir: ne kadar yetenekli olursa olsun, ekiple uyumsuz çalışan birini tutmazlar. Çünkü bir iyi çalışanın kaybettiği motivasyon, o kişinin katkısından çok daha pahalıya mal olur.</p>

<h2>Jeneralisti İşe Alın</h2>

<p>Erken aşamada uzmanlara değil, jeneralistlere ihtiyacınız var. "Ben sadece backend yazarım" diyen değil, ihtiyaç olduğunda müşteri aramasına bile girebilecek, rollerin bulanık olduğu ortamda rahat olan insanlar.</p>

<p>Bu ilerleyen dönemde değişir. Seri A sonrasında uzmanlara ihtiyaç artar. Ama başlangıçta esneklik, uzmanlıktan değerlidir.</p>

<h2>İşe Alma Süreci</h2>

<p>Hızlı işe almayın. Kurucular bizzat mülakat yapmalı. Referans kontrolünü atlamamalı. Ve aday için gerçek bir "proje" yapın — gerçek bir problemi birlikte çözün. Bu, özgeçmişten çok daha fazlasını gösterir.</p>

<p>Stripe'ın işe alma çubuğu yüksektir: her yeni çalışan, mevcut ekibin ortalama seviyesini yükseltmeli. Bu kuralı baştan benimseyin.</p>

<h2>İlk İşten Çıkarma</h2>

<p>Yanlış kişiyi işe aldığınızı anlarsanız, hızlı hareket edin. Erken aşamada geciktirmek hem şirkete hem de o kişiye zarar verir. Ve yanlış kişiyi tutmak, diğer iyi çalışanlara "burada standartlar önemsiz" mesajı verir.</p>

<p>İşe alım hataları olacak. Önemli olan hızlı fark edip hızlı hareket etmektir.</p>

<p>Kültür beyan edilmez, inşa edilir. Ve onu inşa eden ilk çalışanlardır.</p>
''',
  ),

  StaticArticle(
    id: 'startup_10',
    title: 'Rekabeti Yanlış Okumak: "Rakibimiz Yok" Diyenin Derdi Büyük',
    category: 'Startup',
    estimatedMinutes: 5,
    content: '''
<p>Yatırımcılara sunum yapan her kurucunun neredeyse yüzde doksanı şöyle bir slayt geçirir: rakip analizi. Ve çoğu bu analizde ya rakip göremez ya da rakiplerini küçümser. Her ikisi de tehlikelidir.</p>

<h2>"Rakibimiz Yok" Demek Ne Anlama Gelir?</h2>

<p>Ya pazarı yanlış tanımladınız, ya problemi kimse çözmüyor diye sahte bir fırsat görüyorsunuz, ya da gerçekten erken bir fikirdeydiniz. İlk iki ihtimal daha yaygındır.</p>

<p>Eğer kimse bu problemi çözmüyorsa, neden? Yoksa pazar çok mu küçük? Çözmek teknik olarak mı imkansız? Ekonomik olarak mı mantıksız? Bu soruları yanıtlamak gerekir.</p>

<h2>Gerçek Rakipler Kimdir?</h2>

<p>Doğrudan rakipler: aynı problemi çözen aynı kategorideki şirketler.</p>

<p>Dolaylı rakipler: aynı bütçeden pay alan farklı çözümler. Proje yönetim yazılımı satan bir şirketin rakibi sadece Jira değil, Excel ve e-postadır.</p>

<p>Statüko: en güçlü rakip çoğu zaman "şu an ne yapıyorlar." Kullanıcılar yeni bir çözüme geçmek için mevcut alışkanlıklarını değiştirmek zorunda.</p>

<h2>Rekabete Doğru Bakmak</h2>

<p>Rekabet var mı? İyi. Pazar doğrulanmış demektir. Büyük rakipler var mı? Onlardan farklılaşma yolunuz ne? Hangi segmenti ihmal ediyorlar?</p>

<p>Stripe, PayPal varken kuruldu. Dropbox, Google Drive olmadan önce. Netflix, Blockbuster varken. Rakip varlığı değil, rakipten farklılaşma önemlidir.</p>

<h2>Kalıcı Avantaj Nedir?</h2>

<p>Teknoloji kopyalanır. Özellikler kopyalanır. Fiyat kopyalanır. Kalıcı avantaj şunlardır: ağ etkisi, veri avantajı, marka, dağıtım kanalı, düzenleyici engeller.</p>

<p>Rakiplerinizi küçümsemeyin. Onların başarısızlıklarından öğrenin, güçlü yanlarına saygı duyun. En iyi strateji "onlardan daha iyi olmak" değil, "onların görmediği yerde olmak"tır.</p>
''',
  ),
];

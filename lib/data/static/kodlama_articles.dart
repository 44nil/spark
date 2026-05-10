import '../models/static_article.dart';

const List<StaticArticle> kodlamaArticles = [
  StaticArticle(
    id: 'kod_01',
    title: 'Clean Code: Kodu Çalıştırmak Değil, Okunabilir Yazmak',
    category: 'Kodlama',
    estimatedMinutes: 7,
    content: '''
<p>Robert C. Martin'in "Clean Code" kitabı yayınlandığında, yazılım dünyasında tartışmalı bir tez öne sürdü: kod önce insanlar için yazılır, sonra makineler için. Bu basit fikir, kod kalitesine bakışı kökten değiştirdi.</p>

<h2>Neden Okunabilirlik Önemli?</h2>

<p>Bir kod tabanında geçirilen zamanın %80'inden fazlası okumaya harcanır, yazmaya değil. Bir değişiklik yapmak için önce mevcut kodu anlamanız gerekir. Anlaşılmaz kod, değişikliği yavaşlatır, hata riskini artırır, motivasyonu düşürür.</p>

<p>Bir hesaplama: eğer bir geliştirici bir kodu anlamaya 30 dakika yerine 5 dakika harcasaydı, yılda yüzlerce saat kazanılırdı. Bu, soyut bir verimlilik değil, doğrudan iş çıktısıdır.</p>

<h2>İyi İsimlendirme Her Şeydir</h2>

<p>Değişken, fonksiyon ve sınıf isimlerini doğru seçmek, kod kalitesinin en ucuz ve en etkili yolunu temsil eder.</p>

<p>Kötü örnek: <code>int d; // elapsed time in days</code></p>
<p>İyi örnek: <code>int elapsedTimeInDays;</code></p>

<p>Yorum yazmak zorunda kaldığınızda, genellikle kodu daha iyi yazabilirdiniz demektir. İyi kod, kendini açıklar.</p>

<h2>Fonksiyonlar Küçük Olmalı</h2>

<p>Bir fonksiyon bir şey yapmalıdır. Sadece bir şey. Ve bunu iyi yapmalıdır. Eğer fonksiyonunuza "ve" ile bağladığınız şeyler anlatıyorsanız, aslında birden fazla fonksiyon yazıyorsunuz demektir.</p>

<p>20 satırı geçen fonksiyonlara şüpheyle bakın. 50 satırı geçen fonksiyon neredeyse her zaman bölünebilir.</p>

<h2>Yorumlar Genellikle Başarısızlığın İzlerindir</h2>

<p>Bu kuralın istisnaları vardır: API belgeleme, karmaşık algoritmanın açıklanması, yasal zorunluluklar. Ama "bu kodu anlasınlar diye" yazılan yorumların çoğu, kodu daha iyi yazarak gereksiz kılınabilir.</p>

<p>Üstelik yorumlar güncellenmez. Kod değişir, yorum eskir, yorum yanlışlaşır ve artık zararlı hale gelir.</p>

<h2>DRY Prensibi</h2>

<p>Don't Repeat Yourself. Aynı mantığı iki yerde görüyorsanız, üçüncü kez yazmadan önce durmanın zamanı gelmiştir. Tekrarlayan kod, değişiklik yapıldığında her kopyayı güncelleme yükü ve her seferinde bir kopyayı atlama riski taşır.</p>

<h2>Pratik Başlangıç</h2>

<p>Her kod incelemesinde şu soruyu sorun: "Bunu altı ay sonra ilk kez gören biri anlayabilir mi?" Eğer hayır ise, değiştirin. Bu basit alışkanlık, zaman içinde kod tabanını dramatik biçimde dönüştürür.</p>

<p>Temiz kod bir kez yazılmaz, sürekli yeniden yazılır. Refactor etmekten korkmayın — bu, yazılım geliştirmenin ayrılmaz parçasıdır.</p>
''',
  ),

  StaticArticle(
    id: 'kod_02',
    title: 'Sistem Tasarımına Giriş: Büyük Sistemler Nasıl Düşünülür?',
    category: 'Kodlama',
    estimatedMinutes: 9,
    content: '''
<p>Küçük bir uygulama yazmak ile milyonlarca kullanıcıya hizmet veren bir sistem tasarlamak arasındaki fark nitelik değil, nicelik değil — tamamen farklı bir düşünce biçimidir. Sistem tasarımı, bu düşünce biçimini öğretir.</p>

<h2>Temel Kavramlar</h2>

<p><strong>Ölçeklenebilirlik:</strong> Sistem, yük arttığında nasıl davranır? Yatay ölçekleme (daha fazla sunucu) mi, dikey ölçekleme (daha güçlü sunucu) mi?</p>

<p><strong>Güvenilirlik:</strong> Bir bileşen çöktüğünde sistem nasıl davranır? Tek başarısızlık noktaları (single point of failure) nerede?</p>

<p><strong>Gecikme ve verimlilik:</strong> Bir isteğin tamamlanması ne kadar sürer? Sistemin saniyede kaç isteği işleyebilir?</p>

<h2>Load Balancer</h2>

<p>Gelen istekleri birden fazla sunucuya dağıtan bileşendir. Bu sayede tek bir sunucu yerine sunucu havuzu çalışır. Bir sunucu çökerse diğerleri devralır. Bu, hem güvenilirlik hem de ölçeklenebilirlik sağlar.</p>

<h2>Caching</h2>

<p>Aynı veriyi defalarca veritabanından çekmek yerine, hızlı erişilebilir bir ara katmanda tutmaktır. Redis ve Memcached bu amaç için yaygın araçlardır.</p>

<p>Kural: okumanın yazmadan çok daha sık olduğu veriler için cache idealdir. Kullanıcı profili, ürün kataloğu, konfigürasyon verileri bunlara örnektir.</p>

<h2>Veritabanı Seçimi</h2>

<p>SQL (ilişkisel): yapılandırılmış veri, güçlü tutarlılık, karmaşık sorgular için. PostgreSQL, MySQL.</p>

<p>NoSQL: esnek şema, yatay ölçekleme, yüksek yazma hızı için. MongoDB, Cassandra, DynamoDB.</p>

<p>Seçim ne zaman hangisi değil, hangi problemi çözdüğünüze bağlıdır. İkisini aynı sistemde birlikte kullanmak yaygındır.</p>

<h2>Message Queue</h2>

<p>İki sistem arasında eşzamansız iletişim kurmak için kullanılır. Kullanıcı bir işlem başlatır, sistem hemen "tamam" der, arka planda işlem ayrı bir süreçte tamamlanır. RabbitMQ, Kafka, SQS bunların örnekleridir.</p>

<p>E-posta gönderme, fatura oluşturma, video işleme — bunların hepsinin kullanıcıyı bekletmesi gerekmez.</p>

<h2>CDN</h2>

<p>Content Delivery Network, statik dosyaları (resim, video, CSS, JS) kullanıcıya en yakın sunucudan sunar. İstanbul'daki kullanıcı, Türkiye'deki CDN node'undan servis alırken San Francisco'daki sunucuya gidip gelmez.</p>

<h2>Sistem Tasarımı Bir Denge Sanatıdır</h2>

<p>Her karar bir takas içerir. Tutarlılık mı, kullanılabilirlik mi? Basitlik mi, esneklik mi? Hız mı, maliyet mi?</p>

<p>Doğru sistem tasarımı "en iyi" tasarım değil, probleminizin kısıtları içinde en uygun tasarımdır. Bu kısıtları anlamadan başlamak, mühendisliğin değil tahmin oyununun başlangıcıdır.</p>
''',
  ),

  StaticArticle(
    id: 'kod_03',
    title: 'Git Workflow: Takım Olarak Kod Yönetiminin Temelleri',
    category: 'Kodlama',
    estimatedMinutes: 6,
    content: '''
<p>Git, tek başına çalışırken güçlü bir araçtır. Ama asıl gücü takım çalışmasında ortaya çıkar — ve asıl kaoslar da orada başlar. İyi bir Git workflow, kodu değil, işbirliğini yönetir.</p>

<h2>Branch Stratejisi</h2>

<p><strong>Main/Master:</strong> Her zaman çalışan, production'a gidebilecek kod. Doğrudan commit yapılmaz.</p>

<p><strong>Feature branch:</strong> Her yeni özellik, ayrı bir branch'te geliştirilir. Tamamlanınca main'e merge edilir. İsimlendirme: <code>feature/user-authentication</code>, <code>fix/login-bug</code>.</p>

<p><strong>GitFlow:</strong> Daha karmaşık projelerde develop, release, hotfix branch'leri eklenebilir. Ama basit projelerde bu karmaşıklık gereksizdir.</p>

<h2>Commit Mesajları</h2>

<p>İyi commit mesajı şunu söyler: "Bu commit ne yapar?" — "Bu commit ne değiştirir?" değil.</p>

<p>Kötü: <code>fix stuff</code>, <code>update</code>, <code>wip</code></p>
<p>İyi: <code>Add email validation on registration form</code>, <code>Fix null pointer in user profile fetch</code></p>

<p>Conventional Commits formatı standartlaşmayı sağlar: <code>feat:</code>, <code>fix:</code>, <code>docs:</code>, <code>refactor:</code> prefix'leri kullanın.</p>

<h2>Pull Request Kültürü</h2>

<p>PR, kod incelemesinin yaşandığı yerdir. İyi bir PR:</p>
<ul>
<li>Küçüktür — birkaç yüz satırı geçmez</li>
<li>Tek bir amacı vardır</li>
<li>Açıklaması net, bağlamı verilidir</li>
<li>Test edilmiş ve geçmiştir</li>
</ul>

<p>Büyük PR'lar incelenmez, onaylanır. Bu, code review'un amacını yok eder.</p>

<h2>Code Review Nasıl Yapılır?</h2>

<p>İki amaç vardır: hata bulmak ve bilgi aktarmak. Yorumlarınız kişisel değil, kod hakkında olmalıdır. "Sen bunu yanlış yaptın" değil, "Bu yaklaşım şu durumda sorun yaratabilir, şöyle çözebilirsiniz."</p>

<p>Her PR en az iki gözden geçirmesi gerekir. Biri hata arar, biri genel tasarıma bakar.</p>

<h2>Merge Stratejisi</h2>

<p><strong>Merge commit:</strong> Tüm geçmişi korur ama log karmaşık olabilir.</p>
<p><strong>Squash merge:</strong> Branch'teki tüm commitleri tek bir commit'e indirir. Temiz bir geçmiş sağlar.</p>
<p><strong>Rebase:</strong> Branch geçmişini main üzerine yeniden yazar. En temiz log ama takım uyumunu gerektirir.</p>

<p>Hangisini seçtiğiniz önemli değil — önemli olan tutarlı olmaktır. Kaos, herkesin farklı şey yapmasından doğar.</p>
''',
  ),

  StaticArticle(
    id: 'kod_04',
    title: 'Teknik Borç: Ne Zaman Öder, Ne Zaman Birikirsen Batar?',
    category: 'Kodlama',
    estimatedMinutes: 6,
    content: '''
<p>Ward Cunningham'ın teknik borç metaforu, yazılım geliştirmenin en güçlü kavramlarından biridir. Finansal borç gibi, teknik borç da faiz öder. Farkı şudur: teknik borç, zamanla daha hızlı büyür ve çok geç fark edilir.</p>

<h2>Teknik Borç Nedir?</h2>

<p>Daha iyi bir çözüm yerine hızlı bir çözüm tercih ettiğinizde ortaya çıkan ek maliyettir. Bazen bilinçli alınır — "şimdi hızlı yapıyoruz, sonra düzeltiriz." Bazen farkında olmadan birikir — o "geçici çözüm" yıllarca production'da kalır.</p>

<h2>Borç Türleri</h2>

<p><strong>Bilinçli borç:</strong> Deadline için hız tercih edilir. Makul olabilir, ancak sonra geri dönme planı olmalıdır.</p>

<p><strong>Bilinçsiz borç:</strong> Deneyim eksikliğinden gelen kötü kararlar. En tehlikeli borçtur çünkü varlığından haberdar olunmaz.</p>

<p><strong>Bit rot (çürüme):</strong> Başlangıçta iyi yazılmış kod, zamanla değişen gereksinimlerle uyumsuz hale gelir. Kimse dokunmak istemez, ama büyümeye devam eder.</p>

<h2>Faiz Nasıl Ödenir?</h2>

<p>Her özellik eklentisi, her hata düzeltmesi, borcun varlığı nedeniyle daha uzun sürer. Takım yavaşlar. Yeni geliştiriciler koda adapte olmakta zorlanır. Hata oranı artar. Güven azalır.</p>

<p>Google'ın araştırmaları, yüksek teknik borçlu projelerde geliştirme hızının %50'nin üzerinde düştüğünü göstermiştir.</p>

<h2>Yönetim Stratejisi</h2>

<p><strong>Görünür kılın:</strong> Teknik borcu takip edin. Jira'da, GitHub Issues'ta, bir spreadsheet'te — nerede olduğunu ve ne kadara mal olduğunu bilin.</p>

<p><strong>Boy Scout Rule:</strong> Bir kodu açtığınızda, bıraktığınızda bulduğunuzdan biraz daha temiz bırakın. Küçük iyileştirmeler birikimledir.</p>

<p><strong>Refactoring zamanı ayırın:</strong> Her sprint'in %20'si teknik iyileştirmelere ayrılabilir. Bu, özellik geliştirmeyi yavaşlatmaz — uzun vadede hızlandırır.</p>

<h2>Ne Zaman Sıfırdan Yazmak Gerekir?</h2>

<p>Neredeyse hiçbir zaman. Joel Spolsky'nin dediği gibi: sıfırdan yeniden yazmak, en tehlikeli kararlardan biridir. Mevcut kod tüm bugları, edge case'leri, keşfedilmiş davranışları içerir. Yeni kod bunları kaybeder.</p>

<p>Kademeli refactoring, neredeyse her zaman sıfırdan yazmaktan daha az risklidir ve çoğunlukla daha hızlı iyileşme sağlar.</p>
''',
  ),

  StaticArticle(
    id: 'kod_05',
    title: 'Test Yazmanın Gerçek Amacı: Güvence Değil, Tasarım',
    category: 'Kodlama',
    estimatedMinutes: 7,
    content: '''
<p>Çoğu geliştirici teste şöyle bakar: kod yazıldıktan sonra yapılan kontrol. Ama bu bakış açısı, testin gerçek gücünü gizler. Test, özellikle Test-Driven Development (TDD), bir tasarım aracıdır.</p>

<h2>TDD Nedir?</h2>

<p>Önce test yaz, sonra kodu yaz. Üç adım: kırmızı (test başarısız), yeşil (test geçecek minimum kod), refactor (kodu temizle).</p>

<p>Bu döngü, kodu dışarıdan nasıl kullanıldığı perspektifinden yazmanızı sağlar. Kod yazarken değil, kullanıcı perspektifinden düşünürsünüz. Bu, daha temiz API'ler, daha bağımsız modüller ve daha az gereksiz karmaşıklık getirir.</p>

<h2>Test Piramidi</h2>

<p><strong>Unit testler (taban):</strong> Tek bir fonksiyon ya da sınıfı izole test eder. Hızlıdır, çok sayıda yazılmalıdır. Sistemin %70-80'ini kapsamalıdır.</p>

<p><strong>Integration testler (orta):</strong> Birden fazla bileşenin birlikte çalışmasını test eder. Veritabanı, API çağrıları. Daha yavaş, daha az.</p>

<p><strong>E2E testler (tepe):</strong> Kullanıcı perspektifinden tam akışı test eder. En yavaş, en az. Kritik kullanıcı senaryoları için.</p>

<h2>Ne Kadar Test Yeterli?</h2>

<p>%100 coverage hedeflemek yanıltıcıdır. Coverage, test kalitesini ölçmez — kodun çalıştırıldığını ölçer. Anlamsız testler %100 coverage sağlayabilir ama hiçbir değer üretmez.</p>

<p>Kritik iş mantığı: her zaman test. UI bileşenleri: seçici test. Üçüncü taraf entegrasyonlar: mock ve contract test.</p>

<h2>Test Bakımı</h2>

<p>Test yazmak yeterli değil. Testlerin bakımı da gerekir. Kırık testleri görmezden gelmek, alarm yorgunluğu yaratır. Bir test defalarca başarısız olup geçiyorsa, kimse ona güvenmez.</p>

<p>Flaky test (bazen geçen, bazen kırılan) en zararlı test türüdür. Güven vermez, zaman çalar.</p>

<h2>Test Kültürü</h2>

<p>Test bir bireysel alışkanlık değil, takım kültürüdür. Code review'da testler incelenmeli. "Test yazmak vakit kaybı" söylemi, teknik borç biriktirme söylemidir.</p>

<p>İyi test süiti, güvenli refactoring yapar. Güvenli refactoring, sürdürülebilir hız sağlar. Sürdürülebilir hız, uzun vadeli başarıdır.</p>
''',
  ),

  StaticArticle(
    id: 'kod_06',
    title: 'API Tasarımı: Geliştiriciye Karşı Nazik Olmak',
    category: 'Kodlama',
    estimatedMinutes: 6,
    content: '''
<p>İyi tasarlanmış bir API'yi ilk kullandığınızda hissedersiniz. Tahmin edilebilir, tutarlı, bağlamı açık. Kötü tasarlanmış bir API de hemen belli olur — belgesiz, tutarsız, tuzaklarla dolu.</p>

<h2>REST Prensipleri</h2>

<p>REST bir protokol değil, bir mimari stildir. Temel prensipleri:</p>

<ul>
<li>Kaynaklar isim (URL), eylemler fiil (HTTP metodu) ile ifade edilir</li>
<li>GET: okuma, POST: oluşturma, PUT/PATCH: güncelleme, DELETE: silme</li>
<li>URL'ler tahmin edilebilir: <code>/users/{id}/posts</code></li>
<li>Sunucu durumu saklamaz (stateless)</li>
</ul>

<h2>İsimlendirme Tutarlılığı</h2>

<p>En sık yapılan hata: tutarsız isimlendirme. Bir endpoint <code>getUser</code>, diğeri <code>fetch_product</code>, üçüncüsü <code>users/retrieve</code>. Kullanıcının her seferinde belgeye bakması gerekir.</p>

<p>Kurallar baştan belirleyin ve tutun. Camel case mi, snake case mi? Tekil mi, çoğul mu? Versiyon nerede? Bu kararlar tutarlı olduğunda API kendi kendini açıklar.</p>

<h2>Hata Yönetimi</h2>

<p>HTTP durum kodlarını doğru kullanın:</p>
<ul>
<li>400: Hatalı istek (client hatası)</li>
<li>401: Kimlik doğrulama gerekli</li>
<li>403: Yetki yok</li>
<li>404: Kaynak bulunamadı</li>
<li>500: Sunucu hatası</li>
</ul>

<p>Her hata cevabı makine tarafından okunabilir kod ve insan tarafından okunabilir mesaj içermelidir. <code>{"error": "INVALID_EMAIL", "message": "E-posta formatı geçersiz"}</code></p>

<h2>Versiyonlama</h2>

<p>API'ler değişir. Eski kullanıcıları kırmamak için versiyonlama şarttır. <code>/v1/users</code>, <code>/v2/users</code>. Büyük değişikliklerde yeni versiyon, geriye dönük uyumlu değişikliklerde aynı versiyon.</p>

<h2>Belgeleme</h2>

<p>Belgesiz API, kullanılmayan API'dir. Swagger/OpenAPI ile interaktif belgeleme oluşturun. Her endpoint için: ne yapar, hangi parametreler, hangi cevap formatı, örnek istek/cevap.</p>

<p>API tasarımı, kullanıcı arayüzü tasarımı gibi empati gerektirir. Kodu çalıştırmak değil, kullananı mutlu etmek hedef olmalıdır.</p>
''',
  ),

  StaticArticle(
    id: 'kod_07',
    title: 'Veritabanı Seçimi: SQL ve NoSQL Arasındaki Gerçek Fark',
    category: 'Kodlama',
    estimatedMinutes: 7,
    content: '''
<p>"SQL mı, NoSQL mı?" sorusu, yazılım dünyasının en çok tartışılan konularından biridir. Ve tartışmanın büyük kısmı gereksizdir çünkü doğru cevap daima şudur: probleminize bağlı.</p>

<h2>SQL'in Gücü</h2>

<p>İlişkisel veritabanları 50 yıldır kullanılıyor. Bu uzun ömrün sebebi vardır: ACID garantileri, güçlü sorgu dili, olgunlaşmış ekosistem.</p>

<p>ACID: Atomicity (işlemin tamamı başarılı ya da hiç), Consistency (veri her zaman geçerli durumda), Isolation (eşzamanlı işlemler birbirini etkilemez), Durability (kayıt kalıcı).</p>

<p>Bankacılık, e-ticaret, muhasebe — paranın ve kritik verinin olduğu her yer SQL ister.</p>

<h2>NoSQL'in Gücü</h2>

<p>NoSQL, "SQL değil" değil, "yalnızca SQL değil" anlamına gelir. Farklı problemler için farklı türler:</p>

<p><strong>Document (MongoDB):</strong> Esnek şema, JSON benzeri belgeler. Hızlı iterasyon, değişen veri yapıları için ideal.</p>

<p><strong>Key-Value (Redis):</strong> Çok hızlı okuma/yazma. Cache, session yönetimi, gerçek zamanlı liderboard.</p>

<p><strong>Column (Cassandra):</strong> Çok yüksek yazma hızı, yatay ölçekleme. IoT, log verileri, zaman serisi.</p>

<p><strong>Graph (Neo4j):</strong> İlişkilerin karmaşık olduğu veriler. Sosyal ağlar, öneri sistemleri, fraud detection.</p>

<h2>Karar Kriterleri</h2>

<p>SQL tercih edin:</p>
<ul>
<li>Veri yapısı önceden belirli ve değişmeyecek</li>
<li>Karmaşık sorgular ve join'ler gerekli</li>
<li>ACID garantileri zorunlu</li>
</ul>

<p>NoSQL tercih edin:</p>
<ul>
<li>Şema sık değişiyor ya da belirsiz</li>
<li>Çok yüksek yazma/okuma hacmi</li>
<li>Yatay ölçekleme kritik</li>
<li>Veriler hiyerarşik ya da grafik yapıda</li>
</ul>

<h2>Poliglot Persistence</h2>

<p>Modern sistemlerin çoğu her ikisini birlikte kullanır. Ana veri PostgreSQL'de, cache Redis'te, arama Elasticsearch'te. Her araç en iyi olduğu işi yapar.</p>

<p>Seçimi ideolojik değil, pratik yapın. "Herkes MongoDB kullanıyor" ya da "SQL artık eski" argümanları teknik değil, moda argümanlardır.</p>
''',
  ),

  StaticArticle(
    id: 'kod_08',
    title: 'Performans Optimizasyonu: Önce Ölç, Sonra Optimize Et',
    category: 'Kodlama',
    estimatedMinutes: 6,
    content: '''
<p>Donald Knuth'un ünlü sözü hâlâ geçerlidir: "Premature optimization is the root of all evil." Erken optimizasyon, yazılım geliştirmenin en yaygın ve en zararlı anti-pattern'lerinden biridir.</p>

<h2>Neden Ölçmeden Optimize Etmemeli?</h2>

<p>Sezgilerimiz genellikle yanlıştır. Geliştiriciler çoğunlukla gerçek darboğazın olmadığı yerleri optimize eder. Sistemi yavaşlatan şey çoğu zaman beklenmez: veritabanı sorgusu, network gecikmesi, disk I/O — CPU değil.</p>

<p>Ölçmeden optimize etmek, hastaya tanı koymadan ameliyat yapmaktır.</p>

<h2>Profiling Araçları</h2>

<p>Her platform için profiling araçları vardır. Python'da cProfile, Node.js'de clinic.js, Java'da JProfiler. Bu araçlar kodun nerede zaman harcadığını gösterir — tahmin ettiren değil, kanıtlayan.</p>

<p>Flame graph'lar, hangi fonksiyonun ne kadar CPU tükettiğini görsel olarak gösterir. İlk kez gördüğünüzde sürprizler çoğu zaman beklenmedik yerlerde olur.</p>

<h2>Yaygın Darboğazlar</h2>

<p><strong>N+1 sorgu problemi:</strong> Bir liste için N tane ayrı veritabanı sorgusu. ORM kullanırken en sık karşılaşılan performans katilidir. Eager loading ile çözülür.</p>

<p><strong>Missing index:</strong> Milyonluk tabloda index'siz sorgu, tüm satırları tarar. Doğru index, sorguyu 100x hızlandırabilir.</p>

<p><strong>Gereksiz hesaplama:</strong> Her istekte aynı hesaplamayı yapmak. Cache edilebilir mi? Önceden hesaplanabilir mi?</p>

<p><strong>Büyük payload:</strong> API'nin ihtiyaçtan fazla veri dönmesi. GraphQL veya field selection ile gereksiz veri azaltılabilir.</p>

<h2>Optimizasyon Önceliklendirme</h2>

<p>En yüksek etkiyi en az çabayla sağlayan optimizasyonu önce yapın. Cache eklemek, algoritmayı yeniden yazmaktan çoğunlukla daha hızlı ve etkilidir.</p>

<p>Performans hedefi belirleyin: "sayfa 2 saniyenin altında yüklenmeli" gibi somut bir hedef. Hedefe ulaştığınızda durun. Mükemmel için daha fazla zaman harcamak, genellikle geri dönüşü düşük bir yatırımdır.</p>

<h2>Production Monitoring</h2>

<p>Geliştirme ortamında ölçmek yetmez. Production verisi farklı davranır. Datadog, New Relic, Prometheus gibi araçlarla production'ı sürekli izleyin. Sorun çıkmadan önce darboğazları görün.</p>
''',
  ),

  StaticArticle(
    id: 'kod_09',
    title: 'Microservices mi, Monolith mi? Doğru Soruyu Sormak',
    category: 'Kodlama',
    estimatedMinutes: 7,
    content: '''
<p>Microservices son yılların en trend mimarisidir. Netflix, Uber, Amazon kullanıyor — öyleyse siz de kullanmalısınız, değil mi? Hayır. Bu, dünyanın en iyi atletlerin antrenman programını takip etmeye benzer: işe yaramaz, belki zarar verir.</p>

<h2>Monolith Nedir?</h2>

<p>Tüm uygulama tek bir süreç olarak çalışır. Tek bir kod tabanı, tek deployment, tek veritabanı. Bu "eski" ya da "kötü" değildir — aksine pek çok avantajı vardır.</p>

<p>Avantajları:</p>
<ul>
<li>Geliştirmesi kolay — tek repo, tek dil, tek ortam</li>
<li>Debugging kolay — stack trace anlaşılır</li>
<li>Deployment basit</li>
<li>Servisler arası iletişim maliyeti yok</li>
<li>Tutarlılık sağlamak kolay</li>
</ul>

<h2>Microservices Nedir?</h2>

<p>Uygulama, her biri bağımsız çalışan, bağımsız deploy edilebilen küçük servislere bölünür. Her servis tek bir iş yapar.</p>

<p>Avantajları:</p>
<ul>
<li>Bağımsız ölçekleme — sadece yoğun servisi ölçekle</li>
<li>Teknoloji çeşitliliği — her servis farklı dil/DB kullanabilir</li>
<li>Hata izolasyonu — bir servis çökerse diğerleri çalışır</li>
<li>Takım bağımsızlığı — farklı takımlar bağımsız çalışabilir</li>
</ul>

<h2>Microservices'in Gizli Maliyetleri</h2>

<p>Bu avantajlar gerçek — ama bedeli de büyüktür:</p>

<ul>
<li>Network gecikmesi: her servis çağrısı bir network hop'udur</li>
<li>Distributed tracing: bir hata kaç servisten geçti?</li>
<li>Data consistency: transaction'lar servisler arasında zorlaşır</li>
<li>Operational complexity: 50 servisi deploy, monitor, scale etmek</li>
<li>Büyük takım gerektirir: her servis için sorumluluk gerekli</li>
</ul>

<h2>Doğru Karar Nasıl Verilir?</h2>

<p>Martin Fowler'ın tavsiyesi nettir: "Monolith-first." Başlangıçta monolith yapın. Sınırları anlayın. Gerçek darboğazlar ortaya çıktığında, gerekli parçaları microservice olarak çıkarın.</p>

<p>Microservices, ölçek probleminiz olduğunda mantıklıdır. 5 kişilik takımla 100 mikroservisi yönetmek, bir startup için trajiktir.</p>

<p>Amazon, Netflix microservices'e geçtiğinde binlerce mühendisleri vardı. Sizin durumunuz farklı olabilir. Trend değil, problem odaklı düşünün.</p>
''',
  ),

  StaticArticle(
    id: 'kod_10',
    title: 'Developer Deneyimi: İyi Araç Seçimi Neden Üretkenliği İkiye Katlar?',
    category: 'Kodlama',
    estimatedMinutes: 5,
    content: '''
<p>Bir geliştirici günde ortalama 4-6 saat aktif kod yazar. Geri kalanı araçlarla boğuşmakla, bağlamı yeniden kurmakla, yavaş build'leri beklemekle geçer. İyi araçlar bu kayıpları azaltır ve asıl işe zaman kalır.</p>

<h2>Editör ve IDE</h2>

<p>VS Code, JetBrains ürünleri, Neovim — doğru editör kişisel tercihtir, ama her editörü iyi bilmek yanlış. Bir editörü mükemmel bilmek çok daha değerlidir.</p>

<p>Kısayollar öğrenin. Fare kullanmayı azaltın. Dosyalar arası gezinmeyi, refactoring araçlarını, terminal entegrasyonunu öğrenmek ilk haftalar yavaşlatır, sonraki yılları hızlandırır.</p>

<h2>Local Development Ortamı</h2>

<p>Docker, yerel ortamı tutarlı ve taşınabilir kılar. "Bende çalışıyor" problemi ortadan kalkar. Herkes aynı ortamda çalışır.</p>

<p>Ortam kurulumu belgelenmiş ve otomatikleştirilmiş olmalıdır. Yeni bir geliştirici 30 dakikada verimli olabilmeli. Bu süre saatler alıyorsa, developer experience borcu var demektir.</p>

<h2>CI/CD Pipeline</h2>

<p>Her commit'te otomatik test, lint, build. Her merge'de otomatik deployment. Manuel süreçler hata üretir ve zaman çalar.</p>

<p>İyi CI/CD pipeline'ı:</p>
<ul>
<li>5 dakikadan kısa sürer (uzun olanlar görmezden gelinir)</li>
<li>Net hata mesajları verir</li>
<li>Flaky değildir</li>
</ul>

<h2>Linting ve Formatting</h2>

<p>Kod stili tartışmaları zaman çalar. ESLint, Prettier, Black, gofmt — hangisini kullandığınız değil, otomatikleştirdiğiniz önemlidir. Her commit'te format kontrolü yapılsın. Code review'da stil tartışmaları olmasın.</p>

<h2>Logging ve Observability</h2>

<p>Bir hata oluştuğunda ne kadar hızlı buluyorsunuz? İyi loglama ve monitoring bu süreyi saatlerden dakikalara indirir.</p>

<p>Developer deneyimi, şirketin verimliliğidir. Araçlara, ortama, automation'a yatırım yapmak, her geliştiriciyi daha üretken kılar. Bu en yüksek ROI'li yatırımlardan biridir.</p>
''',
  ),
];

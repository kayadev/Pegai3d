# 🧭 3D Printer Odaklı CAD Uygulaması – Yol Haritası

## 🎯 Proje Vizyonu

3D printer kullanıcılarının kolayca model oluşturup düzenleyebileceği, öğrenmesi ve kullanımı kolay bir CAD uygulaması geliştirmek.  
Amaç: Sketch → Solid → STL Export akışını basitleştiren modern, sade ve erişilebilir bir 3D tasarım ortamı.

---

## 🖥️ Desteklenen Platformlar

- macOS (SwiftUI + SceneKit, ileride Metal optimizasyonu)
- iPad (iPadOS) — iPhone desteklenmez (UI sade ve büyük ekran odaklıdır)

Not: iPad dışındaki iOS cihazları hedef dışındadır; App Store yükleme kapsamı sadece iPad olarak ayarlanacaktır. macOS için ayrı native hedef veya (isteğe göre) Mac Catalyst varyantı kullanılabilir.

---

## ⚙️ Teknoloji Yığını (Tech Stack)

| Alan              | Teknoloji                         |
| ----------------- | --------------------------------- |
| UI                | SwiftUI                           |
| 3D Görselleştirme | SceneKit (başlangıç), sonra Metal |
| Geometri          | OpenCascade (C++ → Swift köprüsü) |
| Dosya Formatı     | STL, JSON                         |
| Depolama          | iCloud / Dosyalar API             |
| Ödeme             | StoreKit (In-App Purchase)        |
| Sürüm Kontrol     | GitHub                            |

---

## 🗓️ 12 Aylık Geliştirme Planı

### **0. Aşama — Proje Hazırlığı (1–2 Hafta)**

**Amaç:** Temelleri hazırlamak, altyapıyı seçmek.

| Durum | Görev |
| :---- | :---- |
| ✅ | Xcode’da SwiftUI + SceneKit tabanlı proje oluştur |
| ⏳ | OpenCascade framework entegrasyonu (henüz eklenmedi) |
| ✅ | GitHub deposu açıldı, versiyon kontrolü başlatıldı |
| ⏳ | Apple Developer hesabı ayarlanması |
| ✅ | Platform hedefleri belirlendi (macOS + iPadOS, iPhone hariç) |
| ✅ | SceneViewContainer temel sahne ile eklendi |
| ✅ | CI (GitHub Actions) temel build workflow eklendi |
| ✅ | Proje metinleri: LICENSE, CONTRIBUTING, CODE_OF_CONDUCT, SECURITY, FUNDING |

**Sonuç:** Çalışır temel iskelet + altyapı dokümantasyonu hazır. OpenCascade ve Apple Developer adımı sırada.

---

### **1. Ay — 3D Sahne & Görselleştirme**

**Amaç:** Kullanıcı 3D ortamda hareket edebilsin.

- SceneKit ile sahne oluştur.
- Kamera kontrolleri (orbit, pan, zoom).
- Izgara ve eksen çizgileri ekle.
- Basit objeler (cube, sphere, cylinder).

🧠 _Sonuç: Kullanıcı 3D ortamda obje görebilir ve döndürebilir._

---

### **2. Ay — Seçim & Etkileşim**

**Amaç:** Kullanıcı objeleri tıklayıp seçebilsin.

- Objeye tıklama algılama (hit test).
- Seçili objeyi vurgulama.
- Objeyi hareket ettirme, döndürme (gizmo).

---

### **3–4. Ay — Sketch Modülü (2D Çizim Sistemi)**

**Amaç:** Kullanıcı 2D şekiller çizebilsin (extrude için temel).

- Sketch mode (üstten görünüm).
- Nokta, çizgi, daire, dikdörtgen araçları.
- Snap-to-grid sistemi.
- JSON formatında sketch kaydetme/yükleme.

🧠 _Sonuç: Kullanıcı 2D kontur oluşturabilir._

---

### **5. Ay — Extrude ve Solid İşlemleri (OpenCascade)**

**Amaç:** Sketch’ten 3D katı üretmek.

- OpenCascade kullanarak extrude işlemi.
- Oluşturulan katıyı SceneKit’te göster.
- Katı kaydetme, hata kontrolü.

---

### **6. Ay — STL Export / Import**

**Amaç:** Kullanıcı modelini dışa aktarabilsin.

- STL dosyası oluşturma (export).
- Dosya paylaşımı (iCloud, Dosyalar).
- STL import ve görüntüleme.

🧠 _Sonuç: Kullanıcı kendi modelini dışa aktarabilir._

---

### **7. Ay — UI / UX Tasarımı**

**Amaç:** Kullanıcı dostu sade arayüz.

- Sketch / Solid / Export mod sekmeleri.
- Toolbar yapısı (Undo, Redo, Save, Export).
- Basit ikon tasarımları.
- Karanlık/açık tema desteği.

---

### **8. Ay — Kısayollar ve Kullanıcı Profilleri**

**Amaç:** Kullanıcı alışkanlıklarına göre özelleştirme.

- “UI Profile” sistemi (Fusion / Blender / Simple).
- Hotkey eşleme.
- JSON tabanlı kullanıcı tercihleri.

---

### **9. Ay — Öğrenme Katmanı**

**Amaç:** Yeni kullanıcıya rehberlik.

- İlk açılışta eğitim (onboarding).
- Tooltip sistemleri.
- Mini örnek model yükleyici.

---

### **10. Ay — Performans & Optimizasyon**

**Amaç:** Uygulama akıcı çalışsın.

- Metal optimizasyonu.
- Hafıza ve render iyileştirmeleri.
- OpenCascade hata yakalama.
- Dosya boyutu küçültme.

---

### **11. Ay — App Store Hazırlığı**

**Amaç:** Yayına hazır hale getirmek.

- Uygulama simgesi, tanıtım görselleri.
- App Store açıklamaları (TR+EN).
- In-App Purchase sistemi.
- TestFlight beta testi.

---

### **12. Ay — Yayın ve Pazarlama**

**Amaç:** Ürünü tanıt ve geri bildirim topla.

- App Store lansmanı.
- Maker topluluklarında duyuru.
- Geri bildirim toplama ve 1.1 sürüm planı.

---

## 🚀 Opsiyonel Gelişim (2. Yıl)

- Parametrik modelleme sistemi.
- AI destekli sketch düzeltme.
- Bulut tabanlı model paylaşımı.
- Apple Pencil gesture modelleme (iPad).

---

## 💰 Fiyatlandırma Stratejisi

- **Yıl 1:** Ücretsiz kullanım.
- **Yıl 2+:** Uygun fiyatlı yıllık abonelik (örneğin 9,99 USD/yıl).
- In-App Purchase ile geçiş sistemi.
- Öğrenciler için kalıcı ücretsiz sürüm seçeneği düşünülebilir.

---

## ✅ Hedef

Kullanımı kolay, öğrenmesi hızlı, 3D printer odaklı ve OpenCascade tabanlı bir CAD uygulaması geliştirerek Maker topluluğu için güçlü ama erişilebilir bir alternatif sunmak.

---

📅 **Hazırlayan:** Mustafa Kaya  
🧠 **Amaç:** Bağımsız olarak sıfırdan bir CAD altyapısı ve uygulaması geliştirmek.

# Pegai3d

SwiftUI tabanlı iOS/macOS (uygunsa) 3D / AR odaklı bir proje (kısa açıklamayı ihtiyaca göre güncelleyebilirsiniz).

## Başlangıç
Xcode ile açın:

1. `Pegai3d.xcodeproj` dosyasına çift tıklayın veya `open Pegai3d.xcodeproj`.
2. Hedef (target) ayarlarını ve imza (Signing & Capabilities) bölümünü kendi takım/Apple ID bilginizle güncelleyin.

## Gereksinimler
- Xcode 15+ (Swift 5.9+)
- iOS 17 SDK

## Çalıştırma
Simulator veya gerçek cihaz seçip Run (⌘R) yapın.

## Versiyon Kontrol Akışı (Öneri)
- `main` korumalı ana dal
- Özellik geliştirme: `feature/ozellik-adi`
- Hızlı düzeltme: `fix/hata-adi`

Örnek:
```
git checkout -b feature/model-yukleme
# geliştirme
git commit -m "feat: 3D model yükleme ilk sürüm"
git push -u origin feature/model-yukleme
```

## Commit Mesajı Konvansiyonu (Öneri)
- `feat:` yeni özellik
- `fix:` hata düzeltme
- `refactor:` yapısal değişiklik
- `docs:` dokümantasyon
- `chore:` araç/yardımcı değişiklik

## Lisans
Bir lisans eklemek için `LICENSE` dosyası oluşturun (ör: MIT). Şimdilik placeholder.

---
Bu README otomatik oluşturuldu; içeriği proje geliştikçe güncelleyin.

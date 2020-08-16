# Flutter Google Sign In Example

<p><img  src="https://i.imgur.com/lIqT8d5.png"/></p>

### Apps Feature:

- Authentication(Login) With Google

  ### Setup
  1. Menginstall package firebase_auth
  2. Menginstall package google_sign_in
  3. Buat Project Baru di Firebase
  4. Menambahkan / Mendaftarkan Android App di Project Firebase tadi, isi data-data yang diperlukan, untuk generate SHA-1 Sign In Certificate bisa dilakukan dengan instruksi dari laman ini <a href="https://developers.google.com/android/guides/client-auth">Cara Generate SHA-1 Sign In Certificate</a>
  atau dengan cara yang ada pada thread ini <a href="https://stackoverflow.com/a/61308880">Cara Generate SHA-1 Sign In Certificate (spesifik)</a> 
  hingga menemukan hasil seperti ini 
  ```
   > Task :app:signingReport
    Variant: debug
    Config: debug
    Store: C:\Users\username_\.android\debug.keystore
    Alias: AndroidDebugKey
    MD5: 76:****disensor****:AA
    SHA1: 76:****disensor****:AA
    SHA-256: 76:****disensor****:AA
    Valid until: Monday, December 13, 2025
  ```
  copy key SHA1 nya pastekan pada kolom Debug Sign In Certificate SHA-1 Pada Pendaftaran Android App Ke Project Firebase tadi *dan jangan lupa download file google-services.json* kemudian pindahkan file google-services.json kedalam direktori *"android/app"*

  5. Aktifkan Sign In dan Sign Up Method With Google Pada Menu Authentication Di Project Firebase Anda
  6. Lalu Mengaktifkan Credential OAuth Consent Screen Ikuti Cara Yang Ada Pada Link Spesifik Paragraf ini <a href="https://medium.com/flutter-community/flutter-implementing-google-sign-in-71888bca24ed#fe91">Menuju ke paragraf sebuah Thread</a>
  7. Selesai dan jalankan projectya

  ### Terima kasih dan selamat mencoba
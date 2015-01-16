taifitb
=======

Template LaTeX untuk Tugas Akhir I IF ITB. Terdapat 2 file:  
1. taIifitb.cls : untuk laporan TA I (perhatikan karakter 'I' setelah 'ta') dan  
2. taifitb.cls  : untuk laporan TA II (segera menyusul).  

Dependensi:  
1. inputenc  
2. babel  
3. mathptmx  
4. geometry  
5. setspace  
6. multicol  
7. subfiles  
8. graphicx  
9. tocloft  
10. paralist  
11. biblatex  
12. CJKutf8  
13. mathtools  
14. amsfonts  
15. hyperref  
16. xindy  
17. glossaries  
18. caption  
19. biblatex-apa  
20. csquotes  
21. hyphenat  
22. fontenc  
23. calc  
24. booktabs  
25. titlesec  

Direktori:  
\ (root)  
+-> appendices  
|   +-> lampiranA.tex  
|   +-> ...  
+-> bibliography  
|   +-> ref.bib  
+-> figures  
|   +-> itb.png  
|   +-> ...  
+-> glossary  
|   +-> istilah.tex  
|   +-> lambang.tex  
|   +-> singkatan.tex  
+-> hyphenation  
|   +-> id.tex  
|   +-> ...  
+-> main  
|   +-> main.tex  
+-> sections  
|   +-> judul  
|   +-> ttd1.tex  
|   +-> ttd2.tex  
|   +-> bab1.tex  
|   +-> bab2.tex  
|   +-> bab3.tex  
|   +-> lampiran.tex  
|   +-> ...  
+-> taifitb  
    +-> taIifitb.cls  
    +-> taifitb.cls *menyusul*  

Instruksi manual:  
1. Menambah bab  
   a. tambahkan baris '\subfile(../sections/<namafile>)'.  
   b. buat file terpisah untuk bab tersebut dalam folder /sections.  
   c. tambahkan baris '\documentclass[../main/main.tex]{subfiles}' pada baris pertama file tersebut.  
2. Menambah istilah/lambang/singkatan  
   a. tambahkan definisi istilah/lambang/singkatan yang baru pada file yang bersesuaian dalam folder /glossary.  
   b. ikuti petunjuk dari http://en.wikibooks.org/wiki/LaTeX/Glossary untuk urusan teknis hehe.  
3. Menambah gambar  
   a. taruh semua gambar dalam folder /figures.  
   b. ikuti contoh untuk masalah teknis lagi hehe.  
4. Menambah pustaka  
   a. taruh pustaka yang baru dalam file /bibliography/ref.bib.  
   b. ikuti dokumentasi biblatex-apa untuk masalah teknis lagi lagi hehe.  
5. Menambah lampiran  
   a. tambahkan entri lampiran yang baru dalam file /sections/lampiran.tex.  
   b. taruh lampiran yang baru dalam folder /appendices.  
   c. ikuti contoh untuk masalah teknis ya haha.  

Catatan:  
1. Beberapa kustomisasi harus dilakukan secara manual pada file /main/main.tex (hanya perlu memberi/menghilangkan tanda comment '%').  
2. Penulisan daftar pustaka masih memiliki perbedaan format dengan panduan Bu Fazat. Fyi, pembuatan class ini mengikuti standard APA (biblatex-apa).  
3. Penulisan daftar istilah/singkatan/lambang juga belum sesuai, namun memenuhi spek teknis.  
4. Hyphenation (pemotongan kata pada batas kanan margin) masih harus manual. Tambahkan aturan pada file /hyphenation/id.tex untuk bahasa Indonesia. Formatnya silakan mengikuti contoh. Untuk bahasa Inggris, silakan buat file /hyphenation/en.tex dan tambahkan '\input(../hyphenation/en)' pada bagian atas file /main/main.tex.  
5. Jika ada hal teknis yang belum di-cover. Silakan hubungi saya. Jika sudah ada solusi, tolong di-broadcast ya.  

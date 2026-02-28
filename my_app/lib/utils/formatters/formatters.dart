import 'package:intl/intl.dart';

class TFormatter {
  
  // Format Tanggal: 26-Jan-2026 atau 26/01/2026
  static String formatDate(DateTime? date) {
    date ??= DateTime.now();
    // Menggunakan locale 'id' untuk nama bulan bahasa Indonesia
    return DateFormat('dd MMMM yyyy', 'id').format(date); 
  }

  // Format Mata Uang: Rp 1.500.000
  static String formatCurrency(double amount) {
    return NumberFormat.currency(
      locale: 'id_ID', 
      symbol: 'Rp ', 
      decimalDigits: 0, // Biasanya Rupiah tidak menampilkan sen
    ).format(amount);
  }

  // Format Nomor Telepon Indonesia: 0812-3456-7890
  static String formatPhoneNumber(String phoneNumber) {
    // Menghapus semua karakter non-digit
    var digitsOnly = phoneNumber.replaceAll(RegExp(r'\D'), '');

    if (digitsOnly.length >= 10 && digitsOnly.length <= 13) {
      // Format: 0812-3456-7890
      return '${digitsOnly.substring(0, 4)}-${digitsOnly.substring(4, 8)}-${digitsOnly.substring(8)}';
    }
    
    return phoneNumber;
  }

  // Format Internasional untuk Indonesia: +62 812 3456 7890
  static String internationalFormatPhoneNumber(String phoneNumber) {
    var digitsOnly = phoneNumber.replaceAll(RegExp(r'\D'), '');

    // Jika diawali 0, ganti dengan 62
    if (digitsOnly.startsWith('0')) {
      digitsOnly = '62${digitsOnly.substring(1)}';
    }

    final formattedNumber = StringBuffer();
    formattedNumber.write('+${digitsOnly.substring(0, 2)} '); // +62

    // Membagi sisa nomor menjadi grup 3 atau 4 digit
    String remaining = digitsOnly.substring(2);
    for (int i = 0; i < remaining.length; i++) {
      if (i > 0 && i % 4 == 0) {
        formattedNumber.write(' ');
      }
      formattedNumber.write(remaining[i]);
    }

    return formattedNumber.toString();
  }
}

program schedule;
uses crt;

var
    pilihan, totalTugas, i, indeksUbah, indeksHapus : integer;

    { Menggunakan array sejajar tanpa type atau record }
    namaTugas : array[1..100] of string[50];
    matkul    : array[1..100] of string[30];
    deadline  : array[1..100] of string[20];
    status    : array[1..100] of string[15];

begin
    totalTugas := 0;

    repeat
        clrscr;
        writeln('--------------- SCHEDULE --------------');
        writeln('1. Tambah Tugas Baru');
        writeln('2. Lihat Semua Tugas');
        writeln('3. Tandai Tugas Selesai');
        writeln('4. Hapus Tugas');
        writeln('5. Keluar');
        writeln('---------------------------------------');

        write('Pilih Menu : ');
        readln(pilihan);

        case pilihan of
            1:
            begin
                clrscr;

                if totalTugas >= 100 then
                begin
                    writeln('Daftar tugas sudah penuh. Maksimal 100 tugas.');
                end
                else
                begin
                    totalTugas := totalTugas + 1;

                    writeln('=== TAMBAH TUGAS KE-', totalTugas, ' ===');

                    write('Masukkan Nama Tugas  : ');
                    readln(namaTugas[totalTugas]);

                    write('Masukkan Mata Kuliah : ');
                    readln(matkul[totalTugas]);

                    write('Deadline             : ');
                    readln(deadline[totalTugas]);

                    status[totalTugas] := 'Belum Selesai';

                    writeln;
                    writeln('Tugas berhasil ditambahkan!');
                end;

                writeln;
                writeln('Tekan Enter untuk kembali...');
                readln;
            end;

            2:
            begin
                clrscr;
                writeln('=== DAFTAR SEMUA TUGAS ===');

                if totalTugas = 0 then
                begin
                    writeln('Belum ada tugas yang dimasukkan.');
                end
                else
                begin
                    for i := 1 to totalTugas do
                    begin
                        writeln;
                        writeln(i, '. [', status[i], '] ', namaTugas[i]);
                        writeln('   Mata Kuliah : ', matkul[i]);
                        writeln('   Deadline    : ', deadline[i]);
                        writeln('---------------------------------------');
                    end;
                end;

                writeln;
                writeln('Tekan Enter untuk kembali...');
                readln;
            end;

            3:
            begin
                clrscr;
                writeln('=== TANDAI TUGAS SELESAI ===');

                if totalTugas = 0 then
                begin
                    writeln('Belum ada tugas yang bisa ditandai.');
                end
                else
                begin
                    for i := 1 to totalTugas do
                    begin
                        writeln(i, '. [', status[i], '] ', namaTugas[i]);
                    end;

                    writeln('---------------------------------------');
                    write('Masukkan nomor tugas yang sudah selesai: ');
                    readln(indeksUbah);

                    if (indeksUbah >= 1) and
                       (indeksUbah <= totalTugas) then
                    begin
                        status[indeksUbah] := 'Selesai';

                        writeln;
                        writeln('Tugas nomor ', indeksUbah,
                                ' berhasil ditandai Selesai.');
                    end
                    else
                    begin
                        writeln('Nomor tugas tidak valid!');
                    end;
                end;

                writeln;
                writeln('Tekan Enter untuk kembali...');
                readln;
            end;

            4:
            begin
                clrscr;
                writeln('=== HAPUS TUGAS ===');

                if totalTugas = 0 then
                begin
                    writeln('Belum ada tugas yang bisa dihapus.');
                end
                else
                begin
                    writeln('Daftar tugas saat ini:');
                    writeln;

                    for i := 1 to totalTugas do
                    begin
                        writeln(i, '. [', status[i], '] ', namaTugas[i]);
                        writeln('   Mata Kuliah : ', matkul[i]);
                        writeln('   Deadline    : ', deadline[i]);
                        writeln('---------------------------------------');
                    end;

                    write('Masukkan nomor tugas yang ingin dihapus: ');
                    readln(indeksHapus);

                    if (indeksHapus >= 1) and
                       (indeksHapus <= totalTugas) then
                    begin
                        { Geser data setelah tugas yang dihapus }
                        for i := indeksHapus to totalTugas - 1 do
                        begin
                            namaTugas[i] := namaTugas[i + 1];
                            matkul[i] := matkul[i + 1];
                            deadline[i] := deadline[i + 1];
                            status[i] := status[i + 1];
                        end;

                        totalTugas := totalTugas - 1;

                        writeln;
                        writeln('Tugas berhasil dihapus!');
                    end
                    else
                    begin
                        writeln;
                        writeln('Nomor tugas tidak valid.');
                        writeln('Tidak ada tugas yang dihapus.');
                    end;
                end;

                writeln;
                writeln('Tekan Enter untuk kembali...');
                readln;
            end;

            5:
            begin
                clrscr;
                writeln('Terima kasih telah menggunakan');
                writeln('aplikasi Schedule!');
                break;
            end;

        else
            begin
                writeln('Pilihan tidak valid!');
                writeln('Tekan Enter untuk kembali...');
                readln;
            end;
        end;

    until pilihan = 5;
end.
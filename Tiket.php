<?php

abstract class Tiket
{
    // Properti terenkripsi (encapsulation)
    protected $id_tiket;
    protected $nama_film;
    protected $jadwal_tayang;
    protected $jumlah_kursi;
    protected $hargaDasarTiket;

    // Constructor untuk memetakan data dari database
    public function __construct($data)
    {
        $this->id_tiket = $data['id_tiket'];
        $this->nama_film = $data['nama_film'];
        $this->jadwal_tayang = $data['jadwal_tayang'];
        $this->jumlah_kursi = $data['jumlah_kursi'];
        $this->hargaDasarTiket = $data['harga_dasar_tiket'];
    }

    // Getter
    public function getIdTiket()
    {
        return $this->id_tiket;
    }

    public function getNamaFilm()
    {
        return $this->nama_film;
    }

    public function getJadwalTayang()
    {
        return $this->jadwal_tayang;
    }

    public function getJumlahKursi()
    {
        return $this->jumlah_kursi;
    }

    public function getHargaDasarTiket()
    {
        return $this->hargaDasarTiket;
    }

    // Method abstrak
    abstract public function hitungTotalHarga();

    abstract public function tampilkanInfoFasilitas();
}

?>
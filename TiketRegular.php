<?php

require_once 'Tiket.php';

class TiketRegular extends Tiket
{
    protected $tipeAudio;
    protected $lokasiBaris;

    public function __construct($data)
    {
        parent::__construct($data);

        $this->tipeAudio = $data['tipe_audio'];
        $this->lokasiBaris = $data['lokasi_baris'];
    }

    public function getTipeAudio()
    {
        return $this->tipeAudio;
    }

    public function getLokasiBaris()
    {
        return $this->lokasiBaris;
    }

    // Overriding
    public function hitungTotalHarga()
    {
        return $this->jumlah_kursi * $this->hargaDasarTiket;
    }

    public function tampilkanInfoFasilitas()
    {
        return "Tipe Audio: " . $this->tipeAudio .
               "<br>Lokasi Baris: " . $this->lokasiBaris;
    }
}

?>
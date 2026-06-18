<?php

require_once 'Tiket.php';

class TiketVelvet extends Tiket
{
    protected $bantalSelimutPack;
    protected $layananButler;

    public function __construct($data)
    {
        parent::__construct($data);

        $this->bantalSelimutPack = $data['bantal_selimut_pack'];
        $this->layananButler = $data['layanan_butler'];
    }

    public function getBantalSelimutPack()
    {
        return $this->bantalSelimutPack;
    }

    public function getLayananButler()
    {
        return $this->layananButler;
    }

    // Overriding
    public function hitungTotalHarga()
    {
        return ($this->jumlah_kursi * $this->hargaDasarTiket) * 1.50;
    }

    public function tampilkanInfoFasilitas()
    {
        return "Paket Bantal/Selimut: " . $this->bantalSelimutPack .
               "<br>Layanan Butler: " . $this->layananButler;
    }
}

?>
<?php

require_once 'Tiket.php';

class TiketIMAX extends Tiket
{
    protected $kacamata3dId;
    protected $efekGerakFitur;

    public function __construct($data)
    {
        parent::__construct($data);

        $this->kacamata3dId = $data['kacamata_3d_id'];
        $this->efekGerakFitur = $data['efek_gerak_fitur'];
    }

    public function getKacamata3dId()
    {
        return $this->kacamata3dId;
    }

    public function getEfekGerakFitur()
    {
        return $this->efekGerakFitur;
    }

    // Overriding
    public function hitungTotalHarga()
    {
        return ($this->jumlah_kursi * $this->hargaDasarTiket) + 35000;
    }

    public function tampilkanInfoFasilitas()
    {
        return "ID Kacamata 3D: " . $this->kacamata3dId .
               "<br>Efek Gerak: " . $this->efekGerakFitur;
    }
}

?>
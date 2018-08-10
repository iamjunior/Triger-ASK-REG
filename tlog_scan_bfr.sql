DELIMITER $$
CREATE TRIGGER tlog_scan_bfr
    BEFORE UPDATE ON tb_scan
    FOR EACH ROW 
BEGIN
    INSERT INTO tlog_scan
    set no_ktp = OLD.no_ktp,
		creator_scan = OLD.creator_scan,
    img_ktp=old.img_ktp,
    img_ktpn=new.img_ktp,
    img_kk=old.img_kk,
    img_kkn=new.img_kk,
    img_nikah=old.img_nikah,
    img_nikahn=new.img_nikah,
    img_akte=old.img_akte,
    img_akten=new.img_akte,
    img_keuangan=old.img_keuangan,
    img_keuangann=new.img_keuangan,
    img_npwp_siup=old.img_npwp_siup,
    img_npwp_siupn=new.img_npwp_siup,
    img_sponsor=old.img_sponsor,
    img_sponsorn=new.img_sponsor,
    hc_ktp=old.hc_ktp,
    hc_ktpn=new.hc_ktp,
    hc_kk=old.hc_kk,
    hc_kkn=new.hc_kk,
    hc_nikah=old.hc_nikah,
    hc_nikahn=new.hc_nikah,
    hc_akte=old.hc_akte,
    hc_akten=new.hc_akte,
    hc_keuangan=old.hc_keuangan,
    hc_keuangann=new.hc_keuangan,
    hc_npwp_siup=old.hc_npwp_siup,
    hc_npwp_siupn=new.hc_npwp_siup,
    hc_sponsor=old.hc_sponsor,
    hc_sponsorn=new.hc_sponsor,
    editor_scan=old.editor_scan,
    editor_scann=new.editor_scan,
    tgl_edit_scan = NOW(); 
END$$
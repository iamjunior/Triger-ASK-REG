DELIMITER $$
CREATE TRIGGER tlog_promark_bfr
    BEFORE UPDATE ON tb_promark
    FOR EACH ROW 
BEGIN
    INSERT INTO tlog_promark
    set id_promark = OLD.id_promark,
    nama_promark = OLD.nama_promark,
    promo_sale=old.promo_sale,
    promo_salen=new.promo_sale,
    special_sale=old.special_sale,
    special_salen=new.special_sale,
    photo_one=old.photo_one,
    photo_onen=new.photo_one,
    photo_two=old.photo_two,
    photo_twon=new.photo_two,
    photo_three=old.photo_three,
    photo_threen=new.photo_three,
    status_promark=old.status_promark,
    status_promarkn=new.status_promark,
    nomor_tampil=old.nomor_tampil,
    nomor_tampiln=new.nomor_tampil,
    url_tujuan=old.url_tujuan,
    url_tujuann=new.url_tujuan,
    editor_promark=old.editor_promark,
    editor_promarkn=new.editor_promark,
    tgl_edit_promark = NOW(); 
END$$
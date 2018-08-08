DELIMITER $$
CREATE TRIGGER tlog_ktp_extra_bfr 
    BEFORE UPDATE ON tb_ktp_extra
    FOR EACH ROW 
BEGIN
    INSERT INTO tlog_ktp_extra
    set id_pax = OLD.id_pax,
		no_ktpx = OLD.no_ktpx,
		creator_ktpx = OLD.creator_ktpx,
    first_namex=old.first_namex,
    first_namexn=new.first_namex,
    last_namex=old.last_namex,
    last_namexn=new.last_namex,
    titlex=old.titlex,
    titlexn=new.titlex,
    genderx=old.genderx,
    genderxn=new.genderx,
    tempat_lahirx=old.tempat_lahirx,
    tempat_lahirxn=new.tempat_lahirx,
    tanggal_lahirx=old.tanggal_lahirx,
    tanggal_lahirxn=new.tanggal_lahirx,
    postal_codex=old.postal_codex,
    postal_codexn=new.postal_codex,
    alamat_ktpx=old.alamat_ktpx,
    alamat_ktpxn=new.alamat_ktpx,
    status_verifyx=old.status_verifyx,
    status_verifyxn=new.status_verifyx,
    editor_ktpx=old.editor_ktpx,
    editor_ktpxn=new.editor_ktpx,
    tgl_edit_ktpx = NOW(); 
END$$
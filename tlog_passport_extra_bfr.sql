DELIMITER $$
CREATE TRIGGER tlog_passport_extra_bfr 
    BEFORE UPDATE ON tb_passport_extra
    FOR EACH ROW 
BEGIN
    INSERT INTO tlog_passport_extra
    set id_pax = OLD.id_pax,
		no_ktpx = OLD.no_ktpx,
		no_passportx = OLD.no_passportx,
		creator_passportx = OLD.creator_passportx,
    place_of_issuedx=old.place_of_issuedx,
    place_of_issuedxn=new.place_of_issuedx,
    date_of_issuedx=old.date_of_issuedx,
    date_of_issuedxn=new.date_of_issuedx,
    date_of_expiredx=old.date_of_expiredx,
    date_of_expiredxn=new.date_of_expiredx,
    alamat_passportx=old.alamat_passportx,
    alamat_passportxn=new.alamat_passportx,
    img_passportx=old.img_passportx,
    img_passportxn=new.img_passportx,
    hc_passportx=old.hc_passportx,
    hc_passportxn=new.hc_passportx,
    status_verify_passx=old.status_verify_passx,
    status_verify_passxn=new.status_verify_passx,
    editor_passportx=old.editor_passportx,
    editor_passportxn=new.editor_passportx,
    tgl_edit_passportx = NOW(); 
END$$
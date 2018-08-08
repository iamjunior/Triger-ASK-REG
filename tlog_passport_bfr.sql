DELIMITER $$
CREATE TRIGGER tlog_passport_bfr 
    BEFORE UPDATE ON tb_passport
    FOR EACH ROW 
BEGIN
    INSERT INTO tlog_passport
    set no_ktp = OLD.no_ktp,
		no_passport = OLD.no_passport,
		creator_passport = OLD.creator_passport,
    place_of_issued=old.place_of_issued,
    place_of_issuedn=new.place_of_issued,
    date_of_issued=old.date_of_issued,
    date_of_issuedn=new.date_of_issued,
    date_of_expired=old.date_of_expired,
    date_of_expiredn=new.date_of_expired,
    alamat_passport=old.alamat_passport,
    alamat_passportn=new.alamat_passport,
    img_passport=old.img_passport,
    img_passportn=new.img_passport,
    hc_passport=old.hc_passport,
    hc_passportn=new.hc_passport,
    status_verify_pass=old.status_verify_pass,
    status_verify_passn=new.status_verify_pass,
    editor_passport=old.editor_passport,
    editor_passportn=new.editor_passport,
    tgl_edit_passport = NOW(); 
END$$
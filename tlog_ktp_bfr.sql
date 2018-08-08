DELIMITER $$
CREATE TRIGGER tlog_ktp_bfr 
    BEFORE UPDATE ON tb_ktp
    FOR EACH ROW 
BEGIN
    INSERT INTO tlog_ktp
    set no_ktp = OLD.no_ktp,
		creator_ktp = OLD.creator_ktp,
    first_name=old.first_name,
    first_namen=new.first_name,
    last_name=old.last_name,
    last_namen=new.last_name,
    title=old.title,
    titlen=new.title,
    gender=old.gender,
    gendern=new.gender,
    tempat_lahir=old.tempat_lahir,
    tempat_lahirn=new.tempat_lahir,
    tanggal_lahir=old.tanggal_lahir,
    tanggal_lahirn=new.tanggal_lahir,
    postal_code=old.postal_code,
    postal_coden=new.postal_code,
    phone_one=old.phone_one,
    phone_onen=new.phone_one,
    phone_two=old.phone_two,
    phone_twon=new.phone_two,
    email=old.email,
    emailn=new.email,
    alamat_ktp=old.alamat_ktp,
    alamat_ktpn=new.alamat_ktp,
    editor_ktp=old.editor_ktp,
    editor_ktpn=new.editor_ktp,
    status_verify_ktp=old.status_verify_ktp,
    status_verify_ktpn=new.status_verify_ktp,
    tgl_edit_ktp = NOW(); 
END$$
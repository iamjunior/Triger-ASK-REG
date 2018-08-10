DELIMITER $$
CREATE TRIGGER tlog_user_bfr
    BEFORE UPDATE ON tb_user
    FOR EACH ROW 
BEGIN
    INSERT INTO tlog_user
    set kd_user = OLD.kd_user,
		username = OLD.username,
    nama_lengkap=old.nama_lengkap,
    nama_lengkapn=new.nama_lengkap,
    password_user=old.password_user,
    password_usern=new.password_user,
    foto=old.foto,
    foton=new.foto,
    status_user=old.status_user,
    status_usern=new.status_user,
    kd_atasan=old.kd_atasan,
    kd_atasann=new.kd_atasan,
    kd_departemen=old.kd_departemen,
    kd_departemenn=new.kd_departemen,
    kd_cabang=old.kd_cabang,
    kd_cabangn=new.kd_cabang,
    editor_user=old.editor_user,
    editor_usern=new.editor_user,
    tgl_edit_user = NOW(); 
END$$
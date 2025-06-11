/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     06/10/2025 10:47:17 PM                       */
/*==============================================================*/


/*==============================================================*/
/* Table: ANIO_LECTIVO                                          */
/*==============================================================*/
create table ANIO_LECTIVO
(
   ID_ANIO_LECTIVO      int not null auto_increment  comment '',
   NRO_ANIO             int  comment '',
   NOMBRE_ANIO          varchar(250)  comment '',
   primary key (ID_ANIO_LECTIVO)
);

/*==============================================================*/
/* Table: APODERADO                                             */
/*==============================================================*/
create table APODERADO
(
   ID_APODERADO         int not null auto_increment  comment '',
   ID_PERSONA           int  comment '',
   ID_ESTADO_APODERADO  int  comment '',
   ID_CONDICION_APODERADO int  comment '',
   TELEFONO             varchar(20)  comment '',
   OFICIO               varchar(100)  comment '',
   FECHA_REGISTRO       timestamp default CURRENT_TIMESTAMP  comment '',
   primary key (ID_APODERADO)
);

/*==============================================================*/
/* Table: APODERADO_ESTUDIANTE                                  */
/*==============================================================*/
create table APODERADO_ESTUDIANTE
(
   ID_APODERADO_ESTUDIANTE bigint not null auto_increment  comment '',
   ID_APODERADO         int  comment '',
   ID_ESTUDIANTE        int  comment '',
   ID_ANIO_LECTIVO      int  comment '',
   PARENTEZCO           varchar(100)  comment '',
   FECHA_INICIO         date  comment '',
   FECHA_FIN            date  comment '',
   VIGENTE              boolean  comment '',
   primary key (ID_APODERADO_ESTUDIANTE)
);

/*==============================================================*/
/* Table: CONDICION_APODERADO                                   */
/*==============================================================*/
create table CONDICION_APODERADO
(
   ID_CONDICION_APODERADO int not null auto_increment  comment '',
   CONDICION_APODERADO  varchar(50)  comment '',
   primary key (ID_CONDICION_APODERADO)
);

/*==============================================================*/
/* Table: ESTADO_APODERADO                                      */
/*==============================================================*/
create table ESTADO_APODERADO
(
   ID_ESTADO_APODERADO  int not null auto_increment  comment '',
   ESTADO_APODERADO     varchar(50)  comment '',
   primary key (ID_ESTADO_APODERADO)
);

/*==============================================================*/
/* Table: ESTADO_ESTUDIANTE                                     */
/*==============================================================*/
create table ESTADO_ESTUDIANTE
(
   ID_ESTADO_ESTUDIANTE int not null auto_increment  comment '',
   ESTADO_ESTUDIANTE    varchar(50)  comment '',
   primary key (ID_ESTADO_ESTUDIANTE)
);

/*==============================================================*/
/* Table: ESTUDIANTE                                            */
/*==============================================================*/
create table ESTUDIANTE
(
   ID_ESTUDIANTE        int not null auto_increment  comment '',
   ID_PERSONA           int  comment '',
   ID_METODO_INGRESO    int  comment '',
   ID_ESTADO_ESTUDIANTE int  comment '',
   ID_ANIO_LECTIVO_INGRESO int  comment '',
   ID_ANIO_LECTIVO_EGRESO int  comment '',
   GRUPO_SANGUINEO      varchar(3)  comment '',
   CONDICION_ESPECIAL   boolean  comment '',
   OBSERVACIONES        text  comment '',
   primary key (ID_ESTUDIANTE)
);

/*==============================================================*/
/* Table: GRADO_ESTUDIANTE                                      */
/*==============================================================*/
create table GRADO_ESTUDIANTE
(
   ID_GRADO_ESTUDIANTE  bigint not null auto_increment  comment '',
   ID_ANIO_LECTIVO      int  comment '',
   ID_ESTUDIANTE        int  comment '',
   ID_SECCION           int  comment '',
   ID_NIVEL             int  comment '',
   NRO_GRADO            varchar(25)  comment '',
   primary key (ID_GRADO_ESTUDIANTE)
);

/*==============================================================*/
/* Table: HISTORIAL_DATOS_APODERADO                             */
/*==============================================================*/
create table HISTORIAL_DATOS_APODERADO
(
   ID_HISTORIAL_APODERADO bigint not null auto_increment  comment '',
   ID_APODERADO         int  comment '',
   ID_USUARIO_ADMIN     int  comment '',
   ID_PERSONA           int  comment '',
   ID_ESTADO_APODERADO  int  comment '',
   ID_CONDICION_APODERADO int  comment '',
   TELEFONO             varchar(20)  comment '',
   OFICIO               varchar(100)  comment '',
   FECHA_REGISTRO       datetime  comment '',
   primary key (ID_HISTORIAL_APODERADO)
);

/*==============================================================*/
/* Table: HISTORIAL_DATOS_ESTUDIANTE                            */
/*==============================================================*/
create table HISTORIAL_DATOS_ESTUDIANTE
(
   ID_HISTORIAL_DATOS_ESTUDIANTE bigint not null auto_increment  comment '',
   ID_ESTUDIANTE        int  comment '',
   ID_USUARIO_ADMIN     int  comment '',
   FECHA_INGRESO_DATOS  datetime  comment '',
   GRUPO_SANGUINEO      varchar(10)  comment '',
   CONDICION_ESPECIAL   boolean  comment '',
   ID_ESTADO            int  comment '',
   ANIO_INGRESO         year  comment '',
   ID_METODO_INGRESO    int  comment '',
   OBSERVACIONES        text  comment '',
   FECHA_CAMBIO         datetime  comment '',
   primary key (ID_HISTORIAL_DATOS_ESTUDIANTE)
);

/*==============================================================*/
/* Table: HISTORIAL_DATOS_PERSONA                               */
/*==============================================================*/
create table HISTORIAL_DATOS_PERSONA
(
   ID_HISTORIAL_DATOS_PERSONA bigint not null auto_increment  comment '',
   ID_PERSONA           int  comment '',
   ID_USUARIO_ADMIN     int  comment '',
   NOMBRES              varchar(150)  comment '',
   APELLIDOS            varchar(150)  comment '',
   GENERO               varchar(1)  comment '',
   DIRECCION            varchar(200)  comment '',
   TIPO_DOCUMENTO       varchar(50)  comment '',
   NRO_DOCUMENTO        varchar(15)  comment '',
   NACIONALIDAD         varchar(50)  comment '',
   FECHA_NACIMIENTO     date  comment '',
   FECHA_REGISTRO       datetime  comment '',
   primary key (ID_HISTORIAL_DATOS_PERSONA)
);

/*==============================================================*/
/* Table: HISTORIAL_DATOS_USUARIO_ADMINISTRATIVO                */
/*==============================================================*/
create table HISTORIAL_DATOS_USUARIO_ADMINISTRATIVO
(
   ID_HISTORIAL_USUARIO_ADMIN int not null auto_increment  comment '',
   ID_USUARIO_ADMIN     int  comment '',
   USU_ID_USUARIO_ADMIN int  comment '',
   ID_PERSONA           int  comment '',
   ID_ROL               int  comment '',
   USUARIO              varchar(32)  comment '',
   CONTRASENA           varchar(100)  comment '',
   ACTIVO               bool  comment '',
   FECHA_MODIFICACION   datetime  comment '',
   primary key (ID_HISTORIAL_USUARIO_ADMIN)
);

/*==============================================================*/
/* Table: INFORME_SAANE                                         */
/*==============================================================*/
create table INFORME_SAANE
(
   ID_INFORME_SAANEE    int not null auto_increment  comment '',
   ID_ESTUDIANTE        int  comment '',
   RUTA_COPIA           varchar(255)  comment '',
   FECHA                datetime  comment '',
   primary key (ID_INFORME_SAANEE)
);

/*==============================================================*/
/* Table: METODO_INGRESO                                        */
/*==============================================================*/
create table METODO_INGRESO
(
   ID_METODO_INGRESO    int not null auto_increment  comment '',
   METODO_INGRESO       varchar(50)  comment '',
   primary key (ID_METODO_INGRESO)
);

/*==============================================================*/
/* Table: NACIONALIDAD                                          */
/*==============================================================*/
create table NACIONALIDAD
(
   ID_NACIONALIDAD      int not null auto_increment  comment '',
   NACIONALIDAD         varchar(100)  comment '',
   primary key (ID_NACIONALIDAD)
);

/*==============================================================*/
/* Table: NIVEL                                                 */
/*==============================================================*/
create table NIVEL
(
   ID_NIVEL             int not null auto_increment  comment '',
   NOMBRE_NIVEL         varchar(30)  comment '',
   primary key (ID_NIVEL)
);

/*==============================================================*/
/* Table: PERSONA                                               */
/*==============================================================*/
create table PERSONA
(
   ID_PERSONA           int not null auto_increment  comment '',
   ID_TIPO_DOCUMENTO    int  comment '',
   ID_NACIONALIDAD      int  comment '',
   NRO_DOCUMENTO        varchar(25)  comment '',
   APELLIDO_PATERNO     varchar(75)  comment '',
   APELLIDO_MATERNO     varchar(75)  comment '',
   NOMBRES              varchar(150)  comment '',
   GENERO               varchar(1)  comment '',
   DIRECCION            varchar(200)  comment '',
   FECHA_NACIMIENTO     date  comment '',
   primary key (ID_PERSONA)
);

/*==============================================================*/
/* Table: ROL                                                   */
/*==============================================================*/
create table ROL
(
   ID_ROL               int not null auto_increment  comment '',
   ROL                  varchar(100)  comment '',
   primary key (ID_ROL)
);

/*==============================================================*/
/* Table: SECCION                                               */
/*==============================================================*/
create table SECCION
(
   ID_SECCION           int not null auto_increment  comment '',
   SECCION              varchar(2)  comment '',
   primary key (ID_SECCION)
);

/*==============================================================*/
/* Table: TIPO_DOCUMENTO                                        */
/*==============================================================*/
create table TIPO_DOCUMENTO
(
   ID_TIPO_DOCUMENTO    int not null auto_increment  comment '',
   TIPO_DOCUMENTO       varchar(50)  comment '',
   LONGITUD             int  comment '',
   primary key (ID_TIPO_DOCUMENTO)
);

/*==============================================================*/
/* Table: USUARIO_ADMINISTRATIVO                                */
/*==============================================================*/
create table USUARIO_ADMINISTRATIVO
(
   ID_USUARIO_ADMIN     int not null auto_increment  comment '',
   ID_PERSONA           int  comment '',
   ID_ROL               int  comment '',
   USUARIO              varchar(32)  comment '',
   CONTRASENA           varchar(100)  comment '',
   ACTIVO               bool  comment '',
   primary key (ID_USUARIO_ADMIN)
);

alter table APODERADO add constraint FK_A_REFERENCE_EA foreign key (ID_ESTADO_APODERADO)
      references ESTADO_APODERADO (ID_ESTADO_APODERADO) on delete restrict on update restrict;

alter table APODERADO add constraint FK_A_REFERENCE_CA foreign key (ID_CONDICION_APODERADO)
      references CONDICION_APODERADO (ID_CONDICION_APODERADO) on delete restrict on update restrict;

alter table APODERADO add constraint FK_A_REFERENCE_P foreign key (ID_PERSONA)
      references PERSONA (ID_PERSONA) on delete restrict on update restrict;

alter table APODERADO_ESTUDIANTE add constraint FK_AE_REFERENCE_AL foreign key (ID_ANIO_LECTIVO)
      references ANIO_LECTIVO (ID_ANIO_LECTIVO) on delete restrict on update restrict;

alter table APODERADO_ESTUDIANTE add constraint FK_AE_REFERENCE_A foreign key (ID_APODERADO)
      references APODERADO (ID_APODERADO) on delete restrict on update restrict;

alter table APODERADO_ESTUDIANTE add constraint FK_AE_REFERENCE_E foreign key (ID_ESTUDIANTE)
      references ESTUDIANTE (ID_ESTUDIANTE) on delete restrict on update restrict;

alter table ESTUDIANTE add constraint FK_E_REFERENCE_MI foreign key (ID_METODO_INGRESO)
      references METODO_INGRESO (ID_METODO_INGRESO) on delete restrict on update restrict;

alter table ESTUDIANTE add constraint FK_EE_REFERENCE_EE foreign key (ID_ESTADO_ESTUDIANTE)
      references ESTADO_ESTUDIANTE (ID_ESTADO_ESTUDIANTE) on delete restrict on update restrict;

alter table ESTUDIANTE add constraint FK_ES_REFERENCE_P foreign key (ID_PERSONA)
      references PERSONA (ID_PERSONA) on delete restrict on update restrict;

alter table ESTUDIANTE add constraint FK_E_REFERENCE_ALI foreign key (ID_ANIO_LECTIVO_INGRESO)
      references ANIO_LECTIVO (ID_ANIO_LECTIVO) on delete restrict on update restrict;

alter table ESTUDIANTE add constraint FK_E_REFERENCE_ALE foreign key (ID_ANIO_LECTIVO_EGRESO)
      references ANIO_LECTIVO (ID_ANIO_LECTIVO) on delete restrict on update restrict;

alter table GRADO_ESTUDIANTE add constraint FK_GE_REFERENCE_AL foreign key (ID_ANIO_LECTIVO)
      references ANIO_LECTIVO (ID_ANIO_LECTIVO) on delete restrict on update restrict;

alter table GRADO_ESTUDIANTE add constraint FK_GE_REFERENCE_E foreign key (ID_ESTUDIANTE)
      references ESTUDIANTE (ID_ESTUDIANTE) on delete restrict on update restrict;

alter table GRADO_ESTUDIANTE add constraint FK_GE_REFERENCE_S foreign key (ID_SECCION)
      references SECCION (ID_SECCION) on delete restrict on update restrict;

alter table GRADO_ESTUDIANTE add constraint FK_GE_REFERENCE_N foreign key (ID_NIVEL)
      references NIVEL (ID_NIVEL) on delete restrict on update restrict;

alter table HISTORIAL_DATOS_APODERADO add constraint FK_HDA_REFERENCE_A foreign key (ID_APODERADO)
      references APODERADO (ID_APODERADO) on delete restrict on update restrict;

alter table HISTORIAL_DATOS_APODERADO add constraint FK_HDA_REFERENCE_UA foreign key (ID_USUARIO_ADMIN)
      references USUARIO_ADMINISTRATIVO (ID_USUARIO_ADMIN) on delete restrict on update restrict;

alter table HISTORIAL_DATOS_ESTUDIANTE add constraint FK_HDE_REFERENCE_E foreign key (ID_ESTUDIANTE)
      references ESTUDIANTE (ID_ESTUDIANTE) on delete restrict on update restrict;

alter table HISTORIAL_DATOS_ESTUDIANTE add constraint FK_HDE_REFERENCE_UA foreign key (ID_USUARIO_ADMIN)
      references USUARIO_ADMINISTRATIVO (ID_USUARIO_ADMIN) on delete restrict on update restrict;

alter table HISTORIAL_DATOS_PERSONA add constraint FK_HISTORIA_REFERENCE_PERSONA foreign key (ID_PERSONA)
      references PERSONA (ID_PERSONA) on delete restrict on update restrict;

alter table HISTORIAL_DATOS_PERSONA add constraint FK_HDP_REFERENCE_UA foreign key (ID_USUARIO_ADMIN)
      references USUARIO_ADMINISTRATIVO (ID_USUARIO_ADMIN) on delete restrict on update restrict;

alter table HISTORIAL_DATOS_USUARIO_ADMINISTRATIVO add constraint FK_HDA_REFERENCE_UA_ID foreign key (ID_USUARIO_ADMIN)
      references USUARIO_ADMINISTRATIVO (ID_USUARIO_ADMIN) on delete restrict on update restrict;

alter table HISTORIAL_DATOS_USUARIO_ADMINISTRATIVO add constraint FK_HDUA_REFERENCE_UA foreign key (USU_ID_USUARIO_ADMIN)
      references USUARIO_ADMINISTRATIVO (ID_USUARIO_ADMIN) on delete restrict on update restrict;

alter table INFORME_SAANE add constraint FK_IS__REFERENCE_E foreign key (ID_ESTUDIANTE)
      references ESTUDIANTE (ID_ESTUDIANTE) on delete restrict on update restrict;

alter table PERSONA add constraint FK_P_REFERENCE_TD foreign key (ID_TIPO_DOCUMENTO)
      references TIPO_DOCUMENTO (ID_TIPO_DOCUMENTO) on delete restrict on update restrict;

alter table PERSONA add constraint FK_P_REFERENCE_N foreign key (ID_NACIONALIDAD)
      references NACIONALIDAD (ID_NACIONALIDAD) on delete restrict on update restrict;

alter table USUARIO_ADMINISTRATIVO add constraint FK_USA__REFERENCE_P foreign key (ID_PERSONA)
      references PERSONA (ID_PERSONA) on delete restrict on update restrict;

alter table USUARIO_ADMINISTRATIVO add constraint FK_UA__REFERENCE_R foreign key (ID_ROL)
      references ROL (ID_ROL) on delete restrict on update restrict;


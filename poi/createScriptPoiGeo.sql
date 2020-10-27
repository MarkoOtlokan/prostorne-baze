
/*==============================================================*/
/* Table: GRAD                                                  */
/*==============================================================*/
create table GRAD (
   ID_GRADA             SERIAL               not null,
   NAZIV                TEXT                 null,
   BR_STANOVNIKA        INTEGER              null,
   GEOM                 GEOMETRY(POLYGON, 4326)              null,
   constraint PK_GRAD primary key (ID_GRADA)
);

/*==============================================================*/
/* Table: ZNAMENITOST                                           */
/*==============================================================*/
create table ZNAMENITOST (
   ID_POI               SERIAL               not null,
   ID_GRADA             INTEGER              null,
   NAZIV                TEXT                 null,
   OPIS                 TEXT                 null,
   ADRESA               TEXT                 null,
   OCENA                INTEGER              null,
   GEOM                 GEOMETRY(POINT, 4326)                null,
   constraint PK_ZNAMENITOST primary key (ID_POI)
);

alter table ZNAMENITOST
   add constraint FK_ZNAMENIT_REFERENCE_GRAD foreign key (ID_GRADA)
      references GRAD (ID_GRADA)
      on delete restrict on update restrict;


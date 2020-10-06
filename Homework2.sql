create TABLE Headers
(
    VIN                    int not null,
    Name                   varchar(255),
    ActiveSince            Date,
    TimeStamp              TimeStamp,
    InternalIdentification varchar(255),
    primary key (VIN)
);


create Table Methods
(
    VIN   int not null,
    Name  varchar(255),
    UID   varchar(20) not null,
    Unit  varchar(10),
    Value int,
    primary key (UID),
    foreign key (Vin) REFERENCES Headers (VIN)
);

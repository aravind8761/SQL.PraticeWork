CREATE DATABASE vehicle_registry;

USE vehicle_registry;

CREATE TABLE vehicles
(
    vehicle_id INT AUTO_INCREMENT NOT NULL,
    registration_number VARCHAR(20) NOT NULL,
    owner_name VARCHAR(120) NOT NULL,
    manufacturer VARCHAR(80) NOT NULL,
    model VARCHAR(80) NOT NULL,
    vehicle_type VARCHAR(20) NOT NULL,
    fuel_type VARCHAR(20) NOT NULL,
    manufacture_year YEAR NOT NULL,
    purchase_date DATE,
    color VARCHAR(40) NOT NULL,
    odometer_km INT NOT NULL DEFAULT 0,
    insurance_expiry DATE,
    vehicle_status VARCHAR(20) NOT NULL DEFAULT 'ACTIVE',
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT pk_vehicle_id PRIMARY KEY(vehicle_id),
    CONSTRAINT uq_registration_number UNIQUE(registration_number),

    CONSTRAINT chk_vehicle_type
    CHECK(vehicle_type IN ('CAR', 'MOTORCYCLE', 'TRUCK', 'VAN', 'BUS')),

    CONSTRAINT chk_fuel_type
    CHECK(fuel_type IN ('PETROL', 'DIESEL', 'ELECTRIC', 'HYBRID', 'CNG')),

    CONSTRAINT chk_odometer_km
    CHECK(odometer_km >= 0),

    CONSTRAINT chk_vehicle_status
    CHECK(vehicle_status IN ('ACTIVE', 'IN_SERVICE', 'SOLD', 'SCRAPPED'))
);

INSERT INTO vehicles
(registration_number, owner_name, manufacturer, model,
vehicle_type, fuel_type, manufacture_year, purchase_date,
color, odometer_km, insurance_expiry, vehicle_status)

VALUES
('TS09AB1234', 'ARAVIND', 'Toyota', 'ARAVIND',
'CAR', 'PETROL', 2022, '2022-05-10',
'WHITE', 25000, '2027-05-10', 'ACTIVE');

INSERT INTO vehicles
(registration_number, owner_name, manufacturer, model,
vehicle_type, fuel_type, manufacture_year, purchase_date,
color, odometer_km, insurance_expiry, vehicle_status)

VALUES
('TS09CD5678', 'RAVI', 'Honda', 'Shine',
'MOTORCYCLE', 'PETROL', 2023, '2023-06-15',
'BLACK', 12000, '2027-06-15', 'IN_SERVICE');

INSERT INTO vehicles
(registration_number, owner_name, manufacturer, model,
vehicle_type, fuel_type, manufacture_year, purchase_date,
color, odometer_km, insurance_expiry, vehicle_status)

VALUES
('TS10EF9012', 'SURESH', 'Tata', 'SURESH',
'TRUCK', 'DIESEL', 2021, '2021-03-20',
'BLUE', 75000, '2027-03-20', 'ACTIVE');

INSERT INTO vehicles
(registration_number, owner_name, manufacturer, model,
vehicle_type, fuel_type, manufacture_year,
color, odometer_km, vehicle_status)

VALUES
('TS15OP5566', 'MOHAN', 'Hyundai', 'i20',
'CAR', 'PETROL', 2023,
'WHITE', 0, 'ACTIVE');

SELECT * FROM vehicles;



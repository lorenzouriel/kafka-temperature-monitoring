CREATE TABLE IF NOT EXISTS temperature_data_refrigerator (
    [id] UUID NOT NULL,
    [latitude] DOUBLE PRECISION NOT NULL,
    [longitude] DOUBLE PRECISION NOT NULL,
    [temperature] DOUBLE PRECISION NOT NULL,
    [time] TIMESTAMP NOT NULL
);
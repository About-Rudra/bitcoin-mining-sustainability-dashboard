-- 1. BITCOIN ENERGY TABLE
CREATE TABLE bitcoin_energy (
    id SERIAL PRIMARY KEY,
    date DATE NOT NULL,
    energy_consumption_twh DECIMAL(10,2),
    carbon_footprint_mtco2 DECIMAL(10,2),
    created_at TIMESTAMP DEFAULT NOW()
);

-- 2. CO2 EMISSIONS TABLE
CREATE TABLE co2_emissions (
    id SERIAL PRIMARY KEY,
    country VARCHAR(100) NOT NULL,
    year INTEGER NOT NULL,
    co2 DECIMAL(15,2),
    co2_per_capita DECIMAL(10,2),
    co2_per_gdp DECIMAL(10,2),
    population BIGINT,
    created_at TIMESTAMP DEFAULT NOW()
);

-- 3. MINING DISTRIBUTION TABLE
CREATE TABLE mining_distribution (
    id SERIAL PRIMARY KEY,
    country VARCHAR(100) NOT NULL,
    country_code VARCHAR(3),
    hashrate_share DECIMAL(5,2),
    energy_twh DECIMAL(10,2),
    year INTEGER,
    created_at TIMESTAMP DEFAULT NOW()
);

-- 4. ENERGY COMPARISON TABLE
CREATE TABLE energy_comparison (
    id SERIAL PRIMARY KEY,
    system VARCHAR(100) NOT NULL,
    energy_kwh DECIMAL(10,3),
    co2_kg DECIMAL(10,3),
    source VARCHAR(200),
    created_at TIMESTAMP DEFAULT NOW()
);

-- 5. TIME SERIES TABLE
CREATE TABLE time_series (
    id SERIAL PRIMARY KEY,
    date DATE NOT NULL,
    bitcoin_energy_twh DECIMAL(10,2),
    bitcoin_hashrate_eh DECIMAL(10,2),
    bitcoin_price_usd DECIMAL(10,2),
    transactions_per_day INTEGER,
    energy_per_tx_kwh DECIMAL(10,2),
    created_at TIMESTAMP DEFAULT NOW()
);
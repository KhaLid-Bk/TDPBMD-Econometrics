# Data Dictionary

## Dataset: `TDPBMD.csv`

Panel data for companies listed on the Casablanca Stock Exchange (2021-2023).

### Identification Variables

| Variable | Type | Description |
|----------|------|-------------|
| `id` | Character | Company identifier (name) |
| `year` | Integer | Observation year (2021, 2022, 2023) |
| `Secteur` | Factor | Economic sector classification |

### Firm Characteristics

| Variable | Type | Description |
|----------|------|-------------|
| `collaborateurs` | Integer | Number of employees |
| `constitution` | Date | Company incorporation date (DD/MM/YYYY) |
| `Age` | Integer | Company age in years |
| `IPO` | Date | IPO date (DD/MM/YYYY) |
| `ResponsableDigitale` | Binary (0/1) | Presence of a dedicated digital manager |

### Financial Variables

| Variable | Type | Description |
|----------|------|-------------|
| `CapitalSocial` | Numeric | Share capital (MAD) |
| `CapitauxPropres` | Numeric | Total equity (MAD) |
| `NombreTitres` | Integer | Number of shares outstanding |
| `ValeurNominale` | Numeric | Nominal value per share |
| `CA` | Numeric | Revenue (Chiffre d'Affaires, MAD) |
| `ResultatExploitation` | Numeric | Operating income (MAD) |
| `ResultatNet` | Numeric | Net income (MAD) |
| `BPA` | Numeric | Earnings per share (Benefit Par Action) |
| `ROE` | Numeric | Return on Equity (%) |
| `ROA` | Numeric | Return on Assets (%) |
| `Payout` | Numeric | Dividend payout ratio (%) |
| `DividendYield` | Numeric | Dividend yield (%) |
| `PER` | Numeric | Price-to-Earnings Ratio |
| `PBR` | Numeric | Price-to-Book Ratio |
| `Dividendes` | Numeric | Total dividends distributed (MAD) |
| `Capitalisation` | Numeric | Market capitalization (MAD) |

### Digital Maturity Indicators (Ordinal, 1-5 scale)

| Variable | Description |
|----------|-------------|
| `engagementDirection` | Management commitment to digital transformation |
| `Competences` | Digital skills and competencies level |
| `Automatisation` | Degree of process automation |
| `AdoptionTech` | Technology adoption rate |
| `CoutsOperationnels` | Operational cost efficiency from digitalization |
| `InvestissementDigital` | Level of digital investment |
| `Concurrence` | Competitive pressure in the sector |

### Composite Indices (Computed, not in raw data)

| Variable | Description | Construction |
|----------|-------------|--------------|
| `MD` | Digital Maturity Index | PCA first component, rescaled to [0, 100] |
| `PB` | Stock Market Performance Index | PCA variance-weighted composite, rescaled to [0, 100] |

### Notes

- Monetary values are in Moroccan Dirhams (MAD)
- Ordinal variables use a 1-5 Likert scale
- Some cells may contain `NA` for missing observations
- The panel is unbalanced (not all companies have observations for all years)

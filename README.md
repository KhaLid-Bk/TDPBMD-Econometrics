# Digital Transformation and Stock Market Performance: Econometric Modeling

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![R](https://img.shields.io/badge/R-%E2%89%A54.0-blue.svg)](https://www.r-project.org/)
[![DOI](https://img.shields.io/badge/PFE-2025-green.svg)]

## Description

This repository contains the complete research project examining the relationship between **digital maturity (MD)** and **stock market performance (PB)** of companies listed on the Casablanca Stock Exchange. The study employs panel data econometrics, principal component analysis (PCA), and multiple robustness checks to quantify how digital transformation affects firm-level financial outcomes.

**Author:** BOUKHIT KHALID  
**Year:** 2025  
**Language:** R  
**Contact:** khalid.boukhit01@gmail.com

---

## Research Questions & Hypotheses

| Hypothesis | Description |
|------------|-------------|
| **H1** | Companies with higher digital maturity generate better stock market performance |
| **H2** | Digital investment level positively influences the Price-to-Book Ratio (PBR) |
| **H3** | Digitized companies distribute higher dividends |
| **H4** | The impact of digital maturity on performance varies across sectors |
| **H5** | Older companies benefit less from digitalization than younger ones |

---

## Methodology

1. **Composite Index Construction** — Principal Component Analysis (PCA) to build:
   - **MD (Maturite Digitale)** from: `engagementDirection`, `Competences`, `Automatisation`, `AdoptionTech`, `CoutsOperationnels`, `InvestissementDigital`
   - **PB (Performance Boursiere)** from: `CapitalSocial`, `CapitauxPropres`, `CA`, `BPA`, `ROE`, `DividendYield`, `PER`, `ROA`

2. **Panel Data Models** — Pooled OLS, Fixed Effects (Within), Between, Random Effects, validated via:
   - Fisher F-test (pooling vs. within)
   - Hausman test (within vs. random)
   - Breusch-Pagan heteroscedasticity test
   - Durbin-Watson autocorrelation test

3. **Robustness & Extensions:**
   - Tobit regression (censored data)
   - Dynamic models (lagged dependent variable)
   - Instrumental Variables (IV regression)
   - Mundlak specification
   - Generalized Additive Models (GAM)
   - Quantile regression
   - Cross-validation (10-fold)
   - Survival analysis (Cox model)
   - Regression Discontinuity Design (RDD)

---

## Repository Structure

```
github-repo/
├── README.md                     # This file
├── LICENSE                       # MIT License
├── requirements.R                # Auto-installs R package dependencies
├── code/
│   └── Transformation digitale et performance boursiere Modelisation econometriques.Rmd       # ★Original modular analysis
├── examples/
│   ├── ExploratoryAnalysis.Rmd       # EDA and visualization examples
│   └── ExploratoryAnalysis.html      # Output  html
│   └── HypothesisTesting.Rmd         # hypothesis walkthrough
│   └── HypothesisTesting.html        # Output  html
├── docs/
│   ├── methodology.md            # Detailed methodology
│   └── results_summary.md        # Summary of key results
├── Figures/
│   ├── ACP/
│   └── Reg/
│   └── Statistiques/
└── data/
    ├── TDPBMD.csv                # Sample dataset
    └── README_data.md            # Complete data dictionary
```


## Installation

### Prerequisites

- R >= 4.0
- RStudio
- LaTex (recommended)

### Install Dependencies

```r
# Install all required packages
install.packages(c(
  "readr", "FactoMineR", "ggplot2", "dplyr", "explor", "plm", "ggrepel",
  "scales", "car", "plotly", "lme4", "sampleSelection", "lmtest", "sandwich",
  "censReg", "lfe", "stargazer", "quantreg", "dynlm", "ivreg", "caret",
  "AER", "mediation", "nnet", "rdrobust", "mgcv", "survival", "survminer",
  "interactions", "broom", "viridis"
))
```

Or run the provided script:

```bash
Rscript requirements.R
```

---

## Usage


### 

```bash
Rmarkdown script examples/exploratory_analysis.Rmd
Rmarkdown script examples/hypothesis_testing.Rmd
```

### Run  Analysis

```bash
Rmarkdown script code/Transformation digitale et performance boursiere Modelisation econometriques.Rmd
```

---

## Dataset

The dataset `data/TDPBMD.csv` contains **panel data** for companies listed on the Casablanca Stock Exchange across years 2021-2023.

| Variable | Description |
|----------|-------------|
| `id` | Company name |
| `year` | Year (2021, 2022, 2023) |
| `Secteur` | Economic sector |
| `Age` | Company age |
| `collaborateurs` | Number of employees |
| `engagementDirection` | Management engagement (1-5) |
| `Competences` | Skills/competencies score (1-5) |
| `Automatisation` | Automation level (1-5) |
| `AdoptionTech` | Technology adoption (1-5) |
| `CoutsOperationnels` | Operational costs (1-5) |
| `InvestissementDigital` | Digital investment (1-5) |
| `ResponsableDigitale` | Digital manager presence (0/1) |
| `CapitalSocial` | Social capital |
| `CapitauxPropres` | Equity |
| `CA` | Revenue (chiffre d'affaires) |
| `BPA` | Earnings per share |
| `ROE` | Return on equity |
| `ROA` | Return on assets |
| `PER` | Price-to-earnings ratio |
| `PBR` | Price-to-book ratio |
| `DividendYield` | Dividend yield |
| `Dividendes` | Dividends distributed |
| `Capitalisation` | Market capitalization |
| `Concurrence` | Competition level (1-5) |

See `data/README_data.md` for the complete data dictionary.

---

## Key Findings

- **H1 confirmed:** Digital maturity (MD) has a statistically significant positive effect on stock market performance (PB), validated across pooled, within, between, and random-effects specifications.
- **H2 confirmed:** Digital investment positively correlates with PBR, robust to log-linear specifications and heteroscedasticity-consistent standard errors.
- **H3 confirmed:** Higher MD correlates with increased dividend payouts, validated via Tobit models and regression discontinuity.
- **H4 confirmed:** Sector-level heterogeneity is significant; interaction effects with sector dummies improve model fit.
- **H5 confirmed:** Age moderates the MD-PB relationship; younger firms exhibit stronger digitalization benefits, evidenced by GAM interaction surfaces and survival analysis.

---

## Citation

If you use this work, cite as:

```
BOUKHIT, K. (2025). Transformation digitale et performance boursiere:
Modelisation econometriques. [End-of-study project / PFE]
```

---

## License

MIT License. See `LICENSE` for details.

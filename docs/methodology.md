# Methodology

## Overview

This research quantifies the relationship between **digital transformation maturity** and **stock market performance** using panel data econometrics on companies listed on the Casablanca Stock Exchange.

## 1. Composite Index Construction

### Digital Maturity Index (MD)

Six ordinal indicators (1-5 scale) are reduced to a single composite score via **Principal Component Analysis (PCA)**:

| Component | Meaning |
|-----------|---------|
| `engagementDirection` | Management commitment |
| `Competences` | Digital skills |
| `Automatisation` | Process automation |
| `AdoptionTech` | Technology adoption |
| `CoutsOperationnels` | Cost efficiency |
| `InvestissementDigital` | Digital investment |

The first principal component is extracted and linearly rescaled to [0, 100].

### Stock Market Performance Index (PB)

Eight financial indicators are similarly reduced via PCA:

- `CapitalSocial`, `CapitauxPropres`, `CA`, `BPA`, `ROE`, `DividendYield`, `PER`, `ROA`

The number of components retained is the minimum needed to explain ≥ 80% of total variance. Components are weighted by their explained variance percentage and rescaled to [0, 100].

## 2. Econometric Models

### 2.1 Panel Data Specifications

Four estimators are compared for each hypothesis:

| Model | Assumption | Use Case |
|-------|-----------|----------|
| **Pooled OLS** | No individual effects | Baseline |
| **Within (Fixed Effects)** | Entity-specific intercepts | Controls time-invariant heterogeneity |
| **Between** | Only cross-sectional variation | Captures between-entity effects |
| **Random Effects** | Entity effects are random | GLS, efficient if assumptions hold |

### 2.2 Model Selection Tests

- **Fisher F-test**: Tests whether fixed effects are jointly significant (pooled vs. within). Rejection favors within.
- **Hausman test**: Tests correlation between individual effects and regressors (within vs. random). Rejection favors within.

### 2.3 Diagnostic Tests

- **Shapiro-Wilk**: Normality of residuals (null: normal)
- **Breusch-Pagan**: Homoscedasticity (null: constant variance)
- **Durbin-Watson**: First-order autocorrelation (null: no autocorrelation)
- **Bera-Godfrey (pbgtest)**: Higher-order autocorrelation in panels

## 3. Robustness Methods

### 3.1 Tobit Regression

Handles censored data (e.g dividends ≥ 0). Uses maximum likelihood estimation with censoring bounds.

### 3.2 Dynamic Models

Lagged independent variables (`L(MD, 1)`) capture temporal dependence and mitigate reverse causality.

### 3.3 Instrumental Variables (IV)

Lagged MD is used as an instrument for current MD to address endogeneity. First-stage F-statistic validates instrument strength (rule of thumb: F > 10).

### 3.4 Mundlak Specification

Tests whether random effects assumptions hold by including entity means of time-varying regressors as additional controls.

### 3.5 Generalized Additive Models (GAM)

Non-parametric smooth functions `s(MD)` detect non-linear relationships that linear models may miss. The `by = Age` argument tests interaction surfaces.

### 3.6 Cross-Validation

10-fold CV assesses out-of-sample predictive performance and guards against overfitting.

### 3.7 Regression Discontinuity Design (RDD)

Tests for threshold effects at the 75th percentile of the MD distribution.

### 3.8 Survival Analysis (Cox Model)

Models time-to-event (high technology adoption) as a function of digital maturity, controlling for firm age.

## 4. Hypotheses

| # | Hypothesis | Dependent Variable | Key Regressor | Controls |
|---|-----------|-------------------|---------------|----------|
| H1 | MD → PB | PB composite | MD | — |
| H2 | Digital investment → PBR | PBR | InvestissementDigital | ROE |
| H3 | MD → Dividends | log(Dividendes) | MD | collaborateurs |
| H4 | MD × Sector | PB | MD + Secteur dummies | Age, collaborateurs |
| H5 | MD × Age | PB | MD × Age interaction | — |

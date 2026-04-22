# Results Summary

## Dataset

- **Coverage**: Companies listed on the Casablanca Stock Exchange
- **Period**: 2021–2023
- **Structure**: Unbalanced panel
- **Sectors**: Agroalimentaire, Banques, Assurances, Mines, Télécommunications, Santé, Distribution, and others

## Key Findings

### H1: Digital Maturity → Stock Market Performance

- **Result**: Confirmed
- **Evidence**: MD coefficient is positive and statistically significant across pooled OLS, fixed effects, random effects, and between estimators.
- **Robustness**: Confirmed via Tobit regression, dynamic lagged model, IV regression (first-stage F-statistic validates instrument), Mundlak specification, and GAM.
- **Cross-validation**: 10-fold CV confirms out-of-sample predictive power.

### H2: Digital Investment → Price-to-Book Ratio

- **Result**: Confirmed
- **Evidence**: `InvestissementDigital` positively and significantly predicts PBR, controlling for ROE.
- **Robustness**: Results hold under log-log specification and with heteroscedasticity-consistent (HC3) clustered standard errors.

### H3: Digitalization → Higher Dividends

- **Result**: Confirmed
- **Evidence**: MD positively predicts log(dividends) in pooled and within models. Fisher test rejects pooling, confirming entity effects.
- **Robustness**: Tobit model confirms results accounting for censoring at zero. RDD identifies a threshold effect at the 75th percentile of MD.

### H4: MD Effect Varies by Sector

- **Result**: Confirmed
- **Evidence**: Sector dummy interactions improve model fit significantly. Dynamic model with sector controls confirms temporal stability.
- **Interpretation**: The returns to digital maturity are not uniform; sector-specific policies are warranted.

### H5: Age Moderates the MD-PB Relationship

- **Result**: Confirmed
- **Evidence**: The MD × Age interaction term is significant. GAM interaction surfaces show steeper MD-PB slopes for younger firms.
- **Survival analysis**: Cox model shows MD accelerates time to high technology adoption, more pronounced for younger firms.
- **Interpretation**: Younger companies capture digitalization benefits faster; older firms face structural inertia.

### Digital Manager Presence

- **Result**: Companies with a dedicated digital manager show higher mean PB scores and tighter PB distributions.
- **Visualization**: Boxplot and scatter plots confirm the association.


# R Package Dependencies
# Run: source("requirements.R") to install all required packages

packages <- c(
  "readr", "FactoMineR", "ggplot2", "dplyr", "tidyr", "explor", "plm", "ggrepel",
  "scales", "car", "plotly", "lme4", "sampleSelection", "lmtest", "sandwich",
  "censReg", "lfe", "stargazer", "quantreg", "dynlm", "ivreg", "caret",
  "AER", "mediation", "nnet", "rdrobust", "mgcv", "survival", "survminer",
  "interactions", "broom", "viridis"
)

new_packages <- packages[!(packages %in% installed.packages()[, "Package"])]

if (length(new_packages) > 0) {
  message("Installing missing packages: ", paste(new_packages, collapse = ", "))
  install.packages(new_packages, dependencies = TRUE)
} else {
  message("All required packages are already installed.")
}

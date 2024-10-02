# Anorexia Treatment Evaluation Lab

## Table of Contents 
1. [Overview](#overview)
2. [Context](#context) 
3. [Data](#data)
4. [Results](#results)
   - [Evidence of Anorexia Post-Treatment](#evidence-of-anorexia-post-treatment)
   - [Effectiveness of Cognitive/Behavioral Treatment](#effectiveness-of-cognitivebehavioral-treatment)
   - [Comparison with Control Treatment](#comparison-with-control-treatment)
   - [Permutation Test for Weight Gain Comparison](#permutation-test-for-weight-gain-comparison)
   - [Assumption of Equal Variances](#assumption-of-equal-variances)
   - [Assessment of Normality](#assessment-of-normality)
5. [Conclusion](#conclusion)

## Overview
This project evaluates the effectiveness of different treatment types for anorexia using statistical methods, including T-tests, permutation tests, and QQ-plots. The goal is to assess whether these treatments lead to significant weight gain in patients diagnosed with anorexia.

## Context
Anorexia is primarily diagnosed when a patient's weight is less than 85% of what is considered normal for their height and age. In this study, a patient is classified as anorexic if their weight is below 90 lbs. The dataset includes three treatment types: control treatment, family treatment, and cognitive/behavioral treatment. The columns "Before" and "After" represent the weights of patients before and after treatment, respectively, while the last column \(Y\) indicates the weight difference (After - Before).

## Data
The dataset used in this evaluation is stored in a text file.

## Results

### Evidence of Anorexia Post-Treatment
To determine if there is evidence of anorexia after treatment (α=0.05):

- The null hypothesis is rejected at the 95% confidence level, indicating that anorexia is present after treatment.

### Effectiveness of Cognitive/Behavioral Treatment
To assess whether the average weight gain in the cognitive/behavioral group is significant (α=0.05):

- Sufficient evidence is found to reject the null hypothesis at the 95% confidence level, confirming that weight gain from cognitive/behavioral therapy significantly differs from zero.

### Comparison with Control Treatment
To determine if cognitive/behavioral treatment leads to greater weight gain than control treatment:

- The null hypothesis is not rejected, indicating insufficient evidence that the mean weight gain in the cognitive/behavioral group is significantly greater than in the control group.

### Permutation Test for Weight Gain Comparison
Performing a permutation test (α=0.01) to compare cognitive/behavioral treatment with control:

- The null hypothesis is not rejected at the 99% confidence level, indicating insufficient evidence that the true mean weight gain is greater in cognitive/behavioral than in control.

### Assumption of Equal Variances
To check the assumption of equal variances:

- The null hypothesis is not rejected, indicating insufficient evidence to claim different variances between family and control groups.

### Assessment of Normality
To assess normality in the family treatment and control groups, QQ-plots are generated:

- Both groups appear approximately normal, with no significant deviations from the linear pattern in the QQ-plots.

## Conclusion
The evaluation suggests that while cognitive/behavioral treatment leads to significant weight gain, it may require multiple rounds of therapy for patients to exceed clinical diagnostic criteria for anorexia. The findings challenge common assumptions about the relationship between treatment type and weight gain in anorexic patients.

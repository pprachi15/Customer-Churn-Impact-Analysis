# Customer Churn Impact Analysis  
### Day 2 — 30 Day Applied Business Strategy Challenge

A SQL-driven analysis evaluating churn behavior, revenue impact, customer segmentation, and strategic retention opportunities.

---

## Overview
This project analyzes how customer churn affects **revenue stability**, **forecasting accuracy**, and **product performance**.  
Using a synthetic dataset of **1,500 customers**, the analysis quantifies churn rate, identifies high-risk segments, examines behavioral drivers, and estimates revenue at risk.

This project follows a combined **Analytics + Product Management** workflow to demonstrate structured problem solving, data interpretation, and business strategy development.

---

## Business Problem
Customer churn has started to reduce revenue predictability and weaken forecasting stability.  
While new customers continue to join, a portion of existing customers are becoming inactive or leaving.

The business needs clarity on:
- how churn is affecting revenue
- which customer groups are at highest risk
- what behavioral patterns predict churn
- where targeted interventions will be most effective

---

## Key Questions
1. How many customers are churning and at what rate  
2. Which customers are most likely to churn  
3. How churn impacts revenue and forecasting  
4. When churn typically occurs (tenure, usage decline)  
5. What actions can reduce churn effectively  

---

## Data and Methods
**Tools:** SQLite, SQL, Excel, PowerPoint  
**Dataset Size:** 1,500 customers  

**Fields analyzed:**  
`tenure_months`, `average_monthly_revenue`, `total_transactions`, `avg_session_per_week`,  
`segment`, `plan_type`, `region`, `is_churned`

**Methods used:**
- SQL grouping and aggregation  
- Churn rate computation  
- Segmentation analysis  
- Behavioral comparison  
- Revenue risk assessment  

---

## Key Findings

### Churn Overview
- Overall churn rate: **23.53%**
- Early-tenure customers (0–6 months) churn the fastest
- Mid-tenure users (6–12 months) also show elevated churn
- Long-tenure users (24+ months) churn the least

### Segmentation Insights
- **Free tier users** produce the highest number of churned accounts  
- Standard and Premium customers churn at significantly lower rates  
- **US East** region experiences the highest churn rate

### Behavioral Insights
Churned customers show:  
- lower session frequency  
- fewer total transactions  
- reduced average monthly revenue  

### Revenue Impact
- Total monthly revenue: **$109,621**  
- Revenue lost monthly due to churn: **$11,990**  
- Percent revenue at risk: **10.94%**  
- Projected annualized loss: **$143,880**

---

## Strategic Insights (PM Lens)
- Early engagement is the strongest predictor of long-term retention  
- Free-tier product value does not convert customers effectively  
- Region-specific user behavior suggests need for localized strategies  
- Forecasting models should incorporate churn-adjusted demand patterns  
- Reducing churn even by a few percentage points yields significant revenue lift  

---

## Recommended Actions
1. Strengthen onboarding and activation for 0–6 month customers  
2. Redesign free-tier experience and upgrade incentives  
3. Launch engagement-based retention triggers  
4. Implement churn-adjusted forecasting inside finance workflows  
5. Coordinate targeted Customer Success outreach for high-risk regions  
6. Build an experimentation roadmap for product improvements  

---

---

## Part of the 30 Day Applied Business Strategy Challenge
Every day I solve one real-world business problem by combining analytics, structured reasoning, and product strategy.  
**One problem at a time. One solution at a time.**


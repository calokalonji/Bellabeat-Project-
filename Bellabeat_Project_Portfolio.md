
# 📊 Bellabeat Smart Device Data Analysis for Growth

**Role:** Junior Data Analyst, Marketing Analytics Team  
**Tools Used:** SQL (Microsoft SQL Server), Python, Excel, Power BI  
**Dataset:** Fitbit Fitness Tracker Data (33 participants, April–May 2016)  
**Duration:** One Month Project  

---

## 🧭 Project Overview

As a junior data analyst on Bellabeat’s marketing analytics team, my role was to explore how consumers use smart devices and identify trends that could inform Bellabeat’s marketing strategy. Bellabeat, a tech company focused on women’s wellness, sought to better understand user behaviour through data-driven insights.  

The project was guided by three core questions:  

1. What are the key trends in smart device usage?  
2. How could these trends apply to Bellabeat’s customers?  
3. How might these findings influence Bellabeat’s marketing strategy?  

My findings were later presented to the Bellabeat executive team, with actionable recommendations to drive engagement and growth.

---

## 🧹 Data Preparation

I sourced **public Fitbit fitness tracker data** collected from 33 eligible users via Amazon Mechanical Turk. The dataset contained 18 CSV files covering daily, hourly, and minute-level activity logs.  

**Key preparation steps included:**  

- **Data Quality Review:** Identified sparse and incomplete data, particularly in sleep and weight logs.  
- **Standardisation:** Unified inconsistent date/time formats and renamed verbose columns.  
- **Deduplication:** Removed duplicate records and enforced unique primary keys (`Id` + `Date`).  
- **Integrity Checks:** Cross-validated metrics (e.g. ensuring `TotalSteps` matched between daily and hourly logs).  
- **Aggregation:** Merged granular datasets into a relational SQL schema with four logical tables — *Daily Activity*, *Time-Series Activity*, *Sleep Metrics*, and *Health & Logging*.  

> 🔗 *The full SQL cleaning and schema design process, including scripts for data validation, type conversion, and outlier handling, is available on my [GitHub](#).*

---

## 🧠 Data Analysis

The dataset included **33 users’ daily activity data** and **24 users’ sleep data**. Analysis was conducted in SQL and Python (for statistical validation and visualisation).  

### Descriptive Statistics
| Metric | Average Value | Interpretation |
|:--|:--|:--|
| Total Daily Steps | 7,638 | Moderately active (7,500–9,999). Encouragement needed to reach 10,000+ daily. |
| Total Daily Calories | 2,304 kcal | Typical for moderately active adults. |
| Total Minutes Asleep | 419 mins (6 hrs 59 mins) | Slightly below the 7–9 hours recommended. Highlights need for sleep-focused wellness features. |
| Data Consistency | 27% missing sleep data | Indicates underuse of sleep tracking among users. |

### Correlation Analysis
- **Steps vs Calories:** r = 0.59 → Moderate positive correlation (expected relationship).  
- **Steps vs Sleep:** r = -0.19 → Weak negative correlation (suggests independent sleep and activity behaviours).  

Users were also **classified by activity level** using SQL logic:  
- *Highly Active* (≥10,000 steps/day)  
- *Moderately Active* (7,500–9,999 steps/day)  
- *Lightly Active* (5,000–7,499 steps/day)  
- *Sedentary* (<5,000 steps/day)  

> Additional SQL processes included calculating **sleep efficiency**, identifying **outliers**, analysing **activity by weekday/weekend**, and creating **7-day rolling averages** for trend analysis.  

---

## 📈 Visualisation and Insights

Using SQL outputs and Power BI, I created several key visuals to uncover behavioural trends:

### 1. Daily Minutes Breakdown – The Sedentary Habit
Users spent **over 12 hours per day sedentary**, the most significant trend in the dataset.  
**Insight:** Bellabeat can promote wellness and mindfulness features rather than only fitness performance.

### 2. Average Steps by Hour – Afternoon Peak
Peak activity occurred between **5 PM and 7 PM**.  
**Insight:** Market to users during the *commute window* with motivational push notifications or challenges.

### 3. Steps vs Sleep – Weak Relationship
Weak correlation between steps and sleep (r = −0.19).  
**Insight:** Wellness marketing should focus on *holistic health* — sleep, mindfulness, and stress reduction — not just physical activity.

---

## 💡 Key Marketing Recommendations

1. **Campaign: “Micro-Movement – Break the Sedentary Cycle”**  
   - Focus: Encourage short bursts of movement throughout the day.  
   - Strategy: In-app reminders during sedentary hours (10 AM–4 PM).  
   - Content: Quick “desk stretches” and “midday walk” blog posts.  

2. **Campaign: “Activate Your Evening Commute”**  
   - Focus: Leverage the 5–7 PM activity window.  
   - Strategy: Gamify evening challenges (e.g. “3,000 steps before dinner”).  
   - Content: Promote light-activity features for achievable motivation.  

3. **Campaign: “Sleep is the Ultimate Wellness Metric”**  
   - Focus: Improve awareness and engagement with sleep tracking.  
   - Strategy: Educational content on sleep, stress, and hormonal health.  
   - Integration: Encourage users to check their sleep score alongside step goals.  

---

## 📊 Executive Dashboard Highlights

The final Power BI dashboard provided four interactive insights for Bellabeat’s leadership team:

1. **User Segmentation by Steps** – 78% of users are sedentary or lightly active.  
2. **Hourly Engagement** – Morning and evening peaks around 10 AM and 6 PM.  
3. **Weekly Trends** – Activity highest on weekends, lowest on Monday/Tuesday.  
4. **Health Linkage** – Weak correlation between steps and sleep efficiency, reaffirming the need for a balanced wellness message.

---

## 🧩 Project Outcome

This project demonstrated how **SQL-driven data analysis** can uncover meaningful behavioural insights and guide **real-world business decisions**.  

**Key outcomes:**  
- Created a **relational SQL database** from 18 raw CSV files.  
- Applied advanced **data cleaning, correlation analysis, and trend visualisation**.  
- Delivered **data-driven marketing recommendations** supported by quantitative insight.  

> 🔗 Full analysis process, SQL scripts, and Power BI dashboard visuals are available on my **[GitHub portfolio](#)**.

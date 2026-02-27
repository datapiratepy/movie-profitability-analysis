# Movie Profitability & Ratings Analysis

## Project Overview

This project analyzes movie industry data to understand the relationship between **budget, profit, genre performance, IMDb ratings, and release trends**.

The objective was to identify:
- What types of movies perform best financially
- Whether higher budgets lead to better audience ratings
- How movie profitability has evolved over time

The project was completed as an **end-to-end data analytics workflow**, starting from raw datasets and finishing with an interactive Tableau dashboard.

---

## Datasets Used

Three datasets were merged and analyzed:

- **TMDb Movies Dataset** – Budget, revenue, genres, popularity, movie metadata  
- **IMDb Ratings Dataset** – IMDb user ratings  
- **Industry Certification Dataset** – Movie certificates and additional attributes  

After cleaning and transformation, a unified `movies_master` table was created for analysis.

---

## Tools & Technologies

- **SQL (Google BigQuery)** – Data cleaning, joins, transformation, and analysis  
- **Tableau Public** – Interactive dashboard creation  
- **CSV Data Processing** – Dataset preparation  

All SQL queries used for analysis are available inside the `queries/` folder.

---

## Data Cleaning & Preparation

Key data preparation steps included:

- Removing duplicate movie records  
- Converting nested genre structures into readable format  
- Handling missing budget and revenue values  
- Creating calculated metrics:

  - **Profit = Revenue − Budget**
  - **ROI = Profit / Budget**

- Merging all datasets into a structured `movies_master` table

This stage ensured the dataset was analysis-ready and suitable for business insights.

---

## Analytical Insights

The analysis focused on four core areas:

### Top Profitable Movies
Identified the highest-profit movies based on total box office profit.  
Results showed blockbuster franchises consistently dominating global earnings.

---

### Average Profit by Genre
Analyzed average profitability across genres.  
**Animation, Family, and Adventure** genres showed the highest average profits.

---

### Budget vs IMDb Rating
Explored whether higher production budgets lead to better audience ratings.  
The results showed **no strong correlation** — large budgets do not guarantee high IMDb ratings.

---

### Profit by Release Year
Examined how profitability trends have changed over time.  
Movie profits have increased significantly since the early 2000s, reflecting global industry growth and box office expansion.

---

## Dashboard Preview

![Dashboard Preview](movie_profitability_&_ratings_analysis.png)

The full interactive Tableau dashboard file is available as:

`movie_profitability_&_ratings_analysis.twbx`

The dashboard includes:
- Top Profitable Movies  
- Average Profit by Genre  
- Budget vs IMDb Rating  
- Profit by Release Year  

---

## Repository Structure

```
datasets/   → Raw and cleaned movie datasets  
queries/    → SQL scripts used for analysis  
.twbx       → Tableau dashboard file  
.png        → Dashboard preview image  
README.md   → Project documentation  
```

---

## Key Learnings

- Practical experience with SQL data cleaning and multi-table joins  
- Writing analytical queries from scratch  
- Deriving business insights from raw movie data  
- Designing an interactive Tableau dashboard  
- Completing a full end-to-end data analytics project  

---

## Conclusion

This project demonstrates how structured data analysis can uncover valuable insights about movie industry performance.

The workflow reflects real-world analytics practices — from raw data preparation to SQL-based analysis and final visualization in Tableau. Integrate Python for advanced statistical analysis

# netflix-sql-analysis
Netflix dataset analysis using PostgreSQL

🎬 Netflix Data Analysis using SQL

📖 Introduction

Netflix is one of the world's leading streaming platforms, offering thousands of movies and TV shows across different genres and countries.
This project analyzes the Netflix Movies and TV Shows dataset using PostgreSQL to explore patterns in content distribution, ratings, release years, and production countries.

The objective of this project is to practice SQL-based data exploration and analysis and gain insights from the dataset.

🎯 Objectives

The main goals of this project are:

Analyze the distribution of Movies vs TV Shows
  Identify top countries producing Netflix content
  Find the most common content ratings
  Discover directors with the highest number of titles
  Analyze the growth of Netflix content over time
  Explore genres and movie durations

🛠️ Tools & Technologies

 PostgreSQL – Database used for analysis
 SQL – Data querying and analysis
 Netflix Dataset – Source of data
 GitHub – Project hosting

𝄜 Dataset Table Query
     CREATE TABLE netflix (
          show_id TEXT,
          type TEXT,
          title TEXT,
          director TEXT,
          "cast" TEXT,
          country TEXT,
          date_added TEXT,
          release_year INT,
          rating TEXT,
          duration TEXT,
          listed_in TEXT,
          description TEXT
  );

📊 SQL Concepts Used

This project demonstrates several important SQL techniques:

 SELECT – Data retrieval
 WHERE – Filtering records
 GROUP BY – Aggregation
 ORDER BY – Sorting results
 LIMIT – Restricting output size
 Subqueries – Nested queries for deeper analysis
 Window Functions – Running totals and rankings
 RANK() / DENSE_RANK() – Ranking results



📂 Dataset Information

The dataset contains information about Netflix titles including:

  Show ID
  Type (Movie or TV Show)
  Title
  Director
  Cast
  Country
  Date Added
  Release Year
  Rating
  Duration
  Genre
  Description

Dataset Source: Netflix Movies and TV Shows Dataset from Kaggle.



📌 Key Analysis Performed

Some important analyses performed in this project include:

 Counting total Movies vs TV Shows
 Finding top producing countries
 Identifying most common ratings
 Ranking directors with the most titles
 Finding movies longer than average duration
 Analyzing content release trends over the years



🚀 Conclusion

This project demonstrates how SQL can be used to explore and analyze real-world datasets.
By applying different SQL techniques, meaningful insights about Netflix content distribution and trends were discovered.

This project also helped strengthen my understanding of data exploration, aggregation, and SQL-based analysis.



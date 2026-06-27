# 🚀 My First End-to-End E-Commerce & Web Analytics Dashboard (From Raw Data)

## 📌 Project Overview
This is my very first hands-on data analytics project built from scratch using **WPS Office (Excel)**. Instead of using a pre-cleaned sample dataset, I extracted genuine, raw e-commerce operational data containing over **32,000 live transaction records** and web session logs across 6 fragmented sources. 

My goal was to treat this as a real-world business challenge: joining messily structured tables, cleaning the inputs, building automated logic, and architecting presentation-ready stakeholder visual models.

## 📊 Dashboard Preview
![Dashboard Preview](dashboard_preview.png)

## 🛠️ Data Engineering & Modeling (What I Built From Scratch)
Since this was a completely raw dataset, I performed the entire ETL (Extract, Transform, Load) and data modeling process manually:
* **Relational Mapping:** Connected 6 independent databases (*Orders, Order Items, Products, Refunds, Website Sessions, Pageviews*) into a unified master engine.
* **Advanced Formula Pipelines:** Built cross-sheet extraction and logic using `INDEX/MATCH`, `VLOOKUP`, and nested logical conditions (`IF`, `ISNUMBER`, `MATCH`).
* **Volume Handling:** Optimized formula execution across a large dataset of **32,313 active rows** without utilizing heavy automated Power Query pipelines.

## 💡 Key Business Discoveries & Strategic Recommendations
* **Revenue Driver:** Discovered that **Product 3** dominates company profitability, commanding the highest sales volume.
* **Ad-Spend Efficiency Audit:** Found that search channels (`bsearch` and `gsearch`) are highly lucrative (32,000+ orders). Recommended shifting budget away from social media (`socialbook`), which heavily underperformed with only 343 orders.
* **Refund Risk Mitigation:** Identified a hidden business risk—100% of the customer refunds (56 orders) were exclusively coming from the `gsearch` channel. Recommended a targeted landing page audit.

## 📂 How to Access
* [Click Here to View & Download the Excel Dataset via Google Drive]
* https://docs.google.com/spreadsheets/d/1ea6sLcHB_ZLEhYHm4P0dtzB0ykzom_qE/edit?usp=drivesdk&ouid=107324002199543956473&rtpof=true&sd=true

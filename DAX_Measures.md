# DAX Measures

## Total Revenue

```DAX
Total Revenue =
SUM('retail_analytics clean_transactions'[revenue])
```

---

## Total Orders

```DAX
Total Orders =
DISTINCTCOUNT('retail_analytics clean_transactions'[invoice])
```

---

## Total Customers

```DAX
Total Customers =
DISTINCTCOUNT('retail_analytics clean_transactions'[customer_id])
```

---

## Average Order Value

```DAX
Average Order Value =
DIVIDE([Total Revenue], [Total Orders])
```

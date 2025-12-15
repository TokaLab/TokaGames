import csv
import json

cards = []

with open("forbidden.csv", newline="", encoding="utf-8-sig") as f:
    reader = csv.DictReader(f, delimiter=';')

    for row in reader:
        cards.append({
            "word": row["word"],
            "description": row["description"],
            "forbidden": [
                row["forbidden1"],
                row["forbidden2"],
                row["forbidden3"],
                row["forbidden4"],
                row["forbidden5"]
            ]
        })

data = {
    "mode": "Forbidden",
    "template": "images/forbidden.png",
    "cards": cards
}

with open("forbidden.json", "w", encoding="utf-8") as f:
    json.dump(data, f, ensure_ascii=False, indent=2)

# Egytronic POS Pro

Fork of [Open Source Point of Sale](https://github.com/jekkos/opensourcepos) (MIT with attribution terms). The original LICENSE and copyright notices stay intact.

## Run it (any one of these)

**1. GitHub Codespaces (no install):** Code > Codespaces > Create. It builds and starts the stack, then opens port 80.

**2. Any server or PC with Docker:**

```
git clone https://github.com/yk445kauod-coder/egytronic-pos-pro
cd egytronic-pos-pro
docker compose up -d --build
```

Open http://localhost (or the server IP). Default login is `admin` / `pointofsale`. **Change the password and encryption key immediately.**

## After first login

1. Office > Company: name, address, phone, VAT number.
2. Office > Store config > Locale: language Arabic (ar-EG), currency EGP, 14% VAT.
3. Add items, categories, suppliers, employees and permissions.

## Built-in features (from upstream)

Sales register, items and kits, stock and inventory, receiving, suppliers, customers, VAT and multi-tier taxes, discounts, quotes, invoices, gift cards, employee roles, multi-location stock, reports, barcodes, receipt printing, many languages.

## Production

Use HTTPS, a managed MySQL or MariaDB with backups, and a strong admin password. GitHub Pages cannot host this app because it needs PHP and MySQL.

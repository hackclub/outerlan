# 🏕️ OuterLAN

Outernet was the event that took hackers outside to touch grass, but OuterLAN brought them the [very reliable internet with 0% downtime](https://cloud-k3dt557ph-hack-club-bot.vercel.app/0img_9387.jpg), in the middle of the Vermont Wilderness.

> ⚠️ All times and dates are in Eastern Daylight Time (America/New_York, UTC-4) unless stated otherwise. The currency used is the United States Dollar, with the "." being the decimal place and the "," is the thousand grouping.

## 💸 The Budget
OuterLAN had a budget of $10924.98. Here is a simple breakdown of the budget:

- Networking Equipment: $2,218.92 (15.50%)
- Satellite Internet: $5,680.00 (39.68%)
- Infrastructure: $458.99 (3.21%)
- Cabling and Accessories: $1,066.84 (7.45%)
- Power and Energy: $460.00 (3.22%)
- Total Equipment Cost: $14,359.07
- Shipping: $581.98 (4.06%)

Grand Total: $14,941.05

[↗️ The full budget is available here](https://docs.google.com/spreadsheets/d/1Gf1x8dKi89572b3kToda9X_eevY1oXE4HmD5KoMCSac/edit#gid=0)

## 📄 The plan
The original plan was to use 6 Ruckus R710 Access Points, placed at Faith Lodge (dining point), the [Cafe](https://hackclub.slack.com/archives/C058MNEP9MZ), the Barn, and various other places. It was later modified to try to get an access point at the sleeping area, which we'll talk about later. Eventually, we ended up only using 4: Two in Faith Lodge, one in the Cafe, and one in the Barn. Each access point (minus the secondary one in Faith Lodge named GamesField) had a Ubiquiti switch for users to plug in ethernet to their own personal devices/servers. The server was going to run Proxmox and OPNsense as a router.

## ⏲️ Last Minute Worries
1. On the 25th of July at 11:05 PM, the team assembled quickly as we had an emergency. We couldn't reflash the raid controller to be able to recognize our disks. This meant we couldn't install Proxmox on our server.
2. We initially didn't plan on putting network coverage in the tent areas so people could touch grass, so we had to run out to Best Buy to buy Insignia ethernet cable and couplers, which ultimately failed in the end. We got Power over Ethernet, but no Ethernet it seems.

## 🌐 World Wide Web
We used [Starlink Business](https://www.starlink.com/business) to get fast download/upload speeds. Occasionally, our download bandwidth spiked but after blocking various movie/TV streaming sites (we made sure to leave YouTube unblocked), we corrected it! During the event, we ran out of IP addresses to assign using DCHP. We temporarily used a Linksys router, which would only assign up to 255 devices IP addresses (between 192.168.1.1 and 192.168.1.255). We eventually got OPNsense to work again, so people could connect.

## 🤝 DNS and Domains
We wanted to essentially wanted to create our own internet at Outernet, so we setup CoreDNS to make .outernet domains, i.e. chat.outernet, our very own matrix server, and setup.outernet, a page dedicated to helping people get connected fully to the internet.

## 🖥️ Backbone (as simple as possible)
Router: OPNsense running on Proxmox VE
Access Points: 4 Ruckus R710 Access points, the main one in Faith Lodge being the "master" (controls the others)
Server: A Dell Poweredge R620 that was $139, but took forever to boot. Was very large but was very powerful. It had 2 TB disks installed. One for main storage, and one contained Wikipedia, All Stack Exchanges relating to computers + Ham Radio Stack Exchange.

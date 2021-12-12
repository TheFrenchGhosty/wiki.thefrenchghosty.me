---
title: Proof of Concept - Privacy Guide
description: 
published: true
date: 2021-12-12T15:37:09.818Z
tags: 
editor: markdown
dateCreated: 2021-12-07T18:04:57.878Z
---

**THIS IS A PROOF OF CONCEPT, THE CONTENT OF THIS PAGE WILL SURELY END UP IN A DEDICATED WEB PAGE OUTSIDE OF THE WIKI**

# Privacy Guide


## What?

This "guide" is just a big list of great software/providers to dig into, the idea is that this is the information I would like to have seen 4 years ago: me from 4 years ago just wanted a list of good things to dig into: this is a list of good things to dig into.

**Threat model:** This list is focused on a specific [threat model](https://en.wikipedia.org/wiki/Threat_model): avoiding [Big Tech company](https://en.wikipedia.org/wiki/Big_Tech), avoiding companies with ties to law enforcements/government agencies/governments (when possible), avoiding companies with double standard/bad privacy practices.

**License:** The content of this guide is released under the [CC BY-NC-SA 4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/) to everyone, *except* the current and past team members of privacyguides org and privacytools io (except [Mikaela](https://github.com/Mikaela)), reuse is allowed following this license, as long as the content doesn't end up on privacyguides org, privacytools io and any provider that isn't listed in the providers list.


## Why?

This guide has been created because privacyguides org and privacytools io made awful decisions and have awful recommendations. There's also various internal issues at privacyguides org [between their own team members](https://mikaela.info/blog/english/2021/11/23/leaving-privacyguides.html).

Some examples of awful decisions I contested:

- Removal of LineageOS: https://github.com/privacyguides/privacyguides.org/pull/294#issuecomment-988092870
- Removal of Posteo: https://github.com/privacyguides/privacyguides.org/pull/369#issuecomment-988094653
- Removal of CanvasBlocker: https://github.com/privacyguides/privacyguides.org/pull/259#issuecomment-988097091
- Removal of Ubuntu Touch: https://github.com/privacyguides/privacyguides.org/pull/253#issuecomment-988099275
- Removal of 7zip: https://github.com/privacyguides/privacyguides.org/pull/258#issuecomment-988104029

The "Do not use" category include things recommended by privacyguides org, that, as the name suggest, you shouldn't use.

Some community feedback about what privacyguides org has become:

- About the removal of a lot of good recommendations ["There are so many on this list that shouldn't have been removed. Cookie AutoDelete, multi account containers, Safari, Ungoogled chromium, anti recommendation: chrome. None of it makes any sense..."](https://teddit.pussthecat.org/r/PrivacyGuides/comments/rbv0uh/recent_updates_to_privacyguidesorg/hnr7ez2/#c), ["This is pointed out constantly, but they just cannot care"](https://teddit.pussthecat.org/r/PrivacyGuides/comments/rbv0uh/recent_updates_to_privacyguidesorg/hnr8lbz/#c)

- ["PrivacyGuides is a one-man-show @tommytran732 , without any discussion"](https://teddit.pussthecat.org/r/PrivacyGuides/comments/rbv0uh/recent_updates_to_privacyguidesorg/hntz49m/#c)

- About the Posteo removal because of DMARC: ["Nothing to do with security or privacy. Everything to do with email server reputation."](https://teddit.pussthecat.org/r/PrivacyGuides/comments/rbv0uh/recent_updates_to_privacyguidesorg/hns9sju/#c)

- About the LineageOS removal: ["With this logic we should use Forest OS which is even better than Graphene. The process of installing Forest OS is simple. You just throw away all of your tech, burn your passport, and go off the grid to live in a forest as a hermit. This makes you extremely private and your devices impossible to hack."](https://teddit.pussthecat.org/r/PrivacyGuides/comments/rbv0uh/recent_updates_to_privacyguidesorg/ho1akt7/#c)

- About the DDG Browser removal: ["Removing DDG browser and saying all iOS browsers are basically Safari with a skin (the assumption being that it’s not really a meaningful difference from one to the next) but then saying use FF/FF Focus because they block trackers, doesn’t make sense to me because DDG also blocks trackers (and has a better default search engine)."](https://teddit.pussthecat.org/r/PrivacyGuides/comments/rbv0uh/recent_updates_to_privacyguidesorg/hnsrugf/#c)

- About the Qwant removal (because "In December 2020, Qwant blocked access from Japan, Romania, Taiwan, and, Turkey.I consider this to be a wicked act."): ["How is that a reason to remove it?"](https://teddit.pussthecat.org/r/PrivacyGuides/comments/rbv0uh/recent_updates_to_privacyguidesorg/hnqrx5c/#c), ["its not privacy related bruh"](https://teddit.pussthecat.org/r/PrivacyGuides/comments/rbv0uh/recent_updates_to_privacyguidesorg/hnqtfyk/#c)

- About the removal of good browser addons ["I feel like there's a growing disconnect between the authors and readers and we'll eventually have another 'fork' which focuses more on the average user, who has next to no technical knowledge."](https://teddit.pussthecat.org/r/PrivacyGuides/comments/rbv0uh/recent_updates_to_privacyguidesorg/hnr1vei/#c)



## Requirements

- All software must be open source no exception.
- All providers mustn't be based in the [Five Eyes](https://en.wikipedia.org/wiki/Five_Eyes) - USA/Canada/Australia/United Kingdom/New Zealand - or Russia.
- All providers *shouldn't* ideally be based in Switzerland (reason: Switzerland privacy died in 2018, they now basically have their own ["NSA-like" agency](https://neflabs.com/article/swiss-nsa-march/), providers are just using "Switzerland" in their marketing because the country still has a reputation of being private - while it's not).
- All providers must have open source clients (or use an open standard, like e-mail).
- All providers *should* ideally have open source servers.
- All providers mustn't be invite only (sorry RiseUp and cTemplar).

# List

## Providers


### Cloud Storage

Use:

- Your own self-hosted Nextcloud
- Any provider (that isn't: a [Big Tech company](https://en.wikipedia.org/wiki/Big_Tech) - Amazon-Apple-Google-Microsoft), in a [Five Eyes country](https://en.wikipedia.org/wiki/Five_Eyes) - USA/Canada/Australia/United Kingdom/New Zealand - (Icedrive, [Mega](https://www.techradar.com/news/internet/kim-dotcom-says-you-can-t-trust-mega-teases-his-own-file-hosting-competitor-1300859)) or in Russia (Yandex) supported by [Rclone](https://rclone.org/overview/) (and [just encrypt with it](https://rclone.org/crypt/))
- [Cryptee](https://crypt.ee/) (Note: expensive, not audited, not supported by Rclone)
- [Filen](https://filen.io/) (Note: really young, not audited, not supported by Rclone)

Do not use:

- Any other provider not supported by [Rclone](https://rclone.org/overview/)


### DNS Resolver

Use (if you use a VPN):

- The one provider by your VPN provider

Use (if you don't use a VPN):

- [Adguard](https://adguard.com/en/adguard-dns/overview.html) (Note: Log some things: https://adguard.com/en/privacy/dns.html )
- [Quad9](https://quad9.net/) (Note: Based in Switzerland, no log)
- [AhaDNS](https://ahadns.com/) (Note: Hobby project, no log)

Do not use:

- Cloudflare: it's [Cloudflare](https://git.disroot.org/dCF/deCloudflare/src/branch/master/readme/en.md).
- NextDNS: USA-based
- UncensoredDNS: Hobby project + No privacy policy.


### Email provider

Resource: https://digdeeper.neocities.org/ghost/email.html

Use:

- [Posteo](https://posteo.de/en) (Note: No custom domains allowed, but 100% open source)
- [Mailbox](https://mailbox.org/en/) (Note: 100% closed source)
- [Tutanota](https://tutanota.com/) (Note: No IMAP/POP3, using their *open source* client is required, server code is 100% closed source)
- [Disroot](https://disroot.org/en/services/email) (Note: Hobby project, but **should** [last](https://forum.disroot.org/t/will-disroot-last/101/2). I still wouldn't recommended it as a main provider.)

Do not use:

- ProtonMail: Sketchy ([allegedly a honeypot](https://encryp.ch/blog/disturbing-facts-about-protonmail/)), in 2018, Proton, had [its VPN client signed by Tesonet, an advertising company](https://teddit.pussthecat.org/r/privacytoolsIO/comments/8xnvxc/remove_protonvpn_from_privacytoolsio/), in 2021, [they helped autority](https://techcrunch.com/2021/09/06/protonmail-logged-ip-address-of-french-activist-after-order-by-swiss-authorities/) [by logging the IP address of a French activist, going against their marketing material, and privacy policy](https://en.wikipedia.org/wiki/ProtonMail#Compliance_with_Swiss_court_orders_and_IP_Logging)  (More: [digdeeper.neocities.org analysis](https://digdeeper.neocities.org/ghost/email.html#ProtonMail) - Mental Outlaw's video about it: [Invidious](https://redirect.invidious.io/watch?v=IeXaYR4ed9c) / [Odysee](https://odysee.com/@AlphaNerd:8/is-proton-mail-really-private,-secure,:f)).
- StartMail: Made Startpage, and sold it to an advertising company.


### Search Engines

Use:

- [SearX](https://searx.me/)

Do not use:

- Anything else (including Whoogle, that is just SearX but worse)


### Social Networks

Social networks are fundamentaly not private by design, but if you have to use one, follow this list:

Use:

- Any Fediverse-compatible project (Mastodon, diaspora*, Friendica, GNU social, Pleroma, Pixelfed...)
- [Lemmy](https://join-lemmy.org/) (Note: Projects owners/creators are heavily politically biased and use Lemmy to "push" their political opinions)

Do not use:

- Anything else


### Social News Aggregator

Use: 

- RSS

Do not use:

- Anything else


### VPN

Note: A good rules is to avoid any VPN that has referals and/or advertise and/or do fake "time limited" sales (basically 99% of them).

Use:

- [Mullvad](https://mullvad.net/)
- [IVPN](https://www.ivpn.net/)

Do not use:

- ProtonVPN: like Protonmail, sketchy ([allegedly a honeypot](https://encryp.ch/blog/disturbing-facts-about-protonmail/)), in 2018, Proton, had [its VPN client signed by Tesonet, an advertising company](https://teddit.pussthecat.org/r/privacytoolsIO/comments/8xnvxc/remove_protonvpn_from_privacytoolsio/), in 2021, [they helped autority](https://techcrunch.com/2021/09/06/protonmail-logged-ip-address-of-french-activist-after-order-by-swiss-authorities/) [by logging the IP address of a French activist, going against their marketing material, and privacy policy](https://en.wikipedia.org/wiki/ProtonMail#Compliance_with_Swiss_court_orders_and_IP_Logging)  (More: [digdeeper.neocities.org analysis](https://digdeeper.neocities.org/ghost/email.html#ProtonMail) - Mental Outlaw's video about it: [Invidious](https://redirect.invidious.io/watch?v=IeXaYR4ed9c) / [Odysee](https://odysee.com/@AlphaNerd:8/is-proton-mail-really-private,-secure,:f)).


## Software

### Web Browser

Use:

- [Librewolf](https://librewolf.net/) (Note: follow [this](https://github.com/TheFrenchGhosty/TheFrenchGhostys-Ultimate-Firefox-Configuration))
- Firefox properly [configured](https://github.com/TheFrenchGhosty/TheFrenchGhostys-Ultimate-Firefox-Configuration) (Note: it directly "encourages" [Mozilla's behaviour](https://digdeeper.neocities.org/ghost/mozilla.html))
- [Ungoogled Chromium](https://github.com/Eloston/ungoogled-chromium)
- [Bromite](https://www.bromite.org/)

Do not use:

- Tor Browser: it's a browser made for anonimity, not privacy


### Operating Systems

#### PC

Use:

- Any FOSS GNU/Linux distribution (except anything Ubuntu-based (except Linux Mint))
- Any FOSS BSD distrubution

Do not use:

- Anything Ubuntu-based (that isn't Linux Mint): Made by Cannonical, a company that created and "push" the use of Snap, a "packaging system" that requires connecting to their own closed source server, and used to include advertising for Amazon.

#### Mobile

Use:

- [GrapheneOS](https://grapheneos.org/) (Note: really low amount of devices supported)
- [LineageOS](https://lineageos.org/) (Note: it needs to be "degoogled" first: https://teddit.pussthecat.org/r/degoogle/comments/cldohl/how_to_degoogle_lineageos_in_2019/ )
- [DivestOS](https://divestos.org/): (Note: A soft-fork of LineageOS that is better than it in every way, however the project is REALLY young, support a lot less devices (a lot of the builds are either broken or untested) and has no track record.)

- Any FOSS GNU/Linux distribution

Do not use:

- Any rom that ship with MicroG (CalyxOS...): MicroG is pointless and encourage the use of spyware, just stick to open source software


### Calendar and Contact Sync

Use:

- [EteSync](https://www.etesync.com/)
- CalDAV/CarDAV (No client side encryption)


### Notebooks

Use:

- [Joplin](https://joplinapp.org/)
- Plain text files

Do not use:

- Standard Notes: Highly commercial


### Email Clients

#### PC

Use:

- [Claws Mail](https://www.claws-mail.org/)

Do not use:

- Thunderbird: It directly "encourages" [Mozilla's behaviour](https://digdeeper.neocities.org/ghost/mozilla.html) + Bloated + Heavy use of analytics/spyware

#### Mobile

Use:

- [K-9 Mail](https://f-droid.org/packages/com.fsck.k9/)
- [FairEmail](https://f-droid.org/packages/eu.faircode.email/)

Do not use:

- Anything else


### File Encryption Software

Use:

- [Veracrypt](https://veracrypt.fr/)
- [Rclone](https://rclone.org/crypt/)
- A 7-zip encrypted archive

Do not use:

- Cryptomator: Android client is closed source and paid


###  File Sharing

Use:

- [Lufi](https://framagit.org/fiat-tux/hat-softwares/lufi)
- [OnionShare](https://onionshare.org/)
- [Filebrowser](https://filebrowser.org/)

Do not use:

- Anything else

### Metadata Removal Tools

#### PC

Use:

- [ExifCleaner](https://exifcleaner.com/)
- Exiftools or anything supporting it (imagemagick for example)

Do not use:

- Anything else

#### Mobile

Use:

- [Scrambled Exif](https://f-droid.org/packages/com.jarsilio.android.scrambledeggsif/)

Do not use:

- Anything else


### Password Managers

Use:

- [Vaultwarden](https://github.com/dani-garcia/vaultwarden)
- [KeePassXC](https://keepassxc.org/) (Android client: [KeePassDX](https://f-droid.org/packages/com.kunzisoft.keepass.libre))

Do not use:

- Anything else

### Pastebin

Use:

- [PrivateBin](https://privatebin.info/) (Encrypted)
- [Hastebin](https://github.com/toptal/haste-server) (Not encrypted)
- [Pinnwand](https://github.com/supakeen/pinnwand) (Not encrypted)
- [NoPaste](https://github.com/bokub/nopaste) (Client side encryption + storage)

### Instant Messengers 

Use:

- [XMPP](https://xmpp.org/) (Note: not really user friendly, OMEMO encryption with multiple devices on one account is "weird" and sometimes will only make messages apear on one devices)
- [Matrix](https://matrix.org/) (Note: more user friendly than XMPP, easy encryption with multiple devices, but worse clients, more metadata leakages, heavier server and more minor to major issues)
- [Briar](https://briarproject.org/) (Note: Anonymous, P2P, TOR based, ideal for anonymous communication)
- [Session](https://getsession.org/) (Note: Anonymous, Lokinet based, ideal for anonymous communication) 

Do not use:

- Signal: Phone number required, centralized server, US-based company, [hostile toward alternative clients](https://github.com/LibreSignal/LibreSignal#readme))

### Video/Voice chat

Use:

- [Jitsi](https://jitsi.org/jitsi-meet/) (Video chat)
- [Mumble](https://mumble.info/) (Voice chat)

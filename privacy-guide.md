---
title: Proof of Concept - Privacy Guide
description: 
published: true
date: 2021-12-07T22:37:12.108Z
tags: 
editor: markdown
dateCreated: 2021-12-07T18:04:57.878Z
---

**THIS IS A PROOF OF CONCEPT, THE CONTENT OF THIS PAGE WILL SURELY END UP IN A DEDICATED WEB PAGE OUTSIDE OF THE WIKI**

# Privacy Guide


## What?

This "guide" is just a big list of great software/providers to dig into, the idea is that this is the information I would like to have seen 4 years ago: me from 4 years ago just wanted a list of good things to dig into: this is a list of good things to dig into.


## Why?

This guide has been created because privacyguides org and privacytools io made awful decisions and have awful recommendations. There's also various internal issues at privacyguides org [between their own team members](https://mikaela.info/blog/english/2021/11/23/leaving-privacyguides.html).

Some examples of awful decisions I contested:

- Removal of LineageOS: https://github.com/privacyguides/privacyguides.org/pull/294#issuecomment-988092870
- Removal of Posteo: https://github.com/privacyguides/privacyguides.org/pull/369#issuecomment-988094653
- Removal of CanvasBlocker: https://github.com/privacyguides/privacyguides.org/pull/259#issuecomment-988097091
- Removal of Ubuntu Touch: https://github.com/privacyguides/privacyguides.org/pull/253#issuecomment-988099275
- Removal of 7zip: https://github.com/privacyguides/privacyguides.org/pull/258#issuecomment-988104029

The "Do not use" category include things recommended by privacyguides org, that, as the name suggest, you shouldn't use.


## Requirements

- All software must be open source no exception.

- All providers mustn't be based in the [Five Eyes](https://en.wikipedia.org/wiki/Five_Eyes) - USA/Canada/Australia/United Kingdom/New Zealand.

- All providers *shouldn't* ideally be based in Switzerland (reason: Switzerland privacy died in 2018, they now basically have their own ["NSA-like" agency](https://neflabs.com/article/swiss-nsa-march/), providers are just using "Switzerland" in their marketing because the country still has a reputation of being private - while it's not).

- All providers must have open source clients (or use an open standard, like e-mail).

- All providers *should* ideally have open source servers.

- All providers mustn't be invite only (sorry RiseUp and cTemplar).

# List

## Providers


### Cloud Storage

Use:

- Your own self-hosted Nextcloud

- Any provider (that isn't a [Big Tech company](https://en.wikipedia.org/wiki/Big_Tech): Amazon-Apple-Google-Microsoft or [Mega](https://www.techradar.com/news/internet/kim-dotcom-says-you-can-t-trust-mega-teases-his-own-file-hosting-competitor-1300859) or Yandex) supported by [Rclone](https://rclone.org/overview/) (and [just encrypt with it](https://rclone.org/crypt/))

Do not use:

- Any provider not supported by [Rclone](https://rclone.org/docs/)

- Any provider that isn't a [Big Tech company](https://en.wikipedia.org/wiki/Big_Tech): Amazon-Apple-Google-Microsoft or [Mega](https://www.techradar.com/news/internet/kim-dotcom-says-you-can-t-trust-mega-teases-his-own-file-hosting-competitor-1300859) or Yandex


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

- Protonmail: Sketchy (allegedly a honeypot), allegedly weird fundings sources tied to Israel inteligence agencies ([digdeeper.neocities.org analysis](https://digdeeper.neocities.org/ghost/email.html#ProtonMail) - Mental Outlaw's video about: [Invidious](https://redirect.invidious.io/watch?v=IeXaYR4ed9c) / [Odysee](https://odysee.com/@AlphaNerd:8/is-proton-mail-really-private,-secure,:f)).

- StartMail: Made Startpage, and sold it to an advertising company.


### Search Engines

Use:

[SearX](https://searx.me/)

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

- ProtonVPN: like Protonmail, sketchy (allegedly a honeypot), allegedly weird fundings sources tied to Israel inteligence agencies ([digdeeper.neocities.org analysis](https://digdeeper.neocities.org/ghost/email.html#ProtonMail) - Mental Outlaw's video about: [Invidious](https://redirect.invidious.io/watch?v=IeXaYR4ed9c) / [Odysee](https://odysee.com/@AlphaNerd:8/is-proton-mail-really-private,-secure,:f)).


# Software

TODO

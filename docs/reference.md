# LinkedIn Unicode Reference

## How it works

LinkedIn posts are plain text. Bold/italic use Unicode **Mathematical Alphanumeric Symbols** and combining marks — same approach as Typegrow.

## Limitations

| Topic | Detail |
|-------|--------|
| Search | Unicode bold `𝗸𝗲𝘆` ≠ searchable `key` — don't bold keywords |
| Accessibility | Screen readers read Unicode names |
| Char limit | Supplementary chars ≈ 2 toward ~3000 limit |
| Editor cursor | Long Unicode spans misalign cursors — keep titles plain |
| Digits | Bold/italic sans include Unicode digits; report titles stay plain |

## Do / Don't

| Do | Don't |
|----|-------|
| Bold hook + 1–2 emphasis lines | Bold entire post |
| Plain `"Report Title 2026"` | Unicode-italic long titles with years |
| Plain ASCII hashtags | Unicode-bold hashtags |
| Run `linkedin_post.py` | Hand-type 𝗯𝗼𝗹𝗱 characters |

## Not in scope

Publishing to LinkedIn, carousels, image generation.

# Project handoff: September 2026 reconciliation

Repository: https://github.com/tjames250-sys/psilocybin-metabolism-references
Baseline: c5bb642 (Add human methamphetamine imaging update).
Review branch: update/september-2026-research.
Status: user approved the rebuilt handoff and authorized commit/push. This update is intended for main; GitHub Pages deployment is verified separately.

## Reconciliation scope and limitation

The referenced ChatGPT conversation was read. Its July 15 consolidated v2.2 handoff is represented only by an inaccessible content-reference marker; no complete artifact was available in the returned attachments. This audit uses the explicit inventory visible in that conversation and the older local website_update_handoff.md. It is not a line-by-line verification of the missing v2.2 artifact. Obtain that artifact before declaring full handoff reconciliation complete.

| Inventory item | Repository finding / placement | Action |
|---|---|---|
| September CIPN mouse study | Absent at baseline; emerging-research.html#cipn-preclinical-2026 | Added, distinctly labeled preclinical; mechanism and human-evidence boundary |
| FDA September hearing | Absent at baseline; emerging-research.html#fda-psychedelics-hearing-2026 | Added under regulatory status with hearing time and written-comment deadline |
| LADbible Jury Room | Already embedded at open-questions.html#drug-policy-jury-room, within #policy-access | Retained; explicit public-debate label and decriminalization/legal-supply distinction already fit request |
| EPIsoDE follow-up | emerging-research.html#depression-outcomes; references.txt | Present; no duplicate |
| Definium Phase 3 | Same section; NCT06941844 | Present as registry/company context |
| Nardou/Dolen critical period | emerging-research.html#plasticity-signals; references.txt | Present as animal evidence |
| MD Anderson oncology and NeuroGuard | emerging-research.html#active-trials; NCT06200155 and NCT07227909 | Present; retained separate from new mouse results |
| Ergothioneine / Nature Aging | emerging-research.html#brain-aging; references.txt | Present as observational association |
| Esketamine and access | emerging-research.html#regulatory-status | Existing label and federal/access categories present; not a complete timeline |
| Psilocybin/MDMA oligodendrocyte/myelin paper | No matching entry found in current HTML or bibliography | Backlog; recover exact paper and verify before adding |
| Adult neurogenesis vs plasticity explanation | Plasticity content exists; dedicated neurogenesis coverage not found | Backlog; avoid equating plasticity with new neurons |
| Lion's mane, reishi, cordyceps, haritaki | Functional-mushroom bridge exists; specific coverage not found | Backlog, separate from psychedelic evidence |
| COMP360 development | No matching named entry found | Backlog; verify current primary sources before adding |
| Earlier metabolism / 4-HIAA / MAO topics | Existing metabolism, recovery, open-question pages and grouped bibliography | Retained; no broad rewrite or fresh full scientific audit |
| Gray-market metocin / blue lotus | Explicitly deferred by user | No site material added |

## Source verification

FDA event page: hearing September 14, 2026, 12:30-4:30 p.m. ET; electronic comments due October 5, 2026, 11:59 p.m. ET. Page retrieved and dates verified September 7.

MD Anderson institutional report: September 3 mouse/preclinical findings, peripheral 5-HT2A involvement, pathway-blockade experiment, non-hallucinogenic agonist comparator, mitochondrial trafficking preservation. Page retrieved. Its Science link confirms DOI 10.1126/science.aec6116; Science returned HTTP 403 to the research browser. Full text, author list, doses, and sample sizes were not independently inspected and are not invented here.

LADbible existing video ID FGrahMCKQog was retained. YouTube retrieval returned a cache miss; playback and present availability were not verified. No new embed was added.

## Review and next steps

Review the two content blocks and bibliography additions. CSS, navigation, artwork, and existing discussion embeds are unchanged. No new dependencies or hosting configuration are needed for this static GitHub Pages site.

User approved using this rebuilt handoff and pushing the reviewed update. Preserve the update as a separate commit so it can be reverted without rewriting history. Once the complete v2.2 artifact is available, check its exact references against the backlog above.


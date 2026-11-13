# cx448 0.1.1 attribution basis

Practical notice collection is complete. The exact published Cargo.toml.orig
explicitly selects BSD-3-Clause. No separate LICENSE file was packaged or
present at its recorded source commit; that is a missing file, not evidence
that the express package licence declaration is absent.

COMPILED-REDISTRIBUTION-NOTICE.txt clearly identifies distributor-compiled
standard BSD terms and preserves every copyright line found in the package's
Rust sources. It acknowledges named historical authors without inventing dates
or claiming those acknowledgements were upstream copyright statements.

Historical source evidence:

- RustCrypto elliptic-curves PR 1121 head 363ed9dc5a8d2184d6e96927755c958ed7480e6b:
  ed448/Cargo.toml declares BSD-3-Clause; PR identifies Mikelodder7/Ed448-Goldilocks
  as the imported source. The PR was unmerged, so no merge commit is claimed.
- Mikelodder7/Ed448-Goldilocks 99e98c82e036981ce317184a53a30de45b5bd2a5,
  latest snapshot at/before PR creation, declares BSD-3-Clause.
- crate-crypto/x448 b134ae68d1181adc1b0f05eba6ccfdcc9c9905a4,
  snapshot before cx448's source commit, declares BSD-3-Clause.
- CRRL 4cc7cbbe8796ee8d459b815d81318603279879e4 predates cx448's source commit;
  its full MIT licence, including Thomas Pornin copyright, is retained.

Pinned files and hashes are recorded in cx448-historical-provenance.json at the
bundle root. Chronological snapshots corroborate the source-origin licence;
they are not asserted to be the exact copied commit where upstream gives none.
Current RustCrypto MIT/Apache texts are retained as earlier supplemental
research evidence only; they are not the basis for licensing the historical
BSD input. The actual historical BSD declarations are used instead.

Assumptions: ordinary reliance on the published maintainer licence declaration
and the identified upstream projects' authority over their contributions;
no undisclosed local source modifications; no contradictory grant or source
notice was found in this bounded inspection. No formal legal clearance or
exhaustive authorship audit is claimed. Missing physical LICENSE alone does
not require a waiver or a new publication blocker.

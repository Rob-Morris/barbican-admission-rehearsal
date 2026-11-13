# cfg-if 1.0.4 hosted rehearsal review

Exact crates.io archive SHA-256: `9330f8b2ff13f34540b44e946ef35111825727b38d33286ef986142615121801`.
This selection already appears in cargo-barbican's reviewed Phase0 product family.
The local cached manifest and complete src/lib.rs were read for this fixture.
The library is no_std and supplies a declarative cfg-selection macro. There is
no build script, procedural macro, native dependency or runtime I/O. The
optional rustc-dep-of-std feature/core dependency is not selected. The consumer
has no build script and its only test compares a constant platform string.
No advisory, age or executable-surface allowance is granted. The existing
7-day release-age policy and runtime scanners remain authoritative. Upstream
licensing is MIT OR Apache-2.0. This record covers the tiny consumer dependency,
not compiler acceptance, delegate provenance or binary redistribution.

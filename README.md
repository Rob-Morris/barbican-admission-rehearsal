# Barbican admission rehearsal

Isolated public test inputs for the maintainer-dispatched admission workflow. This is test infrastructure, not a product release or installation channel. Exact trusted prerequisite fixture hashes live in ci/provision-barbican.sh; notices and source-provenance limits are retained under notices/.

The controller must be dispatched deliberately from its reviewed immutable protected tag. It creates fresh private state and compares independently approved toolchain inputs before native installation or candidate Cargo. Candidate/base commit identities and real run outcomes will be recorded after the rehearsal. No automatic candidate-SHA merge check is claimed.

The provider retrieves exact qualified official Rustup 1.29.3 bytes from a fixed HTTPS archive URL, verifies the independently pinned size/hash, then creates independent multicall copies. It does not run an installer or probe a proposed compiler. Rustup is not republished here. HOME, TMPDIR and target are fresh private job directories; the generated controller supplies separate private Cargo/Rustup/data/cache roots.

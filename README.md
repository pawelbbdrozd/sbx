# sbx

Docker Sandboxes (`sbx`) kits, written against the kit spec v3 and published
to Docker Hub. Each kit is versioned and released on its own.

| Directory | What |
|---|---|
| `kits/` | Mixins, one directory per kit, named after it. |
| `workloads/` | Workloads and sets, one directory per kit, named after it. |
| `host/` | Units and scripts that run on the host, not in a sandbox. |
| `ci/` | Publishing script used by the release workflow. |

A kit directory holds `<name>.yaml`, optionally `<name>.dockerfile` and
`<name>-context.md`, a `README.md` and the `CHANGELOG.md` that release-please
writes.

No kits have been moved here yet; see "Adding a kit".


## Releases

Releases are made by [release-please](https://github.com/googleapis/release-please)
in monorepo mode, one package per kit.

1. Commits to `main` are Conventional Commits with the kit as scope
   (`fix(nvim): ...`). The commit type decides the version: `feat` is a minor,
   `fix` a patch, `!` or a `BREAKING CHANGE:` footer a major (a minor below
   1.0.0). Only commits touching a kit's directory count for that kit.
2. release-please keeps one release PR per kit open: the new `version:` in the
   descriptor, the changelog, the manifest entry.
3. Merging it creates the tag `<kit>/v<version>` and a GitHub Release.
4. The same workflow then builds the kit and pushes it to Docker Hub as
   `<namespace>/<kit>:<version>` (amd64 and arm64). A version that is already
   published is skipped.

PRs are squash-merged, so the PR title is the commit and must be a Conventional
Commit (checked by CI).

Repository settings the workflow needs:

| Kind | Name | What |
|---|---|---|
| variable | `DOCKERHUB_USERNAME` | Docker Hub login |
| variable | `DOCKERHUB_NAMESPACE` | Docker Hub namespace the kits are pushed to |
| secret | `DOCKERHUB_TOKEN` | Docker Hub access token with write access |
| setting | Actions > General > Workflow permissions | Read and write, and allow Actions to create pull requests |


## Adding a kit

In one PR per kit:

1. Copy the kit directory to `kits/<name>` or `workloads/<name>`. Drop its
   old `CHANGELOG.md`; release-please writes a new one.
2. Add it to `release-please-config.json` under `packages`
   (`"kits/<name>": {"component": "<name>", "extra-files": [{"type": "generic", "path": "<name>.yaml"}]}`),
   and mark the version lines of the descriptor with
   `# x-release-please-version`.
3. Add the kit's current version to `.release-please-manifest.json`, so the
   numbering continues.
4. Add it to the table in `AGENTS.md` if it needs a note.

Mixins first, then workloads, then sets, because a set pins the kits it
contains.

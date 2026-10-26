# AGENTS.md

Docker Sandboxes (`sbx`) kits written against the kit spec v3, published to
Docker Hub. `README.md` is the authoritative description of the layout and the
release process.


## Before editing a descriptor

- Load the `create-kit-v3` skill. Do not guess capability fields or versions.
- `kits/` holds only mixins, `workloads/` only workloads and sets. One directory
  per kit, named after it; its files are `<name>.yaml` plus, when needed,
  `<name>.dockerfile` and `<name>-context.md`.
- `sbx kit validate` rejects v3 source kits. A kit is tested by building it
  (`docker buildx build . -f <name>.yaml` in the kit directory) or by creating a
  sandbox from a set that references it by local path.


## Versions

- Never edit a kit's `version`, `provides`, `CHANGELOG.md` or the manifest by
  hand. release-please does it in the release PR of the kit.
- The tool a kit packages is a different version: bump the version arg default
  in the `.yaml` and the matching `SHA256_*` / `SHA512_*` build args in the
  `.dockerfile` together, in one commit.
- No secrets in kits. Secrets and bindings belong to each project's
  `sbxenv.yaml`.


## Commits and tracker

- Conventional Commits, the kit name as scope: `fix(nvim): ...`; `feat(kits): ...`
  for a change across kits. The type decides the version, so choose it for the
  effect in the sandbox: `feat` for new behavior, `fix` for a fix, `!` for a
  breaking change. `docs`, `chore`, `ci` and `refactor` release nothing.
- A change touching two kits is released for both.
- Tracker: GitHub issues, pull requests as drafts, squash-merged.

# NexGuard

NexGuard is a modular security platform currently in development.  
The project aims to integrate a SIEM system (Wazuh + ELK), AI-based threat analysis, and a SOAR automation layer in a scalable, modular architecture.

NexGuard/
├── services/ # Core modules: siem, ai, soar, utils
├── deployments/ # Deployment configs (Docker, K8s)
├── configs/ # Shared configs, env templates
├── scripts/ # Dev/ops scripts
├── tests/ # Integration/system tests
├── docs/ # Documentation, diagrams, setup guides
└── .github/ # Templates, CI/CD workflows, CODEOWNERS

## Branch Strategy

- `main`: Stable, production-ready code
- `develop`: Active development
- `feature/<service>-<feature>`: Feature branches
- `hotfix/<service>-<issue>`: Urgent fixes

---

## Contribution Guidelines

- Use **feature branches** for new work.
- PRs must follow the **Pull Request Template**.
- All PRs require at least **one review**.
- Commit messages follow conventional format:

  feat: new feature
  fix: bug fix
  docs: documentation
  chore: setup/config

## Getting Started (Development)

1. Clone the repo:

```bash
git clone https://github.com/<your-org>/NexGuard.git
cd NexGuard
git checkout develop
```

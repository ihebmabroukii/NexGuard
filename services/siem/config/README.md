# SIEM Config Folder

This folder contains all configuration files for the SIEM module (Wazuh + ELK).

---

## Structure

config/
├── logstash/
│ └── wazuh.conf # Logstash pipeline for Wazuh logs
├── ossec.conf # (Optional) Wazuh manager configuration
└── rules/ # Custom Wazuh rules

## Notes

- **logstash/wazuh.conf**  
  Processes logs from Wazuh agents and sends them to Elasticsearch.  
  You can add or modify filters here for development.

- **ossec.conf**  
  Optional. Overrides Wazuh manager default settings.

- **rules/**  
  Store custom rules for detection, alerting, and event correlation.

---

### Best Practices

- Do **not commit sensitive information** (use `.env` for secrets).
- Keep the folder organized per service to simplify debugging.
- Any changes should be tested locally using the `dev-up.ps1` script before pushing.

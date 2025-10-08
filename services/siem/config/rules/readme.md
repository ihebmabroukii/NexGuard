# NexGuard SIEM Rules Folder

This folder contains custom Wazuh rules for the NexGuard SIEM module.

## Files:

- 010-global_rules.xml: common/general rules
- 100-mitre-attack-rules.xml: rules mapped to MITRE ATT&CK techniques

## Usage:

1. Rules are automatically loaded by Wazuh Manager.
2. You can add new MITRE ATT&CK rules here for any log pattern.
3. Restart Wazuh manager (or reload rules) after updates:
   ```bash
   wazuh-control restart
   ```

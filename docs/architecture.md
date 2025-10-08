# NexGuard — Architecture (SIEM Module)

This document explains the architecture of the SIEM module in NexGuard.

---

## Components

1. **Wazuh Manager**

   - Collects logs from agents.
   - Monitors host activity and alerts on suspicious behavior.
   - Sends data to Logstash.

2. **Logstash**

   - Processes and transforms logs from Wazuh.
   - Applies filters and grok rules.
   - Forwards logs to Elasticsearch.

3. **Elasticsearch**

   - Stores processed logs.
   - Provides fast search and analytics.

4. **Kibana**
   - Visualizes logs and alerts.
   - Dashboard for monitoring security events.

---

## Data Flow Diagram

[Wazuh Agents] --> [Wazuh Manager] --> [Logstash] --> [Elasticsearch] --> [Kibana]

- Wazuh Manager receives logs from agents.
- Logstash processes them and pushes to Elasticsearch.
- Kibana visualizes the logs.
- Future AI / SOAR services will consume data from Elasticsearch to perform analysis and automate responses.

---

## Notes

- This setup is for **development purposes**.
- Production will require **TLS, authentication, scaling, and backup strategies**.
- Configuration files are located in `services/siem/config/`.
- Docker Compose for development is in `deployments/docker/siem/docker-compose.yml`.

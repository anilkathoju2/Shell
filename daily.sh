#!/bin/bash
# DevOps Engineer Daily Routine (Fun Version)

day=1

while [ $day -le 1 ]   # repeat for 1 day (can extend for more days)
do
    echo "---- DevOps Engineer Daily Routine ----"

    echo "1. Check emails and Slack alerts"
    echo "2. Review overnight monitoring/alerts (Nagios, Prometheus, CloudWatch)"
    echo "3. Stand-up meeting with the team"
    echo "4. Work on automation tasks (scripts, Ansible, Terraform)"
    echo "5. Check CI/CD pipeline (Jenkins/GitHub Actions) builds"
    echo "6. Debug and fix failed deployments"
    echo "7. Review and merge pull requests"
    echo "8. Optimize infrastructure (scaling, cost checks, configs)"
    echo "9. End-of-day checks: monitoring dashboards, logs"
    echo "10. Document changes"

    echo "---- Day $day completed ----"
    echo
    day=$((day+1))
done


# Vulnerabilities Assessment Discovery

This assessment list some vulnerabilities that the framework could be exposed.

## [Initial Access](https://attack.mitre.org/tactics/TA0001)

### [T1195: Supply Chain Compromise](https://attack.mitre.org/techniques/T1195/)

**Prevention:**

- Use checksum for dependencies installation
- Monitor dependencies for know vulnerabilities

### [T1195.001: Supply Chain Compromise: Compromise Software Dependencies and Development Tools](https://attack.mitre.org/techniques/T1195/001/)

**Prevention:**

- Avoid put IDE configurations in the framework source code
- Check if internal and external support tools was compromised.
- Disable 'os' modules
- Use Python Audit features to block untrusted operations.

## [Execution](https://attack.mitre.org/tactics/TA0002/)

### [T1059.006: Command and Scripting Interpreter: Python](https://attack.mitre.org/techniques/T1059/006/)

**Prevention:**

- Avoid binary installations in dependencies
- Use Apparmor profiles to avoid binary execution

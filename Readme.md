## Code-Challenge
In der Wordfile Documentation.docx befinden sich die Screenshots für die Implementierungen der Aufgabenstellungen.

## Welche Metriken?
Man kann den memory überprüfen (heap alloc,heap idle), readiness probes durchführen etc.

## Welches CI/CD Tool?
ArgoCD setzt sich gerade im Kubernetes umfeld durch. Vorteile: Blue green deployment, automatisierte Rollbacks, weighted traffic shifting etc.

## Ingress Controller?
Ich habe meistens Elastic Balancer in Kombination mit Istio verwendet, um meinen Service öffentlich erreichbar zu machen.

## Secrets speichern?
Ich persönlich habe immer den AWS Secrets Manager mit EKS verwendet.

## Secrets erkennen.
Ich kann nur eine Lösung in AWS vorschlagen.
CodeGuru ist neuer Service von AWS der Secrets im Quellcode erkennt. Er erkennt nicht nur das, sonder auch fehlerhafter Code -> Falsche Verwendung von Krypto-Bibs etc.
Falls Secret erkannt wird: https://aws.amazon.com/blogs/aws/codeguru-reviewer-secrets-detector-identify-hardcoded-secrets/



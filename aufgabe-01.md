# Praxis: Github Actions

1. **CI/CD Konzepte:**
   - Erkläre den Unterschied zwischen kontinuierlicher Integration (CI) und kontinuierlicher Bereitstellung (CD).
      - CI steht für kontinuierliche Integration, eine grundlegende DevOps-Best Practice, bei der Entwickler häufig Codeänderungen in ein zentrales Repository zusammenführen, in dem automatisierte Builds und Tests ausgeführt werden. Entwickler, die kontinuierliche Integration praktizieren, führen ihre Änderungen so oft wie möglich in den Hauptzweig zurück. Die Änderungen des Entwicklers werden validiert, indem ein Build erstellt und automatisierte Tests gegen den Build ausgeführt werden. Durch diese Praxis können Integrationsherausforderungen vermieden werden, die auftreten können, wenn man bis zum Veröffentlichungstag wartet, um Änderungen in den Veröffentlichungszweig zusammenzuführen.
      - CD kann entweder kontinuierliche Bereitstellung oder kontinuierliche Bereitstellung bedeuten. Bei der kontinuierlichen Bereitstellung wird jeder Code, der alle Stufen Ihrer Produktionspipeline besteht, Ihren Kunden zur Verfügung gestellt. Es gibt keine menschliche Intervention, und nur ein fehlgeschlagener Test verhindert, dass eine neue Änderung in die Produktion implementiert wird.

   - Warum ist automatisierte CI/CD-Integration wichtig?
      - Die automatisierte CI/CD-Integration ist wichtig, weil sie die Geschwindigkeit und Zuverlässigkeit der Codebereitstellung erhöht. Teams, die CI/CD beherrschen, setzen 208-mal   häufiger ein und haben eine Vorlaufzeit, die 106-mal schneller ist als der Rest. Während eine schnellere Entwicklung der bekannteste Vorteil von CI/CD ist, ermöglicht eine kontinuierliche Integrations- und Bereitstellungspipeline noch viel mehr. Beispielsweise ermöglicht das kontinuierliche Feedback den Entwicklern, kleinere Änderungen häufiger zu übernehmen, anstatt auf eine einzige Freigabe zu warten.

2. **GitHub Actions Workflow:**
   - Was ist ein GitHub Actions Workflow?
   Ein GitHub Actions Workflow ist eine automatisierte Prozedur, die Sie in Ihrem GitHub-Repository einrichten können.
   - Workflows bestehen aus einem oder mehreren Jobs, die sequentiell oder parallel ausgeführt werden können.
   - Jeder Job läuft auf einem eigenen Runner und besteht aus einem oder mehreren Schritten.
   - Workflows werden in YAML-Dateien definiert und im .github/workflows Verzeichnis Ihres Repositorys gespeichert.
   - Workflows können durch verschiedene Ereignisse ausgelöst werden, wie z.B. einem Push in das Repository, das Erstellen einer Pull-Anfrage oder das Planen eines Ereignisses zu einem bestimmten Zeitpunkt.
   - Mit GitHub Actions können Sie Ihre Softwareentwicklungs-Workflows automatisieren, anpassen und direkt in Ihrem Repository ausführen.

3. **Workflow Datei (YAML):**
   - Erkläre die grundlegende Struktur einer GitHub Actions Workflow-Datei (YAML).
   - Welche Schlüsselwörter werden in der Workflow-Datei verwendet?
   Die grundlegende Struktur einer GitHub Actions Workflow-Datei (YAML) besteht aus mehreren Schlüsselwörtern und Abschnitten, die verschiedene Aspekte des Workflows definieren:

      - name: Der Name des Workflows, der in der GitHub-Benutzeroberfläche angezeigt wird 4.
      - on: Dies definiert das Ereignis, das den Workflow auslöst. Es kann sich um ein GitHub-Ereignis (wie push, pull_request) oder ein geplantes Ereignis (wie schedule) handeln 1.
      - env: Hier können Sie Umgebungsvariablen auf Workflow-Ebene festlegen 3.
      - jobs: Dieser Abschnitt definiert die Jobs, die in Ihrem Workflow ausgeführt werden. Jeder Job hat einen eindeutigen ID-Namen und besteht aus einer Reihe von Schritten 1.
   
   Innerhalb des jobs-Abschnitts gibt es weitere Schlüsselwörter:

      - runs-on: Dies gibt an, auf welchem Betriebssystem der Job ausgeführt werden soll.
      - steps: Dieser Abschnitt definiert die Schritte, die in einem Job ausgeführt werden. Jeder Schritt kann einen Shell-Befehl ausführen (run) oder eine Aktion ausführen (uses).
      - if: Mit diesem Schlüsselwort können Sie Bedingungen festlegen, unter denen ein Schritt ausgeführt wird.
      - name: Der Name des Schritts, der in der GitHub-Benutzeroberfläche angezeigt wird.
      - with: Hier können Sie die Eingaben für eine Aktion festlegen.
      - env: Hier können Sie Umgebungsvariablen auf Schrittebene festlegen.
      - continue-on-error: Dieses Schlüsselwort verhindert, dass ein Job fehlschlägt, wenn ein Schritt fehlschlägt.
      - needs: Mit diesem Schlüsselwort können Sie angeben, dass ein Job von einem oder mehreren anderen Jobs abhängt.
   

4. **Unit Testing in React:**
   - Warum sind Unit-Tests in React-Anwendungen wichtig?
   Unit-Tests sind in React-Anwendungen aus mehreren Gründen wichtig:

      1. Fehler frühzeitig erkennen: Unit-Tests ermöglichen es Ihnen, Fehler und Probleme in Ihrer Anwendung frühzeitig zu erkennen, bevor sie in die Produktion gelangen.
      2. Sicherstellung der korrekten Funktionalität: Durch das Testen einzelner Funktionen oder Komponenten können Sie sicherstellen, dass sie so funktionieren, wie sie sollen.
      3. Vereinfachung der Refaktorisierung: Mit Unit-Tests können Sie Ihren Code sicher refaktorisieren, da Sie schnell feststellen können, ob die Änderungen das erwartete Verhalten der Funktionen oder Komponenten beeinflusst haben.
      4. Verbesserung der Codequalität: Unit-Tests zwingen Entwickler dazu, kleineren, besser strukturierten und leichter wartbaren Code zu schreiben.

   - Wie führt man Unit-Tests in einer React-Anwendung aus?
      1.Einrichten der Testumgebung: Installieren und konfigurieren Sie Ihre Testbibliotheken. Jest und React Testing Library sind weit verbreitet und gut dokumentiert.
      2. Schreiben der Tests: Schreiben Sie Testfälle für Ihre Komponenten oder Funktionen. In jedem Testfall rendern Sie eine Komponente oder rufen eine Funktion mit bestimmten Eingabewerten auf und überprüfen dann das Ergebnis. 
      3. Ausführen der Tests: Führen Sie Ihre Tests aus, indem Sie den Testbefehl in Ihrer Konsole ausführen (z.B. npm test oder yarn test). Jest wird die Tests finden und ausführen und dann einen Bericht mit den Ergebnissen ausgeben.

5. **AWS CLI Profil:**
   - Wie überprüft man vorhandene AWS CLI-Profile?

6. **AWS S3-Bucket mit Terraform:**
   - Welche Konfigurationen sind für die AWS S3-Website notwendig?

7. **GitHub Actions und AWS-Keys:**
    - Warum ist es wichtig, AWS-Keys sicher zu behandeln?
    - Wie fügt man AWS-Keys als Secrets in einem GitHub Repository hinzu?

8. **GitHub Actions und Node.js:**
    - Wie wird Node.js in einem GitHub Actions Workflow verwendet?

9. **Terraform-Version in GitHub Actions:**
    - Wie installiert man die richtige Terraform-Version in einem GitHub Actions Workflow?

10. **GitHub Actions - Terraform Init und Apply:**
    - Wie führt man `terraform apply` in einem Workflow aus?

11. **AWS S3-Bucket Deployment:**
    - Welchen Befehl verwendet man, um Dateien in ein S3-Bucket zu synchronisieren?

12. **GitHub Actions - Verwendung von Aktionen:**
    - Wie verwendet man eine externe Aktion in einem GitHub Actions Workflow?
    - Wo findet man eine Sammlung von Aktionen die von anderen Usern definiert wurden?
    - Gibt es bestimmte Aktionen, die häufig in CI/CD-Workflows verwendet werden?

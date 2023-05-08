Invariant: inv1 //invariatn definitiona
Description: "Birthdate can not be in the future"
Expression: "/f:Patient/f:birthDate &lt;=current-date()" //this is what makes the definition recognizable/parsable by fhir; f: namespace shortcut
Severity: #error
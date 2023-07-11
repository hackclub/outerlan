{
    "subject": {{ toJson .Subject }},
    "keyUsage": ["certSign", "crlSign"],
    "basicConstraints": {
        "isCA": true,
        "maxPathLen": 0
    },
    "nameConstraints": {
        "critical": true,
        "permittedDNSDomains": [".outernet"]
    },
    "ocspServer": "http://ocsp.ca.outernet",
    "crlDistributionPoints":
      ["http://crl.ca.outernet/crl/ca.crl"]
}

{
	"subject": {{ toJson .Subject }},
	"issuer": {{ toJson .Subject }},
	"keyUsage": ["certSign", "crlSign"],
	"basicConstraints": {
		"isCA": true,
		"maxPathLen": 1
	},
	"ocspServer": "http://ocsp.ca.outernet",
 	"crlDistributionPoints":
          ["http://crl.ca.outernet/crl/ca.crl"]
        },
}

accessing
url
	"url to submit to"
	^self attributes at: 'action' ifAbsent: [nil].  
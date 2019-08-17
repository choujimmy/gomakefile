package version

var (
	// GitVersion is semantic version.
	GitVersion = "v0.0.0-master+$Format:%h$"
	// BuildDate in ISO8601 format, output of $(date -u +'%Y-%m-%dT%H:%M:%SZ')
	BuildDate = "1970-01-01T00:00:00Z"
)

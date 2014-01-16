application=
{
	description="FLV Playback Sample",
	name="flvplayback",
	protocol="dynamiclinklibrary",
	mediaFolder="/mnt/buffer",
	aliases=
	{
		"simpleLive",
		"vod",
		"live",
		"WeeklyQuest",
		"SOSample",
		"oflaDemo",
	},
	acceptors =
	{
		{
			ip="0.0.0.0",
			port=6666,
			protocol="inboundLiveFlv",
			waitForMetadata=true,
		},
		{
			ip="0.0.0.0",
			port=9999,
			protocol="inboundTcpTs"
		},
		--[[{
			ip="0.0.0.0",
			port=7654,
			protocol="inboundRawHttpStream",
			crossDomainFile="/tmp/crossdomain.xml"
		},
		{
			ip="0.0.0.0",
			port=554,
			protocol="inboundRtsp"
		},]]--
	},
	validateHandshake=false,
	keyframeSeek=true,
	seekGranularity=1.5, --in seconds, between 0.1 and 600
	clientSideBuffer=12, --in seconds, between 5 and 30
	--generateMetaFiles=true, --this will generate seek/meta files on application startup
	--renameBadFiles=false,
	--enableCheckBandwidth=true
}


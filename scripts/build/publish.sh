#!/bin/sh

# no relation to publish.go

# shellcheck disable=SC2124

EXTRA_OPTS="$@"

# Right now we hack this in into the publish script.
# Eventually we might want to keep a list of all previous releases somewhere.
_releaseNoteUrl="https://community.grafana.com/t/release-notes-v6-0-x/14010"
_whatsNewUrl="http://docs.grafana.org/guides/whats-new-in-v6-0/"

./scripts/build/release_publisher/release_publisher \
    --wn "${_whatsNewUrl}" \
    --rn "${_releaseNoteUrl}" \
    --version "${CIRCLE_TAG}" \
    --apikey  "${GRAFANA_COM_API_KEY}" "${EXTRA_OPTS}"

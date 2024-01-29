# PLUGIN Implementation Guide

## Getting started (with contributions to this IG)

### Step 1 - Install required software
This project uses [FSH](https://hl7.org/fhir/uv/shorthand/) and [sushi](https://fshschool.org/docs/sushi/). Therefore, it requires [Node.js](https://nodejs.org/en). The [IG Publisher](https://confluence.hl7.org/display/FHIR/IG+Publisher+Documentation) additionally requires Java to be present on the system.

Installing sushi is detailed [here](https://fshschool.org/docs/sushi/installation/). The following command might be sufficient:

```bash
npm install fsh-sushi
```

### Step 2 - Clone the repo, and initialize publishers.

```bash
git clone https://github.com/plugin-healthcare/implementation-guide.git

cd implementation-guide

# Adding executable permissions may or may not be required
chmod +x _updatePublisher.sh

# Install/update the Implementation Guide publisher.
./_updatePublisher.sh
```

### Step 3 - Compile the IG

```bash
# Adding executable permissions may or may not be required
chmod +x _genonce.sh

# Run the sushi and subsequently the IG Publisher.
./_genonce.sh
```

## Troubleshooting

If sushi complains about snapshots ("Structure Definition http://nictiz.nl/fhir/StructureDefinition/nl-core-Patient is missing a snapshot. Snapshot is required for import."), please follow these steps:

1. Download the package [nictiz.fhir.nl.r4.nl-core](https://simplifier.net/packages/nictiz.fhir.nl.r4.nl-core) **with snapshots** from Simplifier.
2. Overwrite the contents of `~/.fhir/packages/nictiz.fhir.nl.r4.nl-core#0.10.0/package` with the contents of the downloaded `tgz`.
3. Re-run `sushi`.

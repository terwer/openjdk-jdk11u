openjdk-jdk11u
==============

# Get the complete source code
```bash
git clone https://github.com/terwer/openjdk-jdk11u.git
```

# Build
```bash
./make.sh
```

# Run
`make images`

# Verify your newly built JDK
`./build/*/images/jdk/bin/java -version`

# Run basic tests
`make run-test-tier1`
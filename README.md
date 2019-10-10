# EvrLogger
[![Build Status](https://travis-ci.com/necatievrenyasar/EvrLogger.svg?branch=master)](https://travis-ci.com/necatievrenyasar/EvrLogger)

Provides a lightweight logging implementation for Swift which logs to standard output.


## Usage

#### Add dependencies

Add the `EvrLogger` package to the dependencies within your application’s `Package.swift` file. Substitute `"x.x.x"` with the latest `EvrLooger` [release](github.com/necatievrenyasar/EvrLogger/releases).

```swift
.package(url: "github.com/necatievrenyasar/EvrLogger.git", from: "x.x.x")
```

Add `EvrLogger` to your target's dependencies:

```swift
.target(name: "example", dependencies: ["EvrLogger"]),
```

#### Import packages

To use with EvrLogger:

```swift
import EvrLogger
```

#### Initialize EvrLogger

To use EvrLogger as a logging, you must create Global variable in your project. We suggest that variable name is `Log`:

```swift
let Log = EvrLogger()
```

#### Usage

```swift
Log.d("Write something")
```


#### Logging levels
 
 You will see output of that level, and all levels below that.
 
 1. d (Debug)
 2. e (Error)
 3. i (Info)

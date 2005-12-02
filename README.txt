The Linux Standard Base (LSB) defines a system interface for compiled
applications and a minimal environment for support of installation
scripts. Its purpose is to enable a uniform industry standard environment
for high-volume applications conforming to the LSB.

These specifications are composed of two basic parts: A common
specification ("LSB-generic" or "generic LSB"), ISO/IEC 23360 Part 1,
describing those parts of the interface that remain constant across
all implementations of the LSB, and an architecture-specific part
("LSB-arch" or "archLSB") describing the parts of the interface that vary
by processor architecture. Together, the LSB-generic and the relevant
architecture-specific part of ISO/IEC 23360 for a single hardware
architecture provide a complete interface specification for compiled
application programs on systems that share a common hardware architecture.

ISO/IEC 23360 Part 1, the LSB-generic document, shall be used in
conjunction with an architecture-specific part. Whenever a section of the
LSB-generic specification shall be supplemented by architecture-specific
information, the LSB-generic document includes a reference to the
architecture part. Architecture-specific parts of ISO/IEC 23360 may also
contain additional information that is not referenced in the LSB-generic
document.

The LSB contains both a set of Application Program Interfaces (APIs) and
Application Binary Interfaces (ABIs). APIs may appear in the source code
of portable applications, while the compiled binary of that application
may use the larger set of ABIs. A conforming implementation shall provide
all of the ABIs listed here. The compilation system may replace (e.g. by
macro definition) certain APIs with calls to one or more of the underlying
binary interfaces, and may insert calls to binary interfaces as needed.

The LSB is primarily a binary interface definition. Not all of the
source level APIs available to applications may be contained in this
specification.

This CD contains 8 parts of ISO/IEC 23360:
Part 1: Generic Specification
Part 2: Specification for IA32 architecture
Part 3: Specification for IA64 architecture
Part 4: Specification for AMD64 architecture
Part 5: Specification for PPC32 architecture
Part 6: Specification for PPC64 architecture
Part 7: Specification for S390 architecture
Part 8: Specification for S390X architecture

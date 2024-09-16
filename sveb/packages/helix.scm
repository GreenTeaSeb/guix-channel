;;; Copyright © 2024 Murilo <murilo@disroot.org>
;;;
;;; This file is NOT part of GNU Guix.

(define-module (sveb packages helix)
  #:use-module ((guix licenses)
                #:prefix license:)
  #:use-module (gnu packages crates-apple)
  #:use-module (gnu packages crates-crypto)
  #:use-module (gnu packages crates-io)
  #:use-module (gnu packages crates-vcs)
  #:use-module (gnu packages crates-web)
  #:use-module (gnu packages crates-windows)
  #:use-module (gnu packages version-control)
  #:use-module (guix build-system cargo)
  #:use-module (guix download)
  #:use-module (guix gexp)
  #:use-module (guix git-download)
  #:use-module (guix packages)
  #:use-module (srfi srfi-1))

(define rust-addr2line-0.20
  (package
    (name "rust-addr2line")
    (version "0.20.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "addr2line" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1qv590hm40lz2q77p7s3lghaa5gdbrxcvpiaj1gf1z34ikhpiypl"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-gimli" ,rust-gimli-0.27))))
    (home-page "https://github.com/gimli-rs/addr2line")
    (synopsis
     "cross-platform symbolication library written in Rust, using `gimli`")
    (description
     "This package provides a cross-platform symbolication library written in Rust,
using `gimli`.")
    (license (list license:asl2.0 license:expat))))

(define rust-ahash-0.8
  (package
    (name "rust-ahash")
    (version "0.8.11")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "ahash" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "04chdfkls5xmhp1d48gnjsmglbqibizs3bpbj6rsj604m10si7g8"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-cfg-if" ,rust-cfg-if-1)
                       ("rust-getrandom" ,rust-getrandom-0.2)
                       ("rust-once-cell" ,rust-once-cell-1)
                       ("rust-version-check" ,rust-version-check-0.9)
                       ("rust-zerocopy" ,rust-zerocopy-0.7))))
    (home-page "https://github.com/tkaitchuck/ahash")
    (synopsis
     "non-cryptographic hash function using AES-NI for high performance")
    (description
     "This package provides a non-cryptographic hash function using AES-NI for high
performance.")
    (license (list license:expat license:asl2.0))))

(define rust-arc-swap-1
  (package
    (name "rust-arc-swap")
    (version "1.7.1")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "arc-swap" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0mrl9a9r9p9bln74q6aszvf22q1ijiw089jkrmabfqkbj31zixv9"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t))
    (home-page "https://github.com/vorner/arc-swap")
    (synopsis "Atomically swappable Arc")
    (description "This package provides Atomically swappable Arc.")
    (license (list license:expat license:asl2.0))))

(define rust-bitflags-2
  (package
    (name "rust-bitflags")
    (version "2.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "bitflags" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1pkidwzn3hnxlsl8zizh0bncgbjnw7c41cx7bby26ncbzmiznj5h"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t))
    (home-page "https://github.com/bitflags/bitflags")
    (synopsis "macro to generate structures which behave like bitflags.")
    (description
     "This package provides a macro to generate structures which behave like bitflags.")
    (license (list license:expat license:asl2.0))))

(define rust-cc-1
  (package
    (name "rust-cc")
    (version "1.0.106")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "cc" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "18hr0xnyi46ap1b9gzlnj658092afafy12cffppsykhxgclcwvq6"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t))
    (home-page "https://github.com/rust-lang/cc-rs")
    (synopsis
     "build-time dependency for Cargo build scripts to assist in invoking the native
C compiler to compile native C code into a static archive to be linked into Rust
code.")
    (description
     "This package provides a build-time dependency for Cargo build scripts to assist
in invoking the native C compiler to compile native C code into a static archive
to be linked into Rust code.")
    (license (list license:expat license:asl2.0))))

(define rust-chrono-0.4
  (package
    (name "rust-chrono")
    (version "0.4.38")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "chrono" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "009l8vc5p8750vn02z30mblg4pv2qhkbfizhfwmzc6vpy5nr67x2"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-android-tzdata" ,rust-android-tzdata-0.1)
                       ("rust-iana-time-zone" ,rust-iana-time-zone-0.1)
                       ("rust-num-traits" ,rust-num-traits-0.2)
                       ("rust-windows-targets" ,rust-windows-targets-0.52))))
    (home-page "https://github.com/chronotope/chrono")
    (synopsis "Date and time library for Rust")
    (description "This package provides Date and time library for Rust.")
    (license (list license:expat license:asl2.0))))

(define rust-clipboard-win-5
  (package
    (name "rust-clipboard-win")
    (version "5.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "clipboard-win" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "14n87fc0vzbd0wdhqzvcs1lqgafsncplzcanhpik93xhhalfgvqm"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-error-code" ,rust-error-code-3))))
    (home-page "https://github.com/DoumanAsh/clipboard-win")
    (synopsis "Provides simple way to interact with Windows clipboard")
    (description
     "This package provides simple way to interact with Windows clipboard.")
    (license license:boost1.0)))

(define rust-cov-mark-1
  (package
    (name "rust-cov-mark")
    (version "1.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "cov-mark" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1wv75ylrai556m388a40d50fxiyacmvm6qqz6va6qf1q04z3vylz"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t))
    (home-page "https://github.com/matklad/cov-mark")
    (synopsis "Manual coverage marks")
    (description "This package provides Manual coverage marks.")
    (license (list license:expat license:asl2.0))))

(define rust-deranged-0.3
  (package
    (name "rust-deranged")
    (version "0.3.11")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "deranged" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1d1ibqqnr5qdrpw8rclwrf1myn3wf0dygl04idf4j2s49ah6yaxl"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-powerfmt" ,rust-powerfmt-0.2))))
    (home-page "https://github.com/jhpratt/deranged")
    (synopsis "Ranged integers")
    (description "This package provides Ranged integers.")
    (license (list license:expat license:asl2.0))))

(define rust-encoding-rs-0.8
  (package
    (name "rust-encoding-rs")
    (version "0.8.34")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "encoding_rs" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0nagpi1rjqdpvakymwmnlxzq908ncg868lml5b70n08bm82fjpdl"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-cfg-if" ,rust-cfg-if-1))))
    (home-page "https://docs.rs/encoding_rs/")
    (synopsis "Gecko-oriented implementation of the Encoding Standard")
    (description
     "This package provides a Gecko-oriented implementation of the Encoding Standard.")
    (license (list license:bsd-3))))

(define rust-fastrand-2
  (package
    (name "rust-fastrand")
    (version "2.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "fastrand" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "06p5d0rxq7by260m4ym9ial0bwgi0v42lrvhl6nm2g7h0h2m3h4z"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t))
    (home-page "https://github.com/smol-rs/fastrand")
    (synopsis "simple and fast random number generator")
    (description
     "This package provides a simple and fast random number generator.")
    (license (list license:asl2.0 license:expat))))

(define rust-gimli-0.27
  (package
    (name "rust-gimli")
    (version "0.27.3")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "gimli" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0bpdnkyzi3vp2r0wglwrncbk451zhp46mdl83f6xj4gsmy20kj5n"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t))
    (home-page "https://github.com/gimli-rs/gimli")
    (synopsis "library for reading and writing the DWARF debugging format.")
    (description
     "This package provides a library for reading and writing the DWARF debugging
format.")
    (license (list license:expat license:asl2.0))))

(define rust-gix-0.63
  (package
    (name "rust-gix")
    (version "0.63.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "gix" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "01jbkflpr570inbdjv1xgfsimqf6xfrr0yg6mlv4aypsmlc50k4q"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-gix-actor" ,rust-gix-actor-0.31)
                       ("rust-gix-attributes" ,rust-gix-attributes-0.22)
                       ("rust-gix-command" ,rust-gix-command-0.3)
                       ("rust-gix-commitgraph" ,rust-gix-commitgraph-0.24)
                       ("rust-gix-config" ,rust-gix-config-0.37)
                       ("rust-gix-date" ,rust-gix-date-0.8)
                       ("rust-gix-diff" ,rust-gix-diff-0.44)
                       ("rust-gix-dir" ,rust-gix-dir-0.5)
                       ("rust-gix-discover" ,rust-gix-discover-0.32)
                       ("rust-gix-features" ,rust-gix-features-0.38)
                       ("rust-gix-filter" ,rust-gix-filter-0.11)
                       ("rust-gix-fs" ,rust-gix-fs-0.11)
                       ("rust-gix-glob" ,rust-gix-glob-0.16)
                       ("rust-gix-hash" ,rust-gix-hash-0.14)
                       ("rust-gix-hashtable" ,rust-gix-hashtable-0.5)
                       ("rust-gix-ignore" ,rust-gix-ignore-0.11)
                       ("rust-gix-index" ,rust-gix-index-0.33)
                       ("rust-gix-lock" ,rust-gix-lock-14)
                       ("rust-gix-macros" ,rust-gix-macros-0.1)
                       ("rust-gix-object" ,rust-gix-object-0.42)
                       ("rust-gix-odb" ,rust-gix-odb-0.61)
                       ("rust-gix-pack" ,rust-gix-pack-0.51)
                       ("rust-gix-path" ,rust-gix-path-0.10)
                       ("rust-gix-pathspec" ,rust-gix-pathspec-0.7)
                       ("rust-gix-ref" ,rust-gix-ref-0.44)
                       ("rust-gix-refspec" ,rust-gix-refspec-0.23)
                       ("rust-gix-revision" ,rust-gix-revision-0.27)
                       ("rust-gix-revwalk" ,rust-gix-revwalk-0.13)
                       ("rust-gix-sec" ,rust-gix-sec-0.10)
                       ("rust-gix-status" ,rust-gix-status-0.10)
                       ("rust-gix-submodule" ,rust-gix-submodule-0.11)
                       ("rust-gix-tempfile" ,rust-gix-tempfile-14)
                       ("rust-gix-trace" ,rust-gix-trace-0.1)
                       ("rust-gix-traverse" ,rust-gix-traverse-0.39)
                       ("rust-gix-url" ,rust-gix-url-0.27)
                       ("rust-gix-utils" ,rust-gix-utils-0.1)
                       ("rust-gix-validate" ,rust-gix-validate-0.8)
                       ("rust-gix-worktree" ,rust-gix-worktree-0.34)
                       ("rust-once-cell" ,rust-once-cell-1)
                       ("rust-parking-lot" ,rust-parking-lot-0.12)
                       ("rust-smallvec" ,rust-smallvec-1)
                       ("rust-thiserror" ,rust-thiserror-1))))
    (home-page "https://github.com/Byron/gitoxide")
    (synopsis "Interact with git repositories just like git would")
    (description
     "This package provides Interact with git repositories just like git would.")
    (license (list license:expat license:asl2.0))))

(define rust-gix-actor-0.31
  (package
    (name "rust-gix-actor")
    (version "0.31.2")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "gix-actor" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0zydagiaxww9g5l5fhrbyd2yj3yzss4n1zdnhm1wkrn7jb9mk76n"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-bstr" ,rust-bstr-1)
                       ("rust-gix-date" ,rust-gix-date-0.8)
                       ("rust-gix-utils" ,rust-gix-utils-0.1)
                       ("rust-itoa" ,rust-itoa-1)
                       ("rust-thiserror" ,rust-thiserror-1)
                       ("rust-winnow" ,rust-winnow-0.6))))
    (home-page "https://github.com/Byron/gitoxide")
    (synopsis "way to identify git actors")
    (description "This package provides a way to identify git actors.")
    (license (list license:expat license:asl2.0))))

(define rust-gix-attributes-0.22
  (package
    (name "rust-gix-attributes")
    (version "0.22.2")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "gix-attributes" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1j7cyx9vkffw8ln7dvc9jmx1rgiixia9mx130156l4xc5vs4iyzf"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-bstr" ,rust-bstr-1)
                       ("rust-gix-glob" ,rust-gix-glob-0.16)
                       ("rust-gix-path" ,rust-gix-path-0.10)
                       ("rust-gix-quote" ,rust-gix-quote-0.4)
                       ("rust-gix-trace" ,rust-gix-trace-0.1)
                       ("rust-kstring" ,rust-kstring-2)
                       ("rust-smallvec" ,rust-smallvec-1)
                       ("rust-thiserror" ,rust-thiserror-1)
                       ("rust-unicode-bom" ,rust-unicode-bom-2))))
    (home-page "https://github.com/Byron/gitoxide")
    (synopsis "crate of the gitoxide project dealing .gitattributes files")
    (description
     "This package provides a crate of the gitoxide project dealing .gitattributes
files.")
    (license (list license:expat license:asl2.0))))

(define rust-gix-command-0.3
  (package
    (name "rust-gix-command")
    (version "0.3.7")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "gix-command" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "09f29p1lfqf57023nvvjznj9shym484mrp2wzqzw95a0663f08kc"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-bstr" ,rust-bstr-1)
                       ("rust-gix-path" ,rust-gix-path-0.10)
                       ("rust-gix-trace" ,rust-gix-trace-0.1)
                       ("rust-shell-words" ,rust-shell-words-1))))
    (home-page "https://github.com/Byron/gitoxide")
    (synopsis
     "crate of the gitoxide project handling internal git command execution")
    (description
     "This package provides a crate of the gitoxide project handling internal git
command execution.")
    (license (list license:expat license:asl2.0))))

(define rust-gix-commitgraph-0.24
  (package
    (name "rust-gix-commitgraph")
    (version "0.24.2")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "gix-commitgraph" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1i0jrf5msqx8ry8z7skj4bxh1ifpfr8knh93i3qlmnl520qh5cgp"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-bstr" ,rust-bstr-1)
                       ("rust-gix-chunk" ,rust-gix-chunk-0.4)
                       ("rust-gix-features" ,rust-gix-features-0.38)
                       ("rust-gix-hash" ,rust-gix-hash-0.14)
                       ("rust-memmap2" ,rust-memmap2-0.9)
                       ("rust-thiserror" ,rust-thiserror-1))))
    (home-page "https://github.com/Byron/gitoxide")
    (synopsis "Read-only access to the git commitgraph file format")
    (description
     "This package provides Read-only access to the git commitgraph file format.")
    (license (list license:expat license:asl2.0))))

(define rust-gix-config-0.37
  (package
    (name "rust-gix-config")
    (version "0.37.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "gix-config" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0h680yjj90hqch8x2bgnybx01smff2yvcrja6n7dj4byjm1gxyjk"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-bstr" ,rust-bstr-1)
                       ("rust-gix-config-value" ,rust-gix-config-value-0.14)
                       ("rust-gix-features" ,rust-gix-features-0.38)
                       ("rust-gix-glob" ,rust-gix-glob-0.16)
                       ("rust-gix-path" ,rust-gix-path-0.10)
                       ("rust-gix-ref" ,rust-gix-ref-0.44)
                       ("rust-gix-sec" ,rust-gix-sec-0.10)
                       ("rust-memchr" ,rust-memchr-2)
                       ("rust-once-cell" ,rust-once-cell-1)
                       ("rust-smallvec" ,rust-smallvec-1)
                       ("rust-thiserror" ,rust-thiserror-1)
                       ("rust-unicode-bom" ,rust-unicode-bom-2)
                       ("rust-winnow" ,rust-winnow-0.6))))
    (home-page "https://github.com/Byron/gitoxide")
    (synopsis "git-config file parser and editor from the gitoxide project")
    (description
     "This package provides a git-config file parser and editor from the gitoxide
project.")
    (license (list license:expat license:asl2.0))))

(define rust-gix-date-0.8
  (package
    (name "rust-gix-date")
    (version "0.8.6")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "gix-date" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "16gs32jn6dilmsbpalxb9r9i69q8l6vciiy50kyh8aqc7c4yjzin"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-bstr" ,rust-bstr-1)
                       ("rust-itoa" ,rust-itoa-1)
                       ("rust-thiserror" ,rust-thiserror-1)
                       ("rust-time" ,rust-time-0.3))))
    (home-page "https://github.com/Byron/gitoxide")
    (synopsis "crate of the gitoxide project parsing dates the way git does")
    (description
     "This package provides a crate of the gitoxide project parsing dates the way git
does.")
    (license (list license:expat license:asl2.0))))

(define rust-gix-diff-0.44
  (package
    (name "rust-gix-diff")
    (version "0.44.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "gix-diff" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "197hp8jkn1lgml6jnrw2l1gx88nkfz0scmhbhid6gdh75n5vvfa0"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-bstr" ,rust-bstr-1)
                       ("rust-gix-command" ,rust-gix-command-0.3)
                       ("rust-gix-filter" ,rust-gix-filter-0.11)
                       ("rust-gix-fs" ,rust-gix-fs-0.11)
                       ("rust-gix-hash" ,rust-gix-hash-0.14)
                       ("rust-gix-object" ,rust-gix-object-0.42)
                       ("rust-gix-path" ,rust-gix-path-0.10)
                       ("rust-gix-tempfile" ,rust-gix-tempfile-14)
                       ("rust-gix-trace" ,rust-gix-trace-0.1)
                       ("rust-gix-worktree" ,rust-gix-worktree-0.34)
                       ("rust-imara-diff" ,rust-imara-diff-0.1)
                       ("rust-thiserror" ,rust-thiserror-1))))
    (home-page "https://github.com/Byron/gitoxide")
    (synopsis "Calculate differences between various git objects")
    (description
     "This package provides Calculate differences between various git objects.")
    (license (list license:expat license:asl2.0))))

(define rust-gix-dir-0.5
  (package
    (name "rust-gix-dir")
    (version "0.5.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "gix-dir" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0x29x6qdj4nwma01qgqadi0dwix3rnv0mlj1wnmn7gasaj69zjb0"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-bstr" ,rust-bstr-1)
                       ("rust-gix-discover" ,rust-gix-discover-0.32)
                       ("rust-gix-fs" ,rust-gix-fs-0.11)
                       ("rust-gix-ignore" ,rust-gix-ignore-0.11)
                       ("rust-gix-index" ,rust-gix-index-0.33)
                       ("rust-gix-object" ,rust-gix-object-0.42)
                       ("rust-gix-path" ,rust-gix-path-0.10)
                       ("rust-gix-pathspec" ,rust-gix-pathspec-0.7)
                       ("rust-gix-trace" ,rust-gix-trace-0.1)
                       ("rust-gix-utils" ,rust-gix-utils-0.1)
                       ("rust-gix-worktree" ,rust-gix-worktree-0.34)
                       ("rust-thiserror" ,rust-thiserror-1))))
    (home-page "https://github.com/Byron/gitoxide")
    (synopsis "crate of the gitoxide project dealing with directory walks")
    (description
     "This package provides a crate of the gitoxide project dealing with directory
walks.")
    (license (list license:expat license:asl2.0))))

(define rust-gix-discover-0.32
  (package
    (name "rust-gix-discover")
    (version "0.32.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "gix-discover" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1grxby9mj5c9bs305wrf70x0rsdpq25nc00csm86p9ixnscwc9zw"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-bstr" ,rust-bstr-1)
                       ("rust-dunce" ,rust-dunce-1)
                       ("rust-gix-fs" ,rust-gix-fs-0.11)
                       ("rust-gix-hash" ,rust-gix-hash-0.14)
                       ("rust-gix-path" ,rust-gix-path-0.10)
                       ("rust-gix-ref" ,rust-gix-ref-0.44)
                       ("rust-gix-sec" ,rust-gix-sec-0.10)
                       ("rust-thiserror" ,rust-thiserror-1))))
    (home-page "https://github.com/Byron/gitoxide")
    (synopsis
     "Discover git repositories and check if a directory is a git repository")
    (description
     "This package provides Discover git repositories and check if a directory is a git repository.")
    (license (list license:expat license:asl2.0))))

(define rust-gix-features-0.38
  (package
    (name "rust-gix-features")
    (version "0.38.2")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "gix-features" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0sfw6zs3qgmlqjkj4cvyfz6q6dgdlw1d16c7yckwgyg5kyn4aw5c"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-crc32fast" ,rust-crc32fast-1)
                       ("rust-flate2" ,rust-flate2-1)
                       ("rust-gix-hash" ,rust-gix-hash-0.14)
                       ("rust-gix-trace" ,rust-gix-trace-0.1)
                       ("rust-gix-utils" ,rust-gix-utils-0.1)
                       ("rust-libc" ,rust-libc-0.2)
                       ("rust-once-cell" ,rust-once-cell-1)
                       ("rust-prodash" ,rust-prodash-28)
                       ("rust-sha1-smol" ,rust-sha1-smol-1)
                       ("rust-thiserror" ,rust-thiserror-1)
                       ("rust-walkdir" ,rust-walkdir-2))))
    (home-page "https://github.com/Byron/gitoxide")
    (synopsis
     "crate to integrate various capabilities using compile-time feature flags")
    (description
     "This package provides a crate to integrate various capabilities using
compile-time feature flags.")
    (license (list license:expat license:asl2.0))))

(define rust-gix-filter-0.11
  (package
    (name "rust-gix-filter")
    (version "0.11.2")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "gix-filter" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1cja5wzh1w856i8mz8ba70n24b29w2ws2j1wqvdpmjlgmjjnxkh0"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-bstr" ,rust-bstr-1)
                       ("rust-encoding-rs" ,rust-encoding-rs-0.8)
                       ("rust-gix-attributes" ,rust-gix-attributes-0.22)
                       ("rust-gix-command" ,rust-gix-command-0.3)
                       ("rust-gix-hash" ,rust-gix-hash-0.14)
                       ("rust-gix-object" ,rust-gix-object-0.42)
                       ("rust-gix-packetline-blocking" ,rust-gix-packetline-blocking-0.17)
                       ("rust-gix-path" ,rust-gix-path-0.10)
                       ("rust-gix-quote" ,rust-gix-quote-0.4)
                       ("rust-gix-trace" ,rust-gix-trace-0.1)
                       ("rust-gix-utils" ,rust-gix-utils-0.1)
                       ("rust-smallvec" ,rust-smallvec-1)
                       ("rust-thiserror" ,rust-thiserror-1))))
    (home-page "https://github.com/Byron/gitoxide")
    (synopsis "crate of the gitoxide project implementing git filters")
    (description
     "This package provides a crate of the gitoxide project implementing git filters.")
    (license (list license:expat license:asl2.0))))

(define rust-gix-fs-0.11
  (package
    (name "rust-gix-fs")
    (version "0.11.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "gix-fs" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "033bfcr9fvqj68gz43a63i1fgp738nqk6fnpxw4mhynsvkbgfy1z"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-fastrand" ,rust-fastrand-2)
                       ("rust-gix-features" ,rust-gix-features-0.38)
                       ("rust-gix-utils" ,rust-gix-utils-0.1))))
    (home-page "https://github.com/Byron/gitoxide")
    (synopsis "crate providing file system specific utilities to `gitoxide`")
    (description
     "This package provides a crate providing file system specific utilities to
`gitoxide`.")
    (license (list license:expat license:asl2.0))))

(define rust-gix-glob-0.16
  (package
    (name "rust-gix-glob")
    (version "0.16.2")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "gix-glob" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1dbb2pn659ifmpdiaql8ipyjwn4vhhmdwrn3zknxn01wrd1xqav8"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-bitflags" ,rust-bitflags-2)
                       ("rust-bstr" ,rust-bstr-1)
                       ("rust-gix-features" ,rust-gix-features-0.38)
                       ("rust-gix-path" ,rust-gix-path-0.10))))
    (home-page "https://github.com/Byron/gitoxide")
    (synopsis "crate of the gitoxide project dealing with pattern matching")
    (description
     "This package provides a crate of the gitoxide project dealing with pattern
matching.")
    (license (list license:expat license:asl2.0))))

(define rust-gix-ignore-0.11
  (package
    (name "rust-gix-ignore")
    (version "0.11.2")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "gix-ignore" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1wb33zq9pn9hs4d5abg34hxf8l039aim9xii9p0rz7w2ynsbw3b4"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-bstr" ,rust-bstr-1)
                       ("rust-gix-glob" ,rust-gix-glob-0.16)
                       ("rust-gix-path" ,rust-gix-path-0.10)
                       ("rust-gix-trace" ,rust-gix-trace-0.1)
                       ("rust-unicode-bom" ,rust-unicode-bom-2))))
    (home-page "https://github.com/Byron/gitoxide")
    (synopsis "crate of the gitoxide project dealing .gitignore files")
    (description
     "This package provides a crate of the gitoxide project dealing .gitignore files.")
    (license (list license:expat license:asl2.0))))

(define rust-gix-index-0.33
  (package
    (name "rust-gix-index")
    (version "0.33.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "gix-index" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0rxin54fnlhp9kzpcwbxs4paiaq34zd4q5rbd72wpvaq3igmm31d"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-bitflags" ,rust-bitflags-2)
                       ("rust-bstr" ,rust-bstr-1)
                       ("rust-filetime" ,rust-filetime-0.2)
                       ("rust-fnv" ,rust-fnv-1)
                       ("rust-gix-bitmap" ,rust-gix-bitmap-0.2)
                       ("rust-gix-features" ,rust-gix-features-0.38)
                       ("rust-gix-fs" ,rust-gix-fs-0.11)
                       ("rust-gix-hash" ,rust-gix-hash-0.14)
                       ("rust-gix-lock" ,rust-gix-lock-14)
                       ("rust-gix-object" ,rust-gix-object-0.42)
                       ("rust-gix-traverse" ,rust-gix-traverse-0.39)
                       ("rust-gix-utils" ,rust-gix-utils-0.1)
                       ("rust-gix-validate" ,rust-gix-validate-0.8)
                       ("rust-hashbrown" ,rust-hashbrown-0.14)
                       ("rust-itoa" ,rust-itoa-1)
                       ("rust-libc" ,rust-libc-0.2)
                       ("rust-memmap2" ,rust-memmap2-0.9)
                       ("rust-rustix" ,rust-rustix-0.38)
                       ("rust-smallvec" ,rust-smallvec-1)
                       ("rust-thiserror" ,rust-thiserror-1))))
    (home-page "https://github.com/Byron/gitoxide")
    (synopsis
     "work-in-progress crate of the gitoxide project dedicated implementing the git index file")
    (description
     "This package provides a work-in-progress crate of the gitoxide project dedicated
implementing the git index file.")
    (license (list license:expat license:asl2.0))))

(define rust-gix-lock-14
  (package
    (name "rust-gix-lock")
    (version "14.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "gix-lock" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "17g1sknpvjqaq2s29c693mbmkp8sign0174qfi3n3x7ijzi7zg73"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-gix-tempfile" ,rust-gix-tempfile-14)
                       ("rust-gix-utils" ,rust-gix-utils-0.1)
                       ("rust-thiserror" ,rust-thiserror-1))))
    (home-page "https://github.com/Byron/gitoxide")
    (synopsis "git-style lock-file implementation")
    (description "This package provides a git-style lock-file implementation.")
    (license (list license:expat license:asl2.0))))

(define rust-gix-macros-0.1
  (package
    (name "rust-gix-macros")
    (version "0.1.5")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "gix-macros" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "05ycxnh5sxjsn4lvay309n6knr8ksvkb6zx6f50ik24zc4iyk74r"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-proc-macro2" ,rust-proc-macro2-1)
                       ("rust-quote" ,rust-quote-1)
                       ("rust-syn" ,rust-syn-2))))
    (home-page "https://github.com/Byron/gitoxide")
    (synopsis "Proc-macro utilities for gix")
    (description "This package provides Proc-macro utilities for gix.")
    (license (list license:expat license:asl2.0))))

(define rust-gix-object-0.42
  (package
    (name "rust-gix-object")
    (version "0.42.2")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "gix-object" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1pz1bb7ps05izla94ry4hdch01w11iivsvifjh66h70r855drqhz"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-bstr" ,rust-bstr-1)
                       ("rust-gix-actor" ,rust-gix-actor-0.31)
                       ("rust-gix-date" ,rust-gix-date-0.8)
                       ("rust-gix-features" ,rust-gix-features-0.38)
                       ("rust-gix-hash" ,rust-gix-hash-0.14)
                       ("rust-gix-utils" ,rust-gix-utils-0.1)
                       ("rust-gix-validate" ,rust-gix-validate-0.8)
                       ("rust-itoa" ,rust-itoa-1)
                       ("rust-smallvec" ,rust-smallvec-1)
                       ("rust-thiserror" ,rust-thiserror-1)
                       ("rust-winnow" ,rust-winnow-0.6))))
    (home-page "https://github.com/Byron/gitoxide")
    (synopsis
     "Immutable and mutable git objects with decoding and encoding support")
    (description
     "This package provides Immutable and mutable git objects with decoding and encoding support.")
    (license (list license:expat license:asl2.0))))

(define rust-gix-odb-0.61
  (package
    (name "rust-gix-odb")
    (version "0.61.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "gix-odb" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "162ysklw16gsl91ipvav2xy3h2j4rhk5p0nhcml1c6f9wa89faz9"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-arc-swap" ,rust-arc-swap-1)
                       ("rust-gix-date" ,rust-gix-date-0.8)
                       ("rust-gix-features" ,rust-gix-features-0.38)
                       ("rust-gix-fs" ,rust-gix-fs-0.11)
                       ("rust-gix-hash" ,rust-gix-hash-0.14)
                       ("rust-gix-object" ,rust-gix-object-0.42)
                       ("rust-gix-pack" ,rust-gix-pack-0.51)
                       ("rust-gix-path" ,rust-gix-path-0.10)
                       ("rust-gix-quote" ,rust-gix-quote-0.4)
                       ("rust-parking-lot" ,rust-parking-lot-0.12)
                       ("rust-tempfile" ,rust-tempfile-3)
                       ("rust-thiserror" ,rust-thiserror-1))))
    (home-page "https://github.com/Byron/gitoxide")
    (synopsis "Implements various git object databases")
    (description "This package implements various git object databases.")
    (license (list license:expat license:asl2.0))))

(define rust-gix-pack-0.51
  (package
    (name "rust-gix-pack")
    (version "0.51.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "gix-pack" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1cqhnrn3mqac6xq216dq4siyw0p0swg19cpd2d3r9zyv289ab3bs"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-clru" ,rust-clru-0.6)
                       ("rust-gix-chunk" ,rust-gix-chunk-0.4)
                       ("rust-gix-features" ,rust-gix-features-0.38)
                       ("rust-gix-hash" ,rust-gix-hash-0.14)
                       ("rust-gix-hashtable" ,rust-gix-hashtable-0.5)
                       ("rust-gix-object" ,rust-gix-object-0.42)
                       ("rust-gix-path" ,rust-gix-path-0.10)
                       ("rust-gix-tempfile" ,rust-gix-tempfile-14)
                       ("rust-memmap2" ,rust-memmap2-0.9)
                       ("rust-parking-lot" ,rust-parking-lot-0.12)
                       ("rust-smallvec" ,rust-smallvec-1)
                       ("rust-thiserror" ,rust-thiserror-1))))
    (home-page "https://github.com/Byron/gitoxide")
    (synopsis "Implements git packs and related data structures")
    (description
     "This package implements git packs and related data structures.")
    (license (list license:expat license:asl2.0))))

(define rust-gix-packetline-blocking-0.17
  (package
    (name "rust-gix-packetline-blocking")
    (version "0.17.4")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "gix-packetline-blocking" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0jp1fz5mqbikh1xfrxyc1qv57lnh62crg2fmwhr4fa1xi8vl47f3"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-bstr" ,rust-bstr-1)
                       ("rust-faster-hex" ,rust-faster-hex-0.9)
                       ("rust-gix-trace" ,rust-gix-trace-0.1)
                       ("rust-thiserror" ,rust-thiserror-1))))
    (home-page "https://github.com/Byron/gitoxide")
    (synopsis
     "duplicate of `gix-packetline` with the `blocking-io` feature pre-selected")
    (description
     "This package provides a duplicate of `gix-packetline` with the `blocking-io`
feature pre-selected.")
    (license (list license:expat license:asl2.0))))

(define rust-gix-pathspec-0.7
  (package
    (name "rust-gix-pathspec")
    (version "0.7.5")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "gix-pathspec" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "06gfl9aiq84wg9fbf45zniylvskd36znckv3kzca42y1il4snv57"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-bitflags" ,rust-bitflags-2)
                       ("rust-bstr" ,rust-bstr-1)
                       ("rust-gix-attributes" ,rust-gix-attributes-0.22)
                       ("rust-gix-config-value" ,rust-gix-config-value-0.14)
                       ("rust-gix-glob" ,rust-gix-glob-0.16)
                       ("rust-gix-path" ,rust-gix-path-0.10)
                       ("rust-thiserror" ,rust-thiserror-1))))
    (home-page "https://github.com/Byron/gitoxide")
    (synopsis "crate of the gitoxide project dealing magical pathspecs")
    (description
     "This package provides a crate of the gitoxide project dealing magical pathspecs.")
    (license (list license:expat license:asl2.0))))

(define rust-gix-ref-0.44
  (package
    (name "rust-gix-ref")
    (version "0.44.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "gix-ref" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1n93drd61h85y4x3p73d3vdhfvdi63cgss4nkkasqiw68hmpadhb"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-gix-actor" ,rust-gix-actor-0.31)
                       ("rust-gix-date" ,rust-gix-date-0.8)
                       ("rust-gix-features" ,rust-gix-features-0.38)
                       ("rust-gix-fs" ,rust-gix-fs-0.11)
                       ("rust-gix-hash" ,rust-gix-hash-0.14)
                       ("rust-gix-lock" ,rust-gix-lock-14)
                       ("rust-gix-object" ,rust-gix-object-0.42)
                       ("rust-gix-path" ,rust-gix-path-0.10)
                       ("rust-gix-tempfile" ,rust-gix-tempfile-14)
                       ("rust-gix-utils" ,rust-gix-utils-0.1)
                       ("rust-gix-validate" ,rust-gix-validate-0.8)
                       ("rust-memmap2" ,rust-memmap2-0.9)
                       ("rust-thiserror" ,rust-thiserror-1)
                       ("rust-winnow" ,rust-winnow-0.6))))
    (home-page "https://github.com/Byron/gitoxide")
    (synopsis "crate to handle git references")
    (description "This package provides a crate to handle git references.")
    (license (list license:expat license:asl2.0))))

(define rust-gix-refspec-0.23
  (package
    (name "rust-gix-refspec")
    (version "0.23.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "gix-refspec" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1cl0z2nbid2jxp9l46q67npqx9p9s0akymxlv7j4z99lb234is6x"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-bstr" ,rust-bstr-1)
                       ("rust-gix-hash" ,rust-gix-hash-0.14)
                       ("rust-gix-revision" ,rust-gix-revision-0.27)
                       ("rust-gix-validate" ,rust-gix-validate-0.8)
                       ("rust-smallvec" ,rust-smallvec-1)
                       ("rust-thiserror" ,rust-thiserror-1))))
    (home-page "https://github.com/Byron/gitoxide")
    (synopsis
     "crate of the gitoxide project for parsing and representing refspecs")
    (description
     "This package provides a crate of the gitoxide project for parsing and
representing refspecs.")
    (license (list license:expat license:asl2.0))))

(define rust-gix-revision-0.27
  (package
    (name "rust-gix-revision")
    (version "0.27.1")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "gix-revision" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0arvn7wkbhpfspqr75w4rpvb6z2c10w4rfyg7fl967zd0y0qzq33"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-bstr" ,rust-bstr-1)
                       ("rust-gix-date" ,rust-gix-date-0.8)
                       ("rust-gix-hash" ,rust-gix-hash-0.14)
                       ("rust-gix-hashtable" ,rust-gix-hashtable-0.5)
                       ("rust-gix-object" ,rust-gix-object-0.42)
                       ("rust-gix-revwalk" ,rust-gix-revwalk-0.13)
                       ("rust-gix-trace" ,rust-gix-trace-0.1)
                       ("rust-thiserror" ,rust-thiserror-1))))
    (home-page "https://github.com/Byron/gitoxide")
    (synopsis
     "crate of the gitoxide project dealing with finding names for revisions and parsing specifications")
    (description
     "This package provides a crate of the gitoxide project dealing with finding names
for revisions and parsing specifications.")
    (license (list license:expat license:asl2.0))))

(define rust-gix-revwalk-0.13
  (package
    (name "rust-gix-revwalk")
    (version "0.13.1")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "gix-revwalk" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "13vq7rx1dwfp9llvahdli2vlryb1pffmd4cf4pyx1lfnzjfdp0a1"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-gix-commitgraph" ,rust-gix-commitgraph-0.24)
                       ("rust-gix-date" ,rust-gix-date-0.8)
                       ("rust-gix-hash" ,rust-gix-hash-0.14)
                       ("rust-gix-hashtable" ,rust-gix-hashtable-0.5)
                       ("rust-gix-object" ,rust-gix-object-0.42)
                       ("rust-smallvec" ,rust-smallvec-1)
                       ("rust-thiserror" ,rust-thiserror-1))))
    (home-page "https://github.com/Byron/gitoxide")
    (synopsis "crate providing utilities for walking the revision graph")
    (description
     "This package provides a crate providing utilities for walking the revision
graph.")
    (license (list license:expat license:asl2.0))))

(define rust-gix-status-0.10
  (package
    (name "rust-gix-status")
    (version "0.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "gix-status" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1j5z44b80ybaxy34valibksasrd5gny52vqk9mahjf3ii7cp6hrg"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-bstr" ,rust-bstr-1)
                       ("rust-filetime" ,rust-filetime-0.2)
                       ("rust-gix-diff" ,rust-gix-diff-0.44)
                       ("rust-gix-dir" ,rust-gix-dir-0.5)
                       ("rust-gix-features" ,rust-gix-features-0.38)
                       ("rust-gix-filter" ,rust-gix-filter-0.11)
                       ("rust-gix-fs" ,rust-gix-fs-0.11)
                       ("rust-gix-hash" ,rust-gix-hash-0.14)
                       ("rust-gix-index" ,rust-gix-index-0.33)
                       ("rust-gix-object" ,rust-gix-object-0.42)
                       ("rust-gix-path" ,rust-gix-path-0.10)
                       ("rust-gix-pathspec" ,rust-gix-pathspec-0.7)
                       ("rust-gix-worktree" ,rust-gix-worktree-0.34)
                       ("rust-thiserror" ,rust-thiserror-1))))
    (home-page "https://github.com/Byron/gitoxide")
    (synopsis
     "crate of the gitoxide project dealing with 'git status'-like functionality")
    (description
     "This package provides a crate of the gitoxide project dealing with git
status'-like functionality.")
    (license (list license:expat license:asl2.0))))

(define rust-gix-submodule-0.11
  (package
    (name "rust-gix-submodule")
    (version "0.11.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "gix-submodule" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1b304hkx2r2b619n3lksvj08fkd7pdxzpr923dhvc55c4jcx874j"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-bstr" ,rust-bstr-1)
                       ("rust-gix-config" ,rust-gix-config-0.37)
                       ("rust-gix-path" ,rust-gix-path-0.10)
                       ("rust-gix-pathspec" ,rust-gix-pathspec-0.7)
                       ("rust-gix-refspec" ,rust-gix-refspec-0.23)
                       ("rust-gix-url" ,rust-gix-url-0.27)
                       ("rust-thiserror" ,rust-thiserror-1))))
    (home-page "https://github.com/Byron/gitoxide")
    (synopsis "crate of the gitoxide project dealing git submodules")
    (description
     "This package provides a crate of the gitoxide project dealing git submodules.")
    (license (list license:expat license:asl2.0))))

(define rust-gix-tempfile-14
  (package
    (name "rust-gix-tempfile")
    (version "14.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "gix-tempfile" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "16abcism6lb72diaibzg5nz02ai27bqs91pjx4i2msq8rmvf5c6k"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-dashmap" ,rust-dashmap-5)
                       ("rust-gix-fs" ,rust-gix-fs-0.11)
                       ("rust-libc" ,rust-libc-0.2)
                       ("rust-once-cell" ,rust-once-cell-1)
                       ("rust-parking-lot" ,rust-parking-lot-0.12)
                       ("rust-tempfile" ,rust-tempfile-3))))
    (home-page "https://github.com/Byron/gitoxide")
    (synopsis
     "tempfile implementation with a global registry to assure cleanup")
    (description
     "This package provides a tempfile implementation with a global registry to assure
cleanup.")
    (license (list license:expat license:asl2.0))))

(define rust-gix-trace-0.1
  (package
    (name "rust-gix-trace")
    (version "0.1.9")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "gix-trace" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0zhm2lwqr070rq3bdn4b1zjs7mn7bhlkfgwfap6xspwi11s2c97r"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t))
    (home-page "https://github.com/Byron/gitoxide")
    (synopsis
     "crate to provide minimal `tracing` support that can be turned off to zero cost")
    (description
     "This package provides a crate to provide minimal `tracing` support that can be
turned off to zero cost.")
    (license (list license:expat license:asl2.0))))

(define rust-gix-traverse-0.39
  (package
    (name "rust-gix-traverse")
    (version "0.39.1")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "gix-traverse" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1872irb1ssbnm09c89cwyj74iqsnfxdw0hlzjcklhgpbcfdvc37j"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-bitflags" ,rust-bitflags-2)
                       ("rust-gix-commitgraph" ,rust-gix-commitgraph-0.24)
                       ("rust-gix-date" ,rust-gix-date-0.8)
                       ("rust-gix-hash" ,rust-gix-hash-0.14)
                       ("rust-gix-hashtable" ,rust-gix-hashtable-0.5)
                       ("rust-gix-object" ,rust-gix-object-0.42)
                       ("rust-gix-revwalk" ,rust-gix-revwalk-0.13)
                       ("rust-smallvec" ,rust-smallvec-1)
                       ("rust-thiserror" ,rust-thiserror-1))))
    (home-page "https://github.com/Byron/gitoxide")
    (synopsis "crate of the gitoxide project")
    (description "This package provides a crate of the gitoxide project.")
    (license (list license:expat license:asl2.0))))

(define rust-gix-url-0.27
  (package
    (name "rust-gix-url")
    (version "0.27.3")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "gix-url" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1kyiah4kjqli6swc1frdlys6vpwi6lwysymy6az0y656vkmjkf0d"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-bstr" ,rust-bstr-1)
                       ("rust-gix-features" ,rust-gix-features-0.38)
                       ("rust-gix-path" ,rust-gix-path-0.10)
                       ("rust-home" ,rust-home-0.5)
                       ("rust-thiserror" ,rust-thiserror-1)
                       ("rust-url" ,rust-url-2))))
    (home-page "https://github.com/Byron/gitoxide")
    (synopsis
     "crate of the gitoxide project implementing parsing and serialization of gix-url")
    (description
     "This package provides a crate of the gitoxide project implementing parsing and
serialization of gix-url.")
    (license (list license:expat license:asl2.0))))

(define rust-gix-utils-0.1
  (package
    (name "rust-gix-utils")
    (version "0.1.12")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "gix-utils" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1p6lschmdrg1j9cd3rm6q96dyrvivzi2305d7ck1588gzpvjs69m"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-bstr" ,rust-bstr-1)
                       ("rust-fastrand" ,rust-fastrand-2)
                       ("rust-unicode-normalization" ,rust-unicode-normalization-0.1))))
    (home-page "https://github.com/Byron/gitoxide")
    (synopsis
     "crate with `gitoxide` utilities that don't need feature toggles")
    (description
     "This package provides a crate with `gitoxide` utilities that don't need feature
toggles.")
    (license (list license:expat license:asl2.0))))

(define rust-gix-validate-0.8
  (package
    (name "rust-gix-validate")
    (version "0.8.5")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "gix-validate" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1kqad8a2wdz69ma7hspi21pazgpkrc5hg4iw37gsvca99b9pvhl2"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-bstr" ,rust-bstr-1)
                       ("rust-thiserror" ,rust-thiserror-1))))
    (home-page "https://github.com/Byron/gitoxide")
    (synopsis "Validation functions for various kinds of names in git")
    (description
     "This package provides Validation functions for various kinds of names in git.")
    (license (list license:expat license:asl2.0))))

(define rust-gix-worktree-0.34
  (package
    (name "rust-gix-worktree")
    (version "0.34.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "gix-worktree" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0km95jbka2ih9ac5gliryzmkvwh5fmyib4pz581794l3hggbgxjk"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-bstr" ,rust-bstr-1)
                       ("rust-gix-attributes" ,rust-gix-attributes-0.22)
                       ("rust-gix-features" ,rust-gix-features-0.38)
                       ("rust-gix-fs" ,rust-gix-fs-0.11)
                       ("rust-gix-glob" ,rust-gix-glob-0.16)
                       ("rust-gix-hash" ,rust-gix-hash-0.14)
                       ("rust-gix-ignore" ,rust-gix-ignore-0.11)
                       ("rust-gix-index" ,rust-gix-index-0.33)
                       ("rust-gix-object" ,rust-gix-object-0.42)
                       ("rust-gix-path" ,rust-gix-path-0.10)
                       ("rust-gix-validate" ,rust-gix-validate-0.8))))
    (home-page "https://github.com/Byron/gitoxide")
    (synopsis
     "crate of the gitoxide project for shared worktree related types and utilities.")
    (description
     "This package provides a crate of the gitoxide project for shared worktree
related types and utilities.")
    (license (list license:expat license:asl2.0))))

(define rust-hashbrown-0.14
  (package
    (name "rust-hashbrown")
    (version "0.14.5")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "hashbrown" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1wa1vy1xs3mp11bn3z9dv0jricgr6a2j0zkf1g19yz3vw4il89z5"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-ahash" ,rust-ahash-0.8)
                       ("rust-allocator-api2" ,rust-allocator-api2-0.2))))
    (home-page "https://github.com/rust-lang/hashbrown")
    (synopsis "Rust port of Google's SwissTable hash map")
    (description
     "This package provides a Rust port of Google's @code{SwissTable} hash map.")
    (license (list license:expat license:asl2.0))))

(define rust-imara-diff-0.1
  (package
    (name "rust-imara-diff")
    (version "0.1.6")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "imara-diff" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0d4lc54jpl7wpwdn496sckjdkv6lrnl86vd6qvq0z1knng7ch4xg"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-ahash" ,rust-ahash-0.8)
                       ("rust-hashbrown" ,rust-hashbrown-0.14))))
    (home-page "https://github.com/pascalkuthe/imara-diff")
    (synopsis "high performance library for computing diffs.")
    (description
     "This package provides a high performance library for computing diffs.")
    (license license:asl2.0)))

(define rust-indoc-2
  (package
    (name "rust-indoc")
    (version "2.0.5")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "indoc" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1dgjk49rkmx4kjy07k4b90qb5vl89smgb5rcw02n0q0x9ligaj5j"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t))
    (home-page "https://github.com/dtolnay/indoc")
    (synopsis "Indented document literals")
    (description "This package provides Indented document literals.")
    (license (list license:expat license:asl2.0))))

(define rust-libc-0.2
  (package
    (name "rust-libc")
    (version "0.2.155")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "libc" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0z44c53z54znna8n322k5iwg80arxxpdzjj5260pxxzc9a58icwp"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t))
    (home-page "https://github.com/rust-lang/libc")
    (synopsis "Raw FFI bindings to platform libraries like libc.")
    (description
     "This package provides Raw FFI bindings to platform libraries like libc.")
    (license (list license:expat license:asl2.0))))

(define rust-libloading-0.8
  (package
    (name "rust-libloading")
    (version "0.8.4")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "libloading" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0g8h1vfb53gzzihbg5kxgifp74svyh7rdd6d5wh9jzwhnnkb6473"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-cfg-if" ,rust-cfg-if-1)
                       ("rust-windows-targets" ,rust-windows-targets-0.52))))
    (home-page "https://github.com/nagisa/rust_libloading/")
    (synopsis
     "Bindings around the platform's dynamic library loading primitives with greatly improved memory safety")
    (description
     "This package provides Bindings around the platform's dynamic library loading primitives with greatly
improved memory safety.")
    (license license:isc)))

(define rust-log-0.4
  (package
    (name "rust-log")
    (version "0.4.22")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "log" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "093vs0wkm1rgyykk7fjbqp2lwizbixac1w52gv109p5r4jh0p9x7"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t))
    (home-page "https://github.com/rust-lang/log")
    (synopsis "lightweight logging facade for Rust")
    (description
     "This package provides a lightweight logging facade for Rust.")
    (license (list license:expat license:asl2.0))))

(define rust-mio-0.8
  (package
    (name "rust-mio")
    (version "0.8.11")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "mio" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "034byyl0ardml5yliy1hmvx8arkmn9rv479pid794sm07ia519m4"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-libc" ,rust-libc-0.2)
                       ("rust-log" ,rust-log-0.4)
                       ("rust-wasi" ,rust-wasi-0.11)
                       ("rust-windows-sys" ,rust-windows-sys-0.48))))
    (home-page "https://github.com/tokio-rs/mio")
    (synopsis "Lightweight non-blocking I/O")
    (description "This package provides Lightweight non-blocking I/O.")
    (license license:expat)))

(define rust-nucleo-0.2
  (package
    (name "rust-nucleo")
    (version "0.2.1")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "nucleo" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1wzx32bz4n68dcd3yw57195sz49hdhv9b75jikr5qiyfpks32lxf"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-nucleo-matcher" ,rust-nucleo-matcher-0.2)
                       ("rust-parking-lot" ,rust-parking-lot-0.12)
                       ("rust-rayon" ,rust-rayon-1))))
    (home-page "https://github.com/helix-editor/nucleo")
    (synopsis "plug and play high performance fuzzy matcher")
    (description
     "This package provides plug and play high performance fuzzy matcher.")
    (license license:mpl2.0)))

(define rust-nucleo-matcher-0.2
  (package
    (name "rust-nucleo-matcher")
    (version "0.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "nucleo-matcher" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0mxxz58acszkgxha4wy459fkcx6f8sh55d803wnid1p25x02nw0v"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-cov-mark" ,rust-cov-mark-1)
                       ("rust-memchr" ,rust-memchr-2)
                       ("rust-unicode-segmentation" ,rust-unicode-segmentation-1))))
    (home-page "https://github.com/helix-editor/nucleo")
    (synopsis "plug and play high performance fuzzy matcher")
    (description
     "This package provides plug and play high performance fuzzy matcher.")
    (license license:mpl2.0)))

(define rust-object-0.31
  (package
    (name "rust-object")
    (version "0.31.1")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "object" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1lb670wallm2i6rzrx2hz1afya4bfjzz6n9zhfw52l1bkxyndnlb"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-memchr" ,rust-memchr-2))))
    (home-page "https://github.com/gimli-rs/object")
    (synopsis "unified interface for reading and writing object file formats.")
    (description
     "This package provides a unified interface for reading and writing object file
formats.")
    (license (list license:asl2.0 license:expat))))

(define rust-open-5
  (package
    (name "rust-open")
    (version "5.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "open" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0dvyb94cncmgxgdwyvz0ixm3gnbb0mn1rkglzq7dhfyf7yd90b4x"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-is-wsl" ,rust-is-wsl-0.4)
                       ("rust-libc" ,rust-libc-0.2)
                       ("rust-pathdiff" ,rust-pathdiff-0.2))))
    (home-page "https://github.com/Byron/open-rs")
    (synopsis "Open a path or URL using the program configured on the system")
    (description
     "This package provides Open a path or URL using the program configured on the system.")
    (license license:expat)))

(define rust-parking-lot-0.12
  (package
    (name "rust-parking-lot")
    (version "0.12.3")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "parking_lot" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "09ws9g6245iiq8z975h8ycf818a66q3c6zv4b5h8skpm7hc1igzi"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-lock-api" ,rust-lock-api-0.4)
                       ("rust-parking-lot-core" ,rust-parking-lot-core-0.9))))
    (home-page "https://github.com/Amanieu/parking_lot")
    (synopsis
     "More compact and efficient implementations of the standard synchronization primitives")
    (description
     "This package provides More compact and efficient implementations of the standard synchronization
primitives.")
    (license (list license:expat license:asl2.0))))

(define rust-pulldown-cmark-0.11
  (package
    (name "rust-pulldown-cmark")
    (version "0.11.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "pulldown-cmark" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1h5fcmbn2f1dhg7iqm4cwyzhscc5aavsj815bjnyb76k26gp6il7"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-bitflags" ,rust-bitflags-2)
                       ("rust-memchr" ,rust-memchr-2)
                       ("rust-unicase" ,rust-unicase-2))))
    (home-page "https://github.com/raphlinus/pulldown-cmark")
    (synopsis "pull parser for CommonMark")
    (description "This package provides a pull parser for @code{CommonMark}.")
    (license license:expat)))

(define rust-regex-1
  (package
    (name "rust-regex")
    (version "1.10.5")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "regex" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0zsiqk2sxc1kd46qw0yp87s2a14ialwyxinpl0k266ddkm1i64mr"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-aho-corasick" ,rust-aho-corasick-1)
                       ("rust-memchr" ,rust-memchr-2)
                       ("rust-regex-automata" ,rust-regex-automata-0.4)
                       ("rust-regex-syntax" ,rust-regex-syntax-0.8))))
    (home-page "https://github.com/rust-lang/regex")
    (synopsis
     "An implementation of regular expressions for Rust. This implementation uses
finite automata and guarantees linear time matching on all inputs.")
    (description
     "This package provides An implementation of regular expressions for Rust.  This implementation uses
finite automata and guarantees linear time matching on all inputs.")
    (license (list license:expat license:asl2.0))))

(define rust-regex-cursor-0.1
  (package
    (name "rust-regex-cursor")
    (version "0.1.4")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "regex-cursor" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0sbi1xr9201hd5c40779gfnmlnmrb4yqs4jj07d6zbp3znsjfhxf"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-log" ,rust-log-0.4)
                       ("rust-memchr" ,rust-memchr-2)
                       ("rust-regex-automata" ,rust-regex-automata-0.4)
                       ("rust-regex-syntax" ,rust-regex-syntax-0.8)
                       ("rust-ropey" ,rust-ropey-1))))
    (home-page "https://github.com/pascalkuthe/regex-cursor")
    (synopsis "regex fork that can search discontiguous haystacks")
    (description
     "This package provides regex fork that can search discontiguous haystacks.")
    (license (list license:expat license:asl2.0))))

(define rust-rustix-0.38
  (package
    (name "rust-rustix")
    (version "0.38.34")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "rustix" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "03vkqa2ism7q56rkifyy8mns0wwqrk70f4i4fd53r97p8b05xp3h"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-bitflags" ,rust-bitflags-2)
                       ("rust-errno" ,rust-errno-0.3)
                       ("rust-libc" ,rust-libc-0.2)
                       ("rust-linux-raw-sys" ,rust-linux-raw-sys-0.4)
                       ("rust-windows-sys" ,rust-windows-sys-0.52))))
    (home-page "https://github.com/bytecodealliance/rustix")
    (synopsis "Safe Rust bindings to POSIX/Unix/Linux/Winsock-like syscalls")
    (description
     "This package provides Safe Rust bindings to POSIX/Unix/Linux/Winsock-like syscalls.")
    (license (list license:asl2.0 license:asl2.0 license:expat))))

(define rust-serde-1
  (package
    (name "rust-serde")
    (version "1.0.204")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "serde" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "04kwpwqz559xlhxkggmm8rjxqgywy5swam3kscwsicnbw1cgaxmw"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-serde-derive" ,rust-serde-derive-1))))
    (home-page "https://serde.rs")
    (synopsis "generic serialization/deserialization framework")
    (description
     "This package provides a generic serialization/deserialization framework.")
    (license (list license:expat license:asl2.0))))

(define rust-serde-derive-1
  (package
    (name "rust-serde-derive")
    (version "1.0.204")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "serde_derive" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "08p25262mbmhsr2cg0508d5b1wvljj956rvpg0v3qgg6gc8pxkg0"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-proc-macro2" ,rust-proc-macro2-1)
                       ("rust-quote" ,rust-quote-1)
                       ("rust-syn" ,rust-syn-2))))
    (home-page "https://serde.rs")
    (synopsis "Macros 1.1 implementation of #[derive(Serialize, Deserialize)]")
    (description
     "This package provides Macros 1.1 implementation of #[derive(Serialize, Deserialize)].")
    (license (list license:expat license:asl2.0))))

(define rust-serde-json-1
  (package
    (name "rust-serde-json")
    (version "1.0.120")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "serde_json" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1idpv3zxcvl76z2z47jgg1f1wjqdnhfc204asmd27qfam34j23af"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-itoa" ,rust-itoa-1)
                       ("rust-ryu" ,rust-ryu-1)
                       ("rust-serde" ,rust-serde-1))))
    (home-page "https://github.com/serde-rs/json")
    (synopsis "JSON serialization file format")
    (description "This package provides a JSON serialization file format.")
    (license (list license:expat license:asl2.0))))

(define rust-serde-spanned-0.6
  (package
    (name "rust-serde-spanned")
    (version "0.6.6")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "serde_spanned" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1839b6m5p9ijjmcwamiya2r612ks2vg6w2pp95yg76lr3zh79rkr"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-serde" ,rust-serde-1))))
    (home-page "https://github.com/toml-rs/toml")
    (synopsis "Serde-compatible spanned Value")
    (description "This package provides Serde-compatible spanned Value.")
    (license (list license:expat license:asl2.0))))

(define rust-signal-hook-registry-1
  (package
    (name "rust-signal-hook-registry")
    (version "1.4.1")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "signal-hook-registry" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "18crkkw5k82bvcx088xlf5g4n3772m24qhzgfan80nda7d3rn8nq"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-libc" ,rust-libc-0.2))))
    (home-page "https://github.com/vorner/signal-hook")
    (synopsis "Backend crate for signal-hook")
    (description "This package provides Backend crate for signal-hook.")
    (license (list license:asl2.0 license:expat))))

(define rust-slotmap-1
  (package
    (name "rust-slotmap")
    (version "1.0.7")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "slotmap" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0amqb2fn9lcy1ri0risblkcp88dl0rnfmynw7lx0nqwza77lmzyv"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-version-check" ,rust-version-check-0.9))))
    (home-page "https://github.com/orlp/slotmap")
    (synopsis "Slotmap data structure")
    (description "This package provides Slotmap data structure.")
    (license license:zlib)))

(define rust-smallvec-1
  (package
    (name "rust-smallvec")
    (version "1.13.2")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "smallvec" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0rsw5samawl3wsw6glrsb127rx6sh89a8wyikicw6dkdcjd1lpiw"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t))
    (home-page "https://github.com/servo/rust-smallvec")
    (synopsis
     "'Small vector' optimization: store up to a small number of items on the stack")
    (description
     "This package provides Small vector optimization: store up to a small number of items on the stack.")
    (license (list license:expat license:asl2.0))))

(define rust-termini-1
  (package
    (name "rust-termini")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "termini" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0n8dvbwkp2k673xqwivb01iqg5ir91zgpwhwngpcb2yrgpc43m1a"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-home" ,rust-home-0.5))))
    (home-page "https://github.com/pascalkuthe/termini")
    (synopsis "Minimal terminfo libary")
    (description "This package provides Minimal terminfo libary.")
    (license license:expat)))

(define rust-textwrap-0.16
  (package
    (name "rust-textwrap")
    (version "0.16.1")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "textwrap" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1fgqn3mg9gdbjxwfxl76fg0qiq53w3mk4hdh1x40jylnz39k9m13"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-smawk" ,rust-smawk-0.3)
                       ("rust-unicode-linebreak" ,rust-unicode-linebreak-0.1)
                       ("rust-unicode-width" ,rust-unicode-width-0.1))))
    (home-page "https://github.com/mgeisler/textwrap")
    (synopsis
     "Library for word wrapping, indenting, and dedenting strings. Has optional support for Unicode and emojis as well as machine hyphenation")
    (description
     "This package provides Library for word wrapping, indenting, and dedenting strings.  Has optional
support for Unicode and emojis as well as machine hyphenation.")
    (license license:expat)))

(define rust-thiserror-1
  (package
    (name "rust-thiserror")
    (version "1.0.61")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "thiserror" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "028prh962l16cmjivwb1g9xalbpqip0305zhq006mg74dc6whin5"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-thiserror-impl" ,rust-thiserror-impl-1))))
    (home-page "https://github.com/dtolnay/thiserror")
    (synopsis "derive(Error)")
    (description "This package provides derive(Error).")
    (license (list license:expat license:asl2.0))))

(define rust-thiserror-impl-1
  (package
    (name "rust-thiserror-impl")
    (version "1.0.61")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "thiserror-impl" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0cvm37hp0kbcyk1xac1z0chpbd9pbn2g456iyid6sah0a113ihs6"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-proc-macro2" ,rust-proc-macro2-1)
                       ("rust-quote" ,rust-quote-1)
                       ("rust-syn" ,rust-syn-2))))
    (home-page "https://github.com/dtolnay/thiserror")
    (synopsis "Implementation detail of the `thiserror` crate")
    (description
     "This package provides Implementation detail of the `thiserror` crate.")
    (license (list license:expat license:asl2.0))))

(define rust-time-0.3
  (package
    (name "rust-time")
    (version "0.3.36")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "time" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "11g8hdpahgrf1wwl2rpsg5nxq3aj7ri6xr672v4qcij6cgjqizax"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-deranged" ,rust-deranged-0.3)
                       ("rust-itoa" ,rust-itoa-1)
                       ("rust-libc" ,rust-libc-0.2)
                       ("rust-num-conv" ,rust-num-conv-0.1)
                       ("rust-num-threads" ,rust-num-threads-0.1)
                       ("rust-powerfmt" ,rust-powerfmt-0.2)
                       ("rust-serde" ,rust-serde-1)
                       ("rust-time-core" ,rust-time-core-0.1)
                       ("rust-time-macros" ,rust-time-macros-0.2))))
    (home-page "https://time-rs.github.io")
    (synopsis
     "Date and time library. Fully interoperable with the standard library. Mostly compatible with #![no_std]")
    (description
     "This package provides Date and time library.  Fully interoperable with the standard library.  Mostly
compatible with #![no_std].")
    (license (list license:expat license:asl2.0))))

(define rust-time-macros-0.2
  (package
    (name "rust-time-macros")
    (version "0.2.18")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "time-macros" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1kqwxvfh2jkpg38fy673d6danh1bhcmmbsmffww3mphgail2l99z"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-num-conv" ,rust-num-conv-0.1)
                       ("rust-time-core" ,rust-time-core-0.1))))
    (home-page "https://github.com/time-rs/time")
    (synopsis
     "Procedural macros for the time crate.
    This crate is an implementation detail and should not be relied upon directly.")
    (description
     "This package provides Procedural macros for the time crate.  This crate is an implementation detail
and should not be relied upon directly.")
    (license (list license:expat license:asl2.0))))

(define rust-tokio-1
  (package
    (name "rust-tokio")
    (version "1.38.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "tokio" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0jjsb2c9dqi93yij3rqzsh9bk0z3qyasmw1n8qkny3d8lw14lkxs"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-backtrace" ,rust-backtrace-0.3)
                       ("rust-bytes" ,rust-bytes-1)
                       ("rust-libc" ,rust-libc-0.2)
                       ("rust-mio" ,rust-mio-0.8)
                       ("rust-num-cpus" ,rust-num-cpus-1)
                       ("rust-parking-lot" ,rust-parking-lot-0.12)
                       ("rust-pin-project-lite" ,rust-pin-project-lite-0.2)
                       ("rust-signal-hook-registry" ,rust-signal-hook-registry-1)
                       ("rust-socket2" ,rust-socket2-0.5)
                       ("rust-tokio-macros" ,rust-tokio-macros-2)
                       ("rust-windows-sys" ,rust-windows-sys-0.48))))
    (home-page "https://tokio.rs")
    (synopsis
     "An event-driven, non-blocking I/O platform for writing asynchronous I/O
backed applications.")
    (description
     "This package provides An event-driven, non-blocking I/O platform for writing asynchronous I/O backed
applications.")
    (license license:expat)))

(define rust-tokio-macros-2
  (package
    (name "rust-tokio-macros")
    (version "2.3.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "tokio-macros" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "16nkan0x9b62hnqmjqcyd71j1mgpda2sv7gfm2mvbm39l2cfjnjz"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-proc-macro2" ,rust-proc-macro2-1)
                       ("rust-quote" ,rust-quote-1)
                       ("rust-syn" ,rust-syn-2))))
    (home-page "https://tokio.rs")
    (synopsis "Tokio's proc macros.")
    (description "This package provides Tokio's proc macros.")
    (license license:expat)))

(define rust-tokio-stream-0.1
  (package
    (name "rust-tokio-stream")
    (version "0.1.15")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "tokio-stream" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1brpbsqyg8yfmfc4y0j9zxvc8xsxjc31d48kb0g6jvpc1fgchyi6"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-futures-core" ,rust-futures-core-0.3)
                       ("rust-pin-project-lite" ,rust-pin-project-lite-0.2)
                       ("rust-tokio" ,rust-tokio-1))))
    (home-page "https://tokio.rs")
    (synopsis "Utilities to work with `Stream` and `tokio`.")
    (description
     "This package provides Utilities to work with `Stream` and `tokio`.")
    (license license:expat)))

(define rust-toml-0.8
  (package
    (name "rust-toml")
    (version "0.8.14")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "toml" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0dgk8bacrza09npifba1xsx7wyjjvhz3igxpdnyjcbqxn8mfnjbg"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-serde" ,rust-serde-1)
                       ("rust-serde-spanned" ,rust-serde-spanned-0.6)
                       ("rust-toml-datetime" ,rust-toml-datetime-0.6)
                       ("rust-toml-edit" ,rust-toml-edit-0.22))))
    (home-page "https://github.com/toml-rs/toml")
    (synopsis
     "native Rust encoder and decoder of TOML-formatted files and streams. Provides
implementations of the standard Serialize/Deserialize traits for TOML data to
facilitate deserializing and serializing Rust structures.")
    (description
     "This package provides a native Rust encoder and decoder of TOML-formatted files
and streams.  Provides implementations of the standard Serialize/Deserialize
traits for TOML data to facilitate deserializing and serializing Rust
structures.")
    (license (list license:expat license:asl2.0))))

(define rust-toml-datetime-0.6
  (package
    (name "rust-toml-datetime")
    (version "0.6.6")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "toml_datetime" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1grcrr3gh7id3cy3j700kczwwfbn04p5ncrrj369prjaj9bgvbab"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-serde" ,rust-serde-1))))
    (home-page "https://github.com/toml-rs/toml")
    (synopsis "TOML-compatible datetime type")
    (description "This package provides a TOML-compatible datetime type.")
    (license (list license:expat license:asl2.0))))

(define rust-toml-edit-0.22
  (package
    (name "rust-toml-edit")
    (version "0.22.14")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "toml_edit" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0f2fw0viqvisjhqwjavgypz5mgbldh53przrsjlrrggijyppl77j"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-indexmap" ,rust-indexmap-2)
                       ("rust-serde" ,rust-serde-1)
                       ("rust-serde-spanned" ,rust-serde-spanned-0.6)
                       ("rust-toml-datetime" ,rust-toml-datetime-0.6)
                       ("rust-winnow" ,rust-winnow-0.6))))
    (home-page "https://github.com/toml-rs/toml")
    (synopsis "Yet another format-preserving TOML parser")
    (description
     "This package provides Yet another format-preserving TOML parser.")
    (license (list license:expat license:asl2.0))))

(define rust-tree-sitter-0.22
  (package
    (name "rust-tree-sitter")
    (version "0.22.6")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "tree-sitter" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1jkda5n43m7cxmx2h7l20zxc74nf9v1wpm66gvgxrm5drscw8z6z"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-cc" ,rust-cc-1)
                       ("rust-regex" ,rust-regex-1))))
    (home-page "https://tree-sitter.github.io/tree-sitter")
    (synopsis "Rust bindings to the Tree-sitter parsing library")
    (description
     "This package provides Rust bindings to the Tree-sitter parsing library.")
    (license license:expat)))

(define rust-unicode-bidi-0.3
  (package
    (name "rust-unicode-bidi")
    (version "0.3.15")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "unicode-bidi" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0xcdxm7h0ydyprwpcbh436rbs6s6lph7f3gr527lzgv6lw053y88"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t))
    (home-page "https://github.com/servo/unicode-bidi")
    (synopsis "Implementation of the Unicode Bidirectional Algorithm")
    (description
     "This package provides Implementation of the Unicode Bidirectional Algorithm.")
    (license (list license:expat license:asl2.0))))

(define rust-unicode-general-category-0.6
  (package
    (name "rust-unicode-general-category")
    (version "0.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "unicode-general-category" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1rv9715c94gfl0hzy4f2a9lw7i499756bq2968vqwhr1sb0wi092"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t))
    (home-page "https://github.com/yeslogic/unicode-general-category")
    (synopsis "Fast lookup of the Unicode General Category property for char")
    (description
     "This package provides Fast lookup of the Unicode General Category property for char.")
    (license license:asl2.0)))

(define rust-unicode-linebreak-0.1
  (package
    (name "rust-unicode-linebreak")
    (version "0.1.5")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "unicode-linebreak" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "07spj2hh3daajg335m4wdav6nfkl0f6c0q72lc37blr97hych29v"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t))
    (home-page "https://github.com/axelf4/unicode-linebreak")
    (synopsis "Implementation of the Unicode Line Breaking Algorithm")
    (description
     "This package provides Implementation of the Unicode Line Breaking Algorithm.")
    (license license:asl2.0)))

(define rust-unicode-width-0.1
  (package
    (name "rust-unicode-width")
    (version "0.1.12")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "unicode-width" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1mk6mybsmi5py8hf8zy9vbgs4rw4gkdqdq3gzywd9kwf2prybxb8"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t))
    (home-page "https://github.com/unicode-rs/unicode-width")
    (synopsis "Determine displayed width of `char` and `str` types
according to Unicode Standard Annex #11 rules.")
    (description
     "This package provides Determine displayed width of `char` and `str` types according to Unicode
Standard Annex #11 rules.")
    (license (list license:expat license:asl2.0))))

(define rust-url-2
  (package
    (name "rust-url")
    (version "2.5.2")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "url" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0v2dx50mx7xzl9454cl5qmpjnhkbahmn59gd3apyipbgyyylsy12"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-form-urlencoded" ,rust-form-urlencoded-1)
                       ("rust-idna" ,rust-idna-0.5)
                       ("rust-percent-encoding" ,rust-percent-encoding-2)
                       ("rust-serde" ,rust-serde-1))))
    (home-page "https://github.com/servo/rust-url")
    (synopsis "URL library for Rust, based on the WHATWG URL Standard")
    (description
     "This package provides URL library for Rust, based on the WHATWG URL Standard.")
    (license (list license:expat license:asl2.0))))

(define rust-which-6
  (package
    (name "rust-which")
    (version "6.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "which" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1mz0vijj9qvsmfqkjqw3wf8zqn19p2x0gg7gzfnhaa1bibsy84c2"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-either" ,rust-either-1)
                       ("rust-home" ,rust-home-0.5)
                       ("rust-rustix" ,rust-rustix-0.38)
                       ("rust-winsafe" ,rust-winsafe-0.0.19))))
    (home-page "https://github.com/harryfei/which-rs.git")
    (synopsis
     "Rust equivalent of Unix command \"which\". Locate installed executable in cross platforms.")
    (description
     "This package provides a Rust equivalent of Unix command \"which\".  Locate
installed executable in cross platforms.")
    (license license:expat)))

(define rust-winsafe-0.0.19
  (package
    (name "rust-winsafe")
    (version "0.0.19")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "winsafe" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0169xy9mjma8dys4m8v4x0xhw2gkbhv2v1wsbvcjl9bhnxxd2dfi"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t))
    (home-page "https://github.com/rodrigocfd/winsafe")
    (synopsis "Windows API and GUI in safe, idiomatic Rust")
    (description
     "This package provides Windows API and GUI in safe, idiomatic Rust.")
    (license license:expat)))

(define-public helix
  (package
    (name "helix")
    (version "24.07")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/helix-editor/helix")
             (commit version)))
       (modules '((guix build utils)))
       (snippet '(begin
                   (delete-file-recursively "Cargo.lock")))
       (file-name (git-file-name "helix" version))
       (sha256
        (base32 "1f0l65z1cy8m9x79p5y5kwk1psv0ppfz9lwylggm71q0lj127awl"))))
    (build-system cargo-build-system)
    (arguments
     `(#:tests? #t
       #:install-source? #f ;We'll do it manually
       #:imported-modules (,@%cargo-build-system-modules (guix build
                                                          cargo-build-system))
       #:modules ((guix build utils)
                  (guix build cargo-build-system)
                  (ice-9 match))
       #:phases ,#~(modify-phases %standard-phases
                     (add-after 'unpack 'disable-grammar-build
                       (lambda _
                         (setenv "HELIX_DISABLE_AUTO_GRAMMAR_BUILD" "1")))
                     (replace 'install
                       (lambda _
                         (let* ((bin (string-append #$output "/bin"))
                                (hx (string-append bin "/hx"))
                                (share (string-append #$output "/usr/share/helix"))
                                (runtime (string-append share "/runtime"))
                                (applications (string-append #$output
                                               "/share/applications")))
                           (install-file "target/release/hx" bin)
                           (install-file "contrib/Helix.desktop" applications)
                           (copy-recursively "runtime" runtime)
                           (wrap-program hx `("HELIX_RUNTIME" prefix (,runtime)))))))
       #:cargo-inputs (("rust-ahash" ,rust-ahash-0.8)
                       ("rust-anyhow" ,rust-anyhow-1)
                       ("rust-arc-swap" ,rust-arc-swap-1)
                       ("rust-bitflags" ,rust-bitflags-2)
                       ("rust-cassowary" ,rust-cassowary-0.3)
                       ("rust-cc" ,rust-cc-1)
                       ("rust-chardetng" ,rust-chardetng-0.1)
                       ("rust-chrono" ,rust-chrono-0.4)
                       ("rust-clipboard-win" ,rust-clipboard-win-5)
                       ("rust-content-inspector" ,rust-content-inspector-0.2)
                       ("rust-crossterm" ,rust-crossterm-0.27)
                       ("rust-dunce" ,rust-dunce-1)
                       ("rust-encoding-rs" ,rust-encoding-rs-0.8)
                       ("rust-etcetera" ,rust-etcetera-0.8)
                       ("rust-fern" ,rust-fern-0.6)
                       ("rust-futures-executor" ,rust-futures-executor-0.3)
                       ("rust-futures-util" ,rust-futures-util-0.3)
                       ("rust-gix" ,rust-gix-0.63)
                       ("rust-globset" ,rust-globset-0.4)
                       ("rust-grep-regex" ,rust-grep-regex-0.1)
                       ("rust-grep-searcher" ,rust-grep-searcher-0.1)
                       ("rust-hashbrown" ,rust-hashbrown-0.14)
                       ("rust-ignore" ,rust-ignore-0.4)
                       ("rust-imara-diff" ,rust-imara-diff-0.1)
                       ("rust-indoc" ,rust-indoc-2)
                       ("rust-libc" ,rust-libc-0.2)
                       ("rust-libloading" ,rust-libloading-0.8)
                       ("rust-log" ,rust-log-0.4)
                       ("rust-lsp-types" ,rust-lsp-types-0.95)
                       ("rust-nucleo" ,rust-nucleo-0.2)
                       ("rust-once-cell" ,rust-once-cell-1)
                       ("rust-open" ,rust-open-5)
                       ("rust-parking-lot" ,rust-parking-lot-0.12)
                       ("rust-pulldown-cmark" ,rust-pulldown-cmark-0.11)
                       ("rust-quickcheck" ,rust-quickcheck-1)
                       ("rust-regex" ,rust-regex-1)
                       ("rust-regex-cursor" ,rust-regex-cursor-0.1)
                       ("rust-ropey" ,rust-ropey-1)
                       ("rust-rustix" ,rust-rustix-0.38)
                       ("rust-serde" ,rust-serde-1)
                       ("rust-serde-json" ,rust-serde-json-1)
                       ("rust-signal-hook" ,rust-signal-hook-0.3)
                       ("rust-signal-hook-tokio" ,rust-signal-hook-tokio-0.3)
                       ("rust-slotmap" ,rust-slotmap-1)
                       ("rust-smallvec" ,rust-smallvec-1)
                       ("rust-smartstring" ,rust-smartstring-1)
                       ("rust-tempfile" ,rust-tempfile-3)
                       ("rust-termini" ,rust-termini-1)
                       ("rust-textwrap" ,rust-textwrap-0.16)
                       ("rust-thiserror" ,rust-thiserror-1)
                       ("rust-threadpool" ,rust-threadpool-1)
                       ("rust-tokio" ,rust-tokio-1)
                       ("rust-tokio-stream" ,rust-tokio-stream-0.1)
                       ("rust-toml" ,rust-toml-0.8)
                       ("rust-tree-sitter" ,rust-tree-sitter-0.22)
                       ("rust-unicode-general-category" ,rust-unicode-general-category-0.6)
                       ("rust-unicode-segmentation" ,rust-unicode-segmentation-1)
                       ("rust-unicode-width" ,rust-unicode-width-0.1)
                       ("rust-url" ,rust-url-2)
                       ("rust-which" ,rust-which-6)
                       ("rust-windows-sys" ,rust-windows-sys-0.52))))
    (native-inputs (list git))
    (home-page "https://helix-editor.com/")
    (synopsis "A post-modern modal text editor.")
    (description "A Kakoune / Neovim inspired editor, written in Rust.")
    (license (list license:mpl2.0))))

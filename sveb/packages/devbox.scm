(define-module (sveb packages devbox)
              #:use-module (guix licenses)
 							#:use-module (guix packages)
              #:use-module (guix git-download)
 							#:use-module (guix download)
  						#:use-module (guix build-system go)
)


(define-public devbox
  (package
    (name "devbox")
    (version "0.13.1")
    (source 
        (origin
   	      (method git-fetch)
          (uri
            (git-reference
              (url "https://github.com/jetify-com/devbox")
              (commit version)))
   	      (sha256 (base32 "0m2xw4iv487x8jcv229c06n2qyvmivr9sjwkajcmwygcyn0qdm1y"))))

    (build-system go-build-system)
    (arguments `(#:import-path "go.jetpack.io/devbox"))

    (synopsis "Development environment")
		(description "Instant, easy, and predictable development environments ")
    (home-page "https://www.jetify.com/devbox")
    (license asl2.0)))

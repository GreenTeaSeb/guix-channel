(define-module (sveb packages fonts)
              #:use-module ((guix licenses) #:prefix license:)
 							#:use-module (guix packages)
 							#:use-module (guix download)
  						#:use-module (guix build-system font)
)

(define-public font-jetbrainsmono-nerd
  (package
    (name "font-jetbrainsmono-nerd")
    (version "3.2.1")
    (source (origin
	      (method url-fetch)
	      (uri (string-append "https://github.com/ryanoasis/nerd-fonts/releases/download/v" version "/JetBrainsMono.tar.xz"))
	      (sha256 (base64 "bPiCK8HKGONLBleMdJnzgMAZ5v/Ig+7SbfX0mN/MQAY="))))
    (build-system font-build-system)
    (synopsis "Patched JetBrainsMono Nerd Font")
		(description "Font")
    (home-page "https://github.com/ryanoasis/nerd-fonts")
    (license license:silofl1.1)))

(define-public font-monaspace-nerd
  (package
    (name "font-monaspace-nerd")
    (version "3.2.1")
    (source (origin
	      (method url-fetch)
	      (uri (string-append "https://github.com/ryanoasis/nerd-fonts/releases/download/v" version "/Monaspace.tar.xz"))
	      (sha256 (base64 "5dLoGA1d8f5HO1mO2sX2fOOLHZBiSJNus4bdMyozg0Y="))))
    (build-system font-build-system)
    (synopsis "Patched Monaspace Nerd Font")
		(description "Font")
    (home-page "https://github.com/ryanoasis/nerd-fonts")
    (license license:silofl1.1)))


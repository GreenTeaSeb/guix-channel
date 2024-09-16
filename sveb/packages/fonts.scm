(define-module (sveb packages font-jetbrainsmono-nerd)
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
	      (uri (string-append "https://github.com/ryanoasis/nerd-fonts/releases/download/v" version "/JetBrainsMono.zip"))
	      (sha256 "6cf8822bc1ca18e34b06578c7499f380c019e6ffc883eed26df5f498dfcc4006")))
    (build-system font-build-system)
    (synopsis "Patched JetBrainsMono Nerd Font")
		(description "Font")
    (home-page "https://github.com/ryanoasis/nerd-fonts")
    (license license:silofl1.1)))
    
font-jetbrainsmono-nerd

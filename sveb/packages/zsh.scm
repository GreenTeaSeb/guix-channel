(define-module (sveb packages zsh)
  #:use-module (gnu packages shells)
  #:use-module (gnu packages bash)
  #:use-module (guix packages)
  #:use-module (guix git-download)
  #:use-module (guix build-system copy)
  #:use-module ((guix licenses) #:prefix license:))

(define-public zsh-powerlevel10k
  (package
   (name "zsh-powerlevel10k")
   (version "1.20.0")
   (home-page "https://github.com/romkatv/powerlevel10k")
   (source (origin
	    (method git-fetch)
	    (uri (git-reference
		  (url "https://github.com/romkatv/powerlevel10k")
		  (commit (string-append "v" version))))
	    (file-name (git-file-name name version))
	    (sha256
	     (base32
	      "1ha7qb601mk97lxvcj9dmbypwx7z5v0b7mkqahzsq073f4jnybhi"))))
   (build-system copy-build-system)
   (arguments
    `(#:install-plan `(("powerlevel10k.zsh-theme" "share/zsh/plugins/zsh-powerlevel10k/")
		       ("powerlevel9k.zsh-theme" "share/zsh/plugins/zsh-powerlevel10k/")
		       ("config" "share/zsh/plugins/zsh-powerlevel10k/")
		       ("gitstatus" "share/zsh/plugins/zsh-powerlevel10k/")
		       ("internal" "share/zsh/plugins/zsh-powerlevel10k/"))))
   (synopsis "A fast reimplementation of Powerlevel9k ZSH theme")
   (description "To make use of this derivation, use
      \"source\" zsh-powerlevel10k \"/share/zsh/plugins/zsh-powerlevel10k/powerlevel10k.zsh-theme\"")
   (license license:expat)))

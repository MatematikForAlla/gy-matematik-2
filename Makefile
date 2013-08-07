# $Id$
# Author:	Daniel Bosk <daniel@bosk.se>
# Date:		5 Aug 2013

SERVER= 	secure.itm.miun.se
PUBDIR= 	/home/danbos/www
CATEGORY= 	pub

DOCUMENTS=	matematik-2.pdf
FILES=		matematik-2.tex frontmatter.tex backmatter.tex matematik-2.bib
FILES+= 	preface.tex
FILES+= 	intro.tex
FILES+= 	logaritm.tex algebra.tex komplexa.tex
FILES+= 	linjekvsys.tex expekv.tex andragradekv.tex
FILES+= 	kurvor.tex likform.tex
FILES+= 	andragradsfunk.tex funkgraf.tex
FILES+= 	normalfordeln.tex stdavvik.tex regression.tex

USE_LATEXMK= 	yes
USE_BIBLATEX= 	yes

matematik-2.pdf matematik-2.ps: ${FILES}

clean:
	${RM} figs/*-converted-to.pdf
	${RM} matematik-2-1.asy matematik-2-1.pdf matematik-2.pre

miun.depend.mk:
ifeq (${MAKE},gmake)
	lynx -dump http://ver.miun.se/build/$@ > $@
else
	wget http://ver.miun.se/build/$@
endif

include miun.depend.mk
include miun.docs.mk

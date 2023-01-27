PKG = SB

$(PKG).gfn: $(PKG).inp $(PKG).spec $(PKG)_help.txt $(PKG)_sample.inp
	gretlcli --makepkg $(PKG).inp

install: $(PKG).gfn
	echo pkg install $(PKG).gfn --local | gretlcli -b -

#clean:
#	rm -f $(PKG).zip

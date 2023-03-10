%:
	pdflatex $@
	bibtex $@
	pdflatex $@
	pdflatex $@

clean:
	-rm *.nlo *.nls  *.ilg *.nav *.toc *.snm *.aux *.bbl *.blg *.log *.out *.vrb 
	-rm Appendix/*.log Appendix/*.blg Appendix/*.bbl Appendix/*.aux 
	-rm parts/*.log parts/*.blg parts/*.bbl parts/*.aux 
	-rm section_paper/*.log section_paper/*.blg section_paper/*.bbl section_paper/*.aux *synctex.g *pdf *synctex.gz *.lof *.lot parts/*aux

proper: clean
	-rm Asbtract.pdf 
	-rm rapport_bib.pdf
	-rm final-2.pdf
	-rm IFP_pres.pdf
	-rm Kobabstract.pdf
	-rm nearest_particles_statistic_2.pdf
	-rm nearest_particles_statistic.pdf
	-rm note_de_calcul.pdf
	-rm study_on_surface_tension.pdf
	-rm The_hybride_model.pdf
%:
	pdflatex $@
	bibtex $@
	pdflatex $@
	pdflatex $@

clean:
	-rm *.nlo *.nls  *.ilg *.nav *.toc *.snm *.aux *.bbl *.blg *.log *.out *.vrb *.tdo 
	-rm Appendix/*.log Appendix/*.blg Appendix/*.bbl Appendix/*.aux 
	-rm parts/*.log parts/*.blg parts/*.bbl parts/*.aux 
	-rm section_paper/*.log section_paper/*.blg section_paper/*.bbl section_paper/*.aux *synctex.g *pdf *synctex.gz *.lof *.lot parts/*aux

proper: clean
	-rm Asbtract.pdf 
	-rm rapport_bib.pdf
	-rm Prabu_Nott_notes.pdf
	-rm IFP_pres.pdf
	-rm IFP_these.pdf
	-rm Kobabstract.pdf
	-rm note_de_calcul.pdf
	-rm study_on_surface_tension.pdf
	-rm The_hybride_model_diapo.pdf
	-rm The_hybride_model_for_fluid_particles.pdf
	-rm Pseudo_turb.pdf
	-rm ictam2024_latex_template.pdf
	-rm Energy_balance_equaitons.pdf
	-rm Anisotropic_particles.pdf

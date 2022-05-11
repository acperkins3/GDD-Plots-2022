for i in {1..1000}
do
Rscript -e "rmarkdown::render('GDD-Plots-2022.Rmd')"
git add .
git commit -m "Daily updates"
git push
sleep 43200
done

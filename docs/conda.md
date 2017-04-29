# Everything conda

Rather scattered documentation over at: [Anaconda.org](https://docs.continuum.io/anaconda-cloud/using) -- hides some really useful functionality.

```bash
wget https://repo.continuum.io/miniconda/Miniconda3-latest-MacOSX-x86_64.sh


conda update conda
conda config --set always_yes yes
conda config --append channels conda-forge

Add the `-q` flag can make this install quietly.

packages='pip
anaconda-client
anaconda-project
cookiecutter
jupyter
ipyparallel
ipython-sql
notebook
ipywidgets
jupyter_contrib_nbextensions
pyparsing
matplotlib
seaborn
xlrd
mkl
mpld3
pandas
qgrid
pivottablejs
scikit-learn
scipy
numpy
statsmodels
sqlalchemy
tqdm'

pip_only='missingno pandas-profiling nbdime'

conda create --name py2 python=2 "${packages}"
conda create --name py3 python=3 "${packages}"

for pykernel in py2 py3;
do
    source activate "${pykernel}"
    pip install $pip_only
    ipython kernel install --display-name "${pykernel}" --name "${pykernel}"
    source deactivate
done
```

## Create publically available conda env

Have to have a user at http://anaconda.org/


```bash
pykernel=py3
conda env export -n "${pykernel}" > environment.yml
# put your username not mine (qwpbqoiq)
anaconda upload environment.yml -u qwpbqoiq
```

## Create publically available conda env


```bash
anaconda upload autoreload-example.ipynb
anaconda download username/my-notebook
```


## Let others install

```bash
conda update conda
conda config --append channels conda-forge
conda install anaconda-client
conda env create qwpbqoiq/py3
source activate py3
```



## Bonus

https://conda.io/docs/using/envs.html#linux-and-macos


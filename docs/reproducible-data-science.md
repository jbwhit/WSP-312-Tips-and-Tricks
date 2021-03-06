# Reproducible Data Science

This series of videos is excellent: https://jakevdp.github.io/blog/2017/03/03/reproducible-data-analysis-in-jupyter/ -- watch it and follow along multiple times. In that vein, check out both [cookiecutter](https://drivendata.github.io/cookiecutter-data-science/) and [anaconda-project](http://anaconda-project.readthedocs.io/).

## Anaconda Project

Relatively new way of creating projects to be shared among teams: http://anaconda-project.readthedocs.io/en/latest/tutorial.html

Have trouble with the data collection piece, but here's where I am currently: https://github.com/jbwhit/coal-exploration-2

```bash
$ cookiecutter https://github.com/drivendata/cookiecutter-data-science
project_name [project_name]: coal-exploration
repo_name [coal-exploration]: coal-exploration-2
author_name [Your name (or your organization/company/team)]: Jonathan
description [A short description of the project.]: Coal production
Select open_source_license:
1 - MIT
2 - BSD
3 - Not open source
Choose from 1, 2, 3 [1]:
s3_bucket [[OPTIONAL] your-bucket-for-syncing-data (do not include 's3://')]:
Select python_interpreter:
1 - python
2 - python3
Choose from 1, 2 [1]: 2


$ cd coal-exploration-2/

$ anaconda-project init
Project configuration is in /Users/jonathan/projects/coal-exploration-2/anaconda-project.yml


anaconda-project add-download MONTHLY https://www.eia.gov/dnav/pet/hist_xls/WCRFPUS2w.xls


```





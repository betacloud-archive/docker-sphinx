import datetime
import os

DOCUMENT = os.environ.get('DOCUMENT', 'index')

extensions = ['sphinxcontrib.blockdiag', 'sphinxcontrib.nwdiag', 'sphinx.ext.todo']
source_suffix = '.rst'
master_doc = DOCUMENT
project = DOCUMENT
copyright = u'2018-2019, Betacloud Solutions GmbH'
author = u'Betacloud Solutions GmbH'
version = datetime.datetime.today().strftime('%Y.%m.%d')
release = ''
language = 'en'
exclude_patterns = []
pygments_style = 'sphinx'
todo_include_todos = False
html_theme = 'flask'
html_show_sphinx = False
html_show_sourcelink = False
html_show_copyright = True
htmlhelp_basename = DOCUMENT
html_theme_options = {}
today_fmt = "%d.%m.%Y"
latex_elements = {
  "papersize": "a4paper",
  "preamble": r'''
\usepackage{lastpage}
\usepackage{fancyhdr}
\pagestyle{fancy}
\fancyhf{}

\rhead{\includegraphics[width=1cm]{/betacloud}}

\lfoot{\footnotesize{Betacloud Solutions GmbH / Teckstrasse 62 / D-70190 Stuttgart / info@betacloud-solutions.de}}
\rfoot{\footnotesize{\thepage\ / \pageref{LastPage}}}
'''
}
latex_documents = [
  (DOCUMENT,
   "%s.tex" % DOCUMENT,
   '',
   os.environ.get("CUSTOMER", "Betacloud Solutions GmbH"),
   "howto"
  )
]
latex_use_xindy = True

import datetime
import os

DOCUMENT = os.environ.get('DOCUMENT', 'index')

extensions = ['sphinxcontrib.blockdiag', 'sphinxcontrib.nwdiag', 'sphinx.ext.todo']
source_suffix = '.rst'
master_doc = DOCUMENT
project = DOCUMENT
copyright = u'2018, Betacloud Solutions GmbH'
author = u'Betacloud Solutions GmbH'
version = datetime.datetime.today().strftime('%Y.%m.%d')
release = ''
language = 'de'
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
  "preamble": "\input{/preamble.tex}",
}
latex_documents = [
  (DOCUMENT,
   "%s.tex" % DOCUMENT,
   os.environ.get("TITLE", "Dokumentation"),
   os.environ.get("CUSTOMER", "Betacloud Solutions GmbH"),
   "howto"
  )
]

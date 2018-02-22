import datetime
import os

extensions = ['sphinxcontrib.blockdiag', 'sphinxcontrib.nwdiag', 'sphinx.ext.todo']
source_suffix = '.rst'
master_doc = os.environ.get('DOCUMENT', 'index')
project = os.environ.get('DOCUMENT', 'index')
copyright = u'2018, Betacloud Solutions GmbH'
author = u'Betacloud Solutions GmbH'
version = datetime.datetime.today().strftime('%Y.%m.%d')
release = datetime.datetime.today().strftime('%Y.%m.%d')
language = 'en'
exclude_patterns = []
pygments_style = 'sphinx'
todo_include_todos = False
html_theme = 'flask'
html_show_sphinx = False
html_show_sourcelink = False
html_show_copyright = True
htmlhelp_basename = 'documentation'
html_theme_options = {}
latex_elements = {}

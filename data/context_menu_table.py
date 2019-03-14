# coding: utf-8

# Usage:
# > activate _pytablewriter
# > cd E:\Programming\Sphinx\git\dtocean.github.io\data
# > python context_menu_table.py > context_menu_table.rst

import pytablewriter
from pytablewriter import Align

if __name__ == "__main__":
    writer = pytablewriter.RstGridTableWriter()
    writer.from_csv("context_menu_table.csv")
    writer.write_table()

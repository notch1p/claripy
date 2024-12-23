import re
import glob


def modify(fp: str):
    with open(fp, "r") as c:
        cc = c.read()
    chunk1 = re.sub(
        r"\(maximize (\(.+\))\)",
        r"(define-fun goal () (_ BitVec 64) \1) " + "\n(maximize goal)",
        cc,
        flags=re.S,
    )
    chunk1 = re.sub(
        r"\(minimize (\(.+\))\)",
        r"(define-fun goal () (_ BitVec 64) \1) " + "\n(minimize goal)",
        chunk1,
        flags=re.S,
    )
    with open(fp, "w") as c:
        c.write(chunk1)


for fp in glob.glob("outputp/*/*", recursive=True):
    modify(fp)

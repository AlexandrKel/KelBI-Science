#Pattern(*,* $,* $ *,* $ * $,* $ * $ *,* $ * $,* $ *, * $, * )


def halfpiramid (rows):
    for i in range(0, rows):
        for j in range(0, i + 1):
            print("*$"[j%2], end=' ')
        print("\r")
    
    for i in range(rows, 0, -1):
        for j in range(0, i - 1):
            print("*$"[j%2], end=' ')
        print("\r")

halfpiramid (5)

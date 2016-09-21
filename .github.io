def dfs(graph, start_pos, stop_pos):
    to_visit = [start_pos]
    visited = set()
    moves = []
    col_len = len(graph[0])
    row_len = len(graph)
    while to_visit:
        v = to_visit.pop()
        if v in visited:
            continue
        visited.add(v)
        moves.append(v)
        
        a, b = v
        if (a, b) == stop_pos:
            return moves
        # follow convention: UP, LEFT, RIGHT, DOWN
        up = (a-1, b)
        left = (a, b-1)
        right = (a, b+1)
        down = (a+1, b)
        
        for move in (up, left, right, down):
            x, y = move
            if 0<=x<=row_len-1 and 0<=y<=col_len-1 and graph[x][y]!='%':
                to_visit.append(move)

if __name__ == '__main__':
    start_pos = tuple(map(int, raw_input().split()))
    food_pos = tuple(map(int, raw_input().split()))
    rows, _ = map(int, raw_input().split())
    
    matrix = []
    for row in xrange(rows):
        matrix.append(list(raw_input()))
    visited = dfs(matrix, start_pos, food_pos)
    x = len(visited)
    print x
    for pos in visited:
        print pos[0], pos[1]
    print x-1
    for pos in visited:
print pos[0], pos[1]

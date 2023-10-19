if(@square[0][0] == @square[0][1] && @square[0][1] == @square[0][2] && @square[0][0] == token)  
  (@square[1][0] == @square[1][1] && @square[1][1] == @square[1][2] && @square[1][0] == token)  
  (@square[2][0] == @square[2][1] && @square[2][1] == @square[2][2] && @square[2][0] == token)  
  (@square[0][0] == @square[1][0] && @square[1][0] == @square[2][0] && @square[0][0] == token)  
  (@square[0][1] == @square[1][1] && @square[1][1] == @square[2][1] && @square[0][1] == token)  
  (@square[0][2] == @square[1][2] && @square[1][2] == @square[2][2] && @square[0][2] == token)  
  (@square[0][0] == @square[1][1] && @square[1][1] == @square[2][2] && @square[0][0] == token) || 
  (@square[0][2] == @square[1][1] && @square[1][1] == @square[2][0] && @square[0][2] == token)
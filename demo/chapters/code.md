## Code Snippets

Here's a code snippet:

```rb
def hello_world
  puts "hello world!"
end

hello_world
```

Here's a larger code snippet:

```
it_inner_fin = 5;
it_outter_fin = 3;

ar_it_cols_idx = 1:1:(it_inner_fin*it_outter_fin)

ar_it_cols_idx = 1x15    
     1     2     3     4     5     6     7     8     9    10    11    12    13    14    15

mt_it_cols_idx = reshape(ar_it_cols_idx, [it_outter_fin, it_inner_fin])'

mt_it_cols_idx = 5x3    
     1     2     3
     4     5     6
     7     8     9
    10    11    12
    13    14    15

mt_it_cols_idx(:)'

ans = 1x15    
     1     4     7    10    13     2     5     8    11    14     3     6     9    12    15
```
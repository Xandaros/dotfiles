"syn region texZone start="\\begin{lstlisting}" end="\\end{lstlisting}\|%stopzone\>"
"syn region texZone  start="\\[lL]stinputlisting" end="{\s*[a-zA-Z/.0-9_^]\+\s*}"
"syn region texZone  start="\\[lL]stinline" end="{\s*[a-zA-Z/.0-9_^]\+\s*}"
"syn match texInputFile "\\lstinline\s*\(\[.*\]\)\={.\{-}}" contains=texStatement,texInputCurlies,texInputFileOpt

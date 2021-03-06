rule("url", r"(?<!\\url{)(\bhttps?://)[^\s.]+\.[-A-Za-z0-9+&@#/%?=~_|!:,.;]+", "Wrap URLs with the \\url command.")
rule("citation_nouns",r"\b(:?in|as|on|by)[ ~]\\cite{", "Avoid using citations as nouns.")
rule("ref_usage", r"\\ref{", "Avoid \\\\ref; use \\cref.")
rule("mutiply",r"\d+x\d+", "When multiplying, do not use 'x'.")
rule("duplicate",r"\b([a-z]+)\s+\1\b(?![^{]*})", "Remove duplicated word.")
rule("use_cite", r"\\cite{.+?}\s?\\cite{", "Use \\cite{...,...} for multiple citations.")
rule("pipe_char",r"\|", "Avoid using |. Use \\abs.")
rule("double_dollar",r"\$\$", "Avoid using \$\$. Use \\[.")
rule("no hyphen ith",r"-th ", "Change \$i\$-th to \$i\$th.")

# Spirit Island · World Tour

Site para registrar o World Tour do Spirit Island (um espírito vence os 8 adversários no nível 6) e sortear o próximo jogo entre as combinações que ainda faltam.

No ar em: https://juliuscaffaro.github.io/spirit-island-world-tour/

- `index.html` — o site inteiro (HTML, CSS e JS).
- `config.js` — URL e publishable key do Supabase.
- `supabase.sql` — cria a tabela `progress` com RLS (cada usuário só vê o próprio progresso).

## Como funciona o salvamento
- Você entra com o e-mail (link mágico do Supabase) e o progresso sincroniza entre aparelhos.
- Sem login, salva só no navegador (localStorage). No primeiro login, o que estiver no navegador sobe para a nuvem.

## Supabase
- Projeto: `spirit-island-world-tour` (plano grátis).
- Authentication → URL Configuration → Site URL aponta para o endereço do GitHub Pages.
- Opcional: depois do seu primeiro login, em Authentication → Sign In / Providers desligue "Allow new users to sign up".
- Projetos grátis pausam depois de ~1 semana sem uso; é só reativar no painel.

## Publicar
GitHub Pages servindo a branch `main`, pasta raiz. Qualquer commit na `main` atualiza o site.

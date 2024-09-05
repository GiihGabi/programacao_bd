select
	a.ra,
	a.nome,
    a.endereco,
    d.nome,
    escola.funRetMedia(a.ra, ad.disciplina) as media
from
	escola.aluno a join
    escola.alunodisciplina ad on a.ra = ad.ra join
    escola.disciplina d on d.codigo = ad.disciplina
where
	a.ra = 1234567;

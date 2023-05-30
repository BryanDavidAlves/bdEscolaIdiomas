USE bdEscolaIdiomas

/* EXERCÍCIO 1*/
SELECT nomeAluno, nomeCurso FROM tbAluno
	INNER JOIN tbMatricula ON tbMatricula.idMatricula=tbMatricula.idAluno
		INNER JOIN tbTurma ON tbTurma.idCurso=tbTurma.idTurma
			INNER JOIN tbCurso ON tbCurso.idCurso=tbCurso.idCurso

/* EXERCICIO 2*/
SELECT tbCurso.nomeCurso, COUNT(tbAluno.idAluno) AS quantidade_alunos
FROM tbAluno
INNER JOIN tbMatricula ON tbAluno.idAluno = tbMatricula.idAluno
INNER JOIN tbTurma ON tbMatricula.idTurma = tbTurma.idTurma
INNER JOIN tbCurso ON tbTurma.idCurso = tbCurso.idCurso
GROUP BY tbCurso.nomeCurso;

/* EXERCICIO 3*/
SELECT tbTurma.nomeTurma, COUNT(tbAluno.idAluno) AS quantidade_alunos
FROM tbAluno
INNER JOIN tbMatricula ON tbAluno.idAluno = tbMatricula.idAluno
INNER JOIN tbTurma ON tbMatricula.idTurma = tbTurma.idTurma
GROUP BY tbTurma.nomeTurma;

/* EXERCICIO 4*/
SELECT COUNT(tbAluno.idAluno) AS quantidade_alunos
FROM tbAluno
INNER JOIN tbMatricula ON tbAluno.idAluno = tbMatricula.idAluno
WHERE MONTH(tbMatricula.dataMatricula) = 5 AND YEAR(tbMatricula.dataMatricula) = 2016;

/* EXERCICIO 5*/
SELECT tbAluno.nomeAluno, tbTurma.nomeTurma
FROM tbAluno
INNER JOIN tbMatricula ON tbAluno.idAluno = tbMatricula.idAluno
INNER JOIN tbTurma ON tbMatricula.idTurma = tbTurma.idTurma
ORDER BY tbAluno.nomeAluno;

/* EXERCICIO 6*/
SELECT tbCurso.nomeCurso, tbTurma.horarioTurma
FROM tbCurso
INNER JOIN tbTurma ON tbCurso.idCurso = tbTurma.idCurso;

/* EXERCICIO 7*/ 
SELECT tbAluno.naturalidadeAluno, COUNT(tbAluno.idAluno) AS quantidade_alunos
FROM tbAluno
GROUP BY tbAluno.naturalidadeAluno;

/* EXERCICIO 8*/
SELECT tbAluno.naturalidadeAluno, COUNT(tbAluno.idAluno) AS quantidade_alunos
FROM tbAluno
GROUP BY tbAluno.naturalidadeAluno;

/* EXERCICIO 9*/
SELECT tbAluno.nomeAluno
FROM tbAluno
INNER JOIN tbMatricula ON tbAluno.idAluno = tbMatricula.idAluno
INNER JOIN tbTurma ON tbMatricula.idTurma = tbTurma.idTurma
INNER JOIN tbCurso ON tbTurma.idCurso = tbCurso.idCurso
WHERE tbAluno.nomeAluno LIKE 'A%' AND tbCurso.nomeCurso = 'Ingles';

/* EXERCICIO 10*/
SELECT COUNT(tbAluno.idAluno) AS quantidade_alunos
FROM tbAluno
INNER JOIN tbMatricula ON tbAluno.idAluno = tbMatricula.idAluno
WHERE YEAR(tbMatricula.dataMatricula) = 2016;
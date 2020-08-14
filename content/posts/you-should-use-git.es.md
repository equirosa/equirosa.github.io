---
title: "Deberías Usar Git"
date: 2020-06-30T10:40:52-06:00
draft: false
---
He notado que, en la universidad a la que asisto, muchos de mis compañeros
tienen problemas aprendiendo a usar Git (o cualquier otro VCS, en realidad) y,
por lo tanto, optan por simplemente no usarlos del todo.

Creo que esto es un error, al no usar algún tipo de control de versiones, te estás sometiendo a una gran lista de dificultades y problemas si simplemente permites que tu falta de comodidad con tal herramienta te domine.

## Manejando veriones de archivos
Este parece ser el argumento obvio que usar para apoyar una herramienta con "control de versiones" en su nombre, pero he notado que muchas personas que no usan un VCS tienden a intentar compensar esta falta de control mediante la producción de **múltiples copias del mismo documento**.
Esto no es particularmente malo en sí, e inicialmente parece ser una solución inteligente.
Sin embargo, una buena porción de proyectos en mi universidad tienden a extenderse entre 3 y 15 semanas. ¿Confiarías en tí mismo para poder manejar múltiples versiones de varios proyectos efectivamente? ¿Todas?

Aquí es donde entra un VCS, necesitar un directorio lleno de

	proyecto.java
	proyecto-version2.java
	proyecto-version3.java

obstaculizando tu directorio de trabajo. (En el ejemplo uso Java, pero en realidad es porque es lo que mi universidad utiliza como un lenguaje introductorio.)
Git, mi VCS de preferencia, maneja estas versiones al manejar cambios que has hecho progresivamente mediante "commits".
Estos son "paquetes" atómicos de cambios que decides hacer permanentes en tu proyecto. De esta manera, Git lentamente construye un historial de todos los cambios que has hecho desde que hiciste el primer commit.

### Dando vuelta atrás
La razón principal por la que verás que la gente utiliza múltiples versiones de un archivo es el deseo de poder "dar vuelta atrás" con respecto a cualquier cambio que hayas hecho a dicho archivo. Git también se encarga de esto de manera muy efectiva. Simplemente debes mirar ti historial (o tu `git log`), escoger el commit al que quieres regresar, declarar el comando y **boom**, ¡has viajado hacia atrás en el tiempo!

## Respaldos
Otra de los atractivos principales de un VCS es la capacidad para almacenar respaldos remotos en caso de un evento catastrófico.
He escuchado muchas historias sobre como un ex-compañero de equipo furioso decidió deshacerse por completo del repositorio del proyecto, o sobre como ellos mismos destruyeron su proyecto de su propia máquina accidentalmente.

Afortunadamente, un VCS también toma eso en cuenta.
Al permitir el uso de repositorios remotos, un VCS hace fácil la tarea de de almacenar todo tu historial de proyectos, así como su estado actual.
Todo lo que necesitas es usar un servidor remoto como [Codeberg](https://codeberg.org) or [Sourcehut](https://sr.ht).
Estos se van a encargar de almacenar tu "repo" con seguridad.

Teniendo este sistema operando, puedes respaldar tus commits al simplemente correr `git push`, y Git se encargará de mover los cambios que has hecho localmente a tu repositorio remoto. Si deseas descargar los cambios que tú has (o alguien más ha) hecho, entonces simplemente corres `git pull`.

Entonces, si algo le sucede a mi repo local, el remoto seguirá estando intacto. Los únicos commits perdidos serían los que no había subido al momento de su pérdida.
Vice versa, si algo catastrófico le sucede al repo remoto (o remotos, Git permite tener múltiples repositorios remotos), entonces solamente los commits que se perderían serían los que no había descargado aún.

**NOTA:** Recuerda que si no subes regularmente tus cambios a tu repositorio remoto,
entonces no hay nada que Git pueda hacer para salvarte.

## Conclusión
Git es capaz de muchas más cosas de las que mencioné aquí,
pero los beneficios que listé habrían salvado muchos proyectos en el 90% de los casos.
Siendo honesto, simplemente te estás privando de un manejo apropiado de proyectos
si decides no usar un VCS.
Puede que no sea la herramienta más sencilla de aprender, pero será la herramienta
que más desees tener cuando algo vaya mal con tu proyecto.
Si eres un estudiante en algo que tenga que ver con manejar archivos en texto plano
como código fuente, en serio, **deberías usar Git!**

# FinalRelativity
Trabajo final del curso de Relatividad 2. (2022-II)

## Primeros pasos para la interacción con Git y GitHub

1. Crear una cuenta en la plataforma de [GitHub](https://github.com/) con tu correo.
2. Descargar Git desde este [enlace](https://git-scm.com/download/win) según los requerimientos de tu PC y eguir los pasos para la instalación.

## Configuración inicial en Git

1. Configuramos nuestras credenciales `user.email` y `user.name`
    
       $ git config --global user.name <your name>

       $ git config --global user.email <your email>

    Verificamos nuestras credenciales
       
       $ git config --global -l
       user.name=<your_name>
       user.email=<your_email>

2. Para sincronizar con GitHub debemos asignar un tipo de comunicación con la plataforma, para ello crearemos una llave SSH de la siguiente manera

       $ ssh-keygen -t rsa -b 4096 -C "<correo registrado en GitHub>"

    Dar enter a todas las opciones que salgan. Activamos el gestor de comunicación

       $ eval $(ssh-agent -s)
       Agent pid 762
    
    Agregamos la llave a nuestro agente

       $ ssh-add ~/.ssh/id_rsa

    Copiamos la llave (pública) y pegamos en GitHub 

       $ clip < ~/.ssh/id_rsa.pub

    Compartan los nombres de sus usuarios de GitHub para adignar los permisos para el trabajo colaborativo. 

    Les llegara una invitación a traves de GitHub, la cual deben aceptar.

## Líneas de código necesarios para el trabajo colaborativo

1. Nos dirigimos al [siguiente repositorio](https://github.com/David-Zg/FinalRelativity), `Code` y `SSH`, copiamos el enlace.

    ![Image01](/img/readme01.PNG)

2. Clonamos el repositorio para el trabajo local
        
        $ git clone git@github.com:David-Zg/FinalRelativity.git
    
    Listo, tenemos el projecto en local.

3. Creamos una rama (branch) para el trabajo individual (el tema que nos toque)
       
       $ git branch <nombre da la nueva rama>
    >Al crear una rama esta se crea con todo el historial actualizado en GitHub.

     Para dirigirte a la nueva rama que creaste

       $ git checkout <nombre de la nueva rama>
    
    O puedes simplificar los dos comandos anteriores con el siguiente
       
       $ git checkout -b <nombre de la rama>

    Para ver todas las ramas 

       $ git branch
    
    Subir la rame que creaste a GitHub

       $ git push -u origin <nombre de la nueva rama>


    Desde ahora trabajaras en tu respectiva rama. Podrás hacer cualquier cambio sin afectar a la plantilla principal.

### La importancia de los **COMMITS**
---
1. Cuando realizamos los cambios del archivo, claro está desde local, NO se guardarán autamáticamente en GitHub y en Git. Es necesario indicarle que archivos hará "seguimiento" el control de versiones Git. 

    Dentro de nuestro directorio clonado FinalRelativity tenemos los siguientes archivos

    ![Directorio](/img/readme02.PNG)

    Al ejecutar el archivo `.tex` se generan diferentes archivos

   ![DirectorioLatex](/img/readme03.PNG)

    Bien, algo importante, **no es necesario hacer seguimiento a todos los archivos generados despues de ejecutar LaTeX** solo nos importan dos archivos, las cuales estaremos editando constantemente, que son: 

   - Trabajo_final_Relatividad-II.tex
   - biblio.bib

    > El archivo `.pdf` no es posible administrarlo con el versióno de control Git, porque Git solo puede guardar los historiales de archivos tipo *texto plano*. Por esta razón el `.pdf` no estará en seguimiento.
---
2. Verificación y subida de archivos

    Verificamos que archivos se han modificado
       
       $ git status

    ![Readme04](/img/readme04.PNG)
    
    Nos indica que tres archivos se han modificado últimamnte. Ahora confirmaremos para que se guardan en el historial y posteriormente saber que se hizo en ese momento. "Lo llamo congelamiento"
    
    Agregamos los archivos al congelamiento

       $ git add README.md Trabajo_final_Relatividad-II.tex biblio.bib
       $ git status

    ![Readme05](/img/readme05.PNG)

    > Los archivos de verde están listos para su "congelamiento"

       $ git commit -m <"Mensaje de identificacion">

    ![Readme06](/img/readme06.PNG)

    > Fueron agregados tres nuevos archivos.

3. Tenemos que subir esto a GitHub para poder verlo todos los que colaboramos con el trabajo.

       $ git push origin <nombre de tu rama>

    ![Readme07](/img/readme07.PNG)
    
    > Fueron subidos con exito.

    ![Readme07](/img/readme08.PNG)


    CONTINUARÁ...!!!
    
## Líneas adicionales
1. Para verificar todos los **commits** de cada una de las ramas
       
       $ git show-branch

2. Mezclar los cambios de una rama a la actual (ubicación en la rama actual `git branch`)

       $ git merge prueba
       >...
       $ git push origin main
    
    > En este caso estamos trayendo la rama *prueba* mezclando con la rama *main*. Y cargamos al repositorio GitHub.

3. Borrar ramas

       $ git branch -d <rama borrar>
       $ git branch -D <rama borrar>

       $ git push origin --delete <rama borrar>

4. Descargar las nuevas ramas
 
       $ git pull
       $ git branch -a
    
    > La rama descargada aparece como `remotes/origin/<nombre de la rama>`
@echo off
REM Activar entorno virtual (ajusta esta ruta si es diferente)
call .venv\Scripts\activate.bat

REM Construir el libro
jupyter-book build docs_raw

REM Sincronizar contenido de html a docs (eliminar archivos obsoletos)
robocopy docs_raw\_build\html docs /MIR

REM Asegurarse de que .nojekyll exista
echo. > docs\.nojekyll

REM Eliminar carpeta _build
rmdir /S /Q docs_raw\_build

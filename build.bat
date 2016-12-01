::LPP Builder Script
::TOUPPER Modification by gnmmarechal
::This version of the script is not supported or endorsed by Rinnegatamante
@echo LPP Builder Script v1.0 by gnmmarechal
@set /p title="Insert homebrew name: "
@set /p id="Insert homebrew title ID (4 characters): "
::To Uppercase
@SET STRING=%id%
@IF [%STRING%]==[] GOTO:EOF
@SET STRING=%STRING:a=A%
@SET STRING=%STRING:b=B%
@SET STRING=%STRING:c=C%
@SET STRING=%STRING:d=D%
@SET STRING=%STRING:e=E%
@SET STRING=%STRING:f=F%
@SET STRING=%STRING:g=G%
@SET STRING=%STRING:h=H%
@SET STRING=%STRING:i=I%
@SET STRING=%STRING:j=J%
@SET STRING=%STRING:k=K%
@SET STRING=%STRING:l=L%
@SET STRING=%STRING:m=M%
@SET STRING=%STRING:n=N%
@SET STRING=%STRING:o=O%
@SET STRING=%STRING:p=P%
@SET STRING=%STRING:q=Q%
@SET STRING=%STRING:r=R%
@SET STRING=%STRING:s=S%
@SET STRING=%STRING:t=T%
@SET STRING=%STRING:u=U%
@SET STRING=%STRING:v=V%
@SET STRING=%STRING:w=W%
@SET STRING=%STRING:x=X%
@SET STRING=%STRING:y=Y%
@SET STRING=%STRING:z=Z%
@SET id=%STRING%
::End of toupper
vita-mksfoex -s TITLE_ID=%id%00001 "%title%" param.sfo
copy /Y param.sfo /B build\sce_sys\param.sfo
7z a -tzip "%title%.vpk" -r .\build\* .\build\eboot.bin 

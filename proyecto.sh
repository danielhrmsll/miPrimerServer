#!/bin/bash
#Esta funcion muestra el menú
function _menu(){
  clear
  echo ""
  echo "Selecciona una opcion:"
  echo "-a. Agile"
  echo "-t. Tradicional"
  echo "x. Salir"
  echo "Ingresa una opción: "
}
#menu agile
function _menu_a(){
  clear
  echo ""
  echo "Selecciona una opcion:"
  echo "1. SCRUM"
  echo "2. X.P."
  echo "3. Kanban"
  echo "4. Crystal"
  echo "5. Salir al menu principal."
  echo "Ingresa una opción: "
}
#menu tradicional
function _menu_t(){
  clear
  echo ""
  echo "Selecciona una opcion:"
  echo "1. Cascada"
  echo "2. Espiral"
  echo "3. Modelo V"
  echo "4. Salir al menú principal."
  echo "Ingresa una opción: "
}
opc=""
until [ "$opc" = "x" ]
do
    case $opc in
        -a)
            opc_a=0
            until [ $opc_a -eq 5 ]
            do
                case $opc_a in
                    1)
                        echo "SCRUM"
                        ;;
                    2)
                        echo "X.P."
                        ;;
                    3)
                        echo "Kanban"
                        ;;
                    4)
                        echo "Crystal"
                        ;;
                    *)
                        _menu_a
                esac
                read opc_a
            done
            ;;
        -t)
            opc_t=0
            until [ $opc_t -eq 4 ]
            do
                case $opc_t in
                    1)
                          echo "Cascada"
                        ;;
                    2)
                        echo "Espiral"
                        ;;
                    3)
                        echo "Modelo V"
                        ;;
                    *)
                        _menu_t
                esac
                read opc_t
            done
            ;;
        *)
            _menu
    esac
    read opc
done

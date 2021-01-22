using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PruebaTecnica.Models
{
    /**
     * Clase que tiene como fin ser modelo de la información extraída de la base de datos
     */
    public class clsInfoUsuario
    {


        public string tipoDocumento { get; set; }
        public string numeroDocumento { get; set; }
        public string nombresYapellidos { get; set; }
        public string contratoLaboral{ get; set; }
        public string cargo { get; set; }
        public string riesgoLaboral { get; set; }
        public string inicioFechaContrato { get; set; }
        public string finFechaContrato { get; set; }
        public int salario { get; set; }

        public int periodoLaborado { get; set; }
        public int horasLaboradas { get; set; }
        public int horasExtras { get; set; }
        public int descuentosNomina { get; set; }

    }
}
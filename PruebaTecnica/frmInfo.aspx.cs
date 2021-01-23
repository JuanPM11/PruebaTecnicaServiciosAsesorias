using Npgsql;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Web.UI.WebControls;
using System.Configuration;

namespace PruebaTecnica
{
    public partial class frmInfo : System.Web.UI.Page
    {
        double dblSaludTrabajador, dblSaludEmpleador, dblPensionTrabajador, dblPensionEmpleador;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            string strNoDoc = Page.Request.Form["txtNumeroDoc"].ToString();

            try
            {
                string strcon = ConfigurationManager.ConnectionStrings["pruebatecnicaEntities"].ConnectionString;
                NpgsqlConnection con = new NpgsqlConnection(strcon);
                con.Open();

                NpgsqlCommand command = new NpgsqlCommand("Select * from contratoslaborales where numerodocumento=" + strNoDoc, con);
                command.ExecuteNonQuery();
                NpgsqlDataReader reader = command.ExecuteReader();

                while (reader.Read())
                {

                    int intTipoDoc = Int32.Parse(reader[4].ToString());
                    int intNoDco = Int32.Parse(reader[5].ToString());
                    string strApellidos1 = reader[6].ToString();
                    string strApellidos2 = reader[7].ToString();
                    string strNombres1 = reader[8].ToString();
                    string strNombres2 = reader[9].ToString();
                    int intIdContrato = Int32.Parse(reader[0].ToString());
                    int intIdCargo = Int32.Parse(reader[3].ToString());
                    int intArl = Int32.Parse(reader[2].ToString());
                    string fechaInicio = reader[10].ToString();
                    string fechaFin = reader[11].ToString();
                    int intSalario = Int32.Parse(reader[12].ToString());

                    lblTipoDocumento.Text = intTipoDoc.ToString();
                    lblNumeroDocumento.Text = intNoDco.ToString();
                    lblApellidosYnombres.Text = strApellidos1 + " " + strApellidos2 + " " + strNombres2 + " " + strNombres1;
                    lblContratoLaboral.Text = intIdContrato.ToString();
                    lblCargo.Text = intIdCargo.ToString();
                    lblArl.Text = intArl.ToString();
                    lblFechaInicioContrato.Text = fechaInicio.ToString();
                    lblFechaFinContrato.Text = fechaFin.ToString();
                    lblSalario.Text = "$" + intSalario.ToString();



                }
                con.Close();
            }
            catch (Exception ex)
            {
                String err = ex.Message.ToString();
            }

        }

        protected void btnCalcular_Click(object sender, EventArgs e)
        {

            string strNoDoc = Page.Request.Form["txtNoId"].ToString();
            if (strNoDoc != "")
            {
                int valor = Int32.Parse(strNoDoc);
                calculosCuartoPunto(valor);
            }
        }

        protected void btnDescuentosClick_Click(object sender, EventArgs e)
        {
            try
            {
                string strIdContrato = Page.Request.Form["txtIdContrato"].ToString();
                if (strIdContrato != "")
                {
                    string strcon = ConfigurationManager.ConnectionStrings["pruebatecnicaEntities"].ConnectionString;
                    NpgsqlConnection con = new NpgsqlConnection(strcon);
                    con.Open();
                    NpgsqlCommand command = new NpgsqlCommand("select salario,descuentos from contratoslaborales inner join novedadesnomina on contratoslaborales.idcontrato = novedadesnomina.idcontrato where novedadesnomina.idcontrato =" + strIdContrato, con);
                    command.ExecuteNonQuery();
                    NpgsqlDataReader reader = command.ExecuteReader();

                    while (reader.Read())
                    {

                        int intSalario = Int32.Parse(reader[0].ToString());
                        int intDescuentos = Int32.Parse(reader[1].ToString());

                        int res = intSalario - intDescuentos;
                        lblDescuento.Text = res.ToString();
                    }
                    con.Close();
                }

            }
            catch (Exception ex)
            {
                string strErr = ex.Message;
            }
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            try
            {
                string strNoId = Page.Request.Form["txtId"].ToString();
                string strPeriodoLaborado = Page.Request.Form["txtPeriodoLaborado"].ToString();
                string strHorasLaboradas = Page.Request.Form["txtHorasTotalLaboradas"].ToString();
                string strHorasExtras = Page.Request.Form["txtHorasExtras"].ToString();
                string strDescuentos = Page.Request.Form["txtDescuentosNomina"].ToString();

                string strcon = ConfigurationManager.ConnectionStrings["pruebatecnicaEntities"].ConnectionString;
                NpgsqlConnection con = new NpgsqlConnection(strcon);
                con.Open();
                NpgsqlCommand command = new NpgsqlCommand("select * from contratoslaborales where numerodocumento =" + Int32.Parse(strNoId), con);
                command.ExecuteNonQuery();
                NpgsqlDataReader reader = command.ExecuteReader();
                con.Close();
                while (reader.Read())
                {

                    int intRes = Int32.Parse(reader[0].ToString());
                }

                con.Open();
                NpgsqlCommand command2 = new NpgsqlCommand("UPDATE public.novedadesnomina SET  periodolaborado = "+ Int32.Parse(strPeriodoLaborado)+","+ " horaslaboradas= " + Int32.Parse(strHorasLaboradas) + "," + " horaextradiurna = " + Int32.Parse(strHorasExtras) + "," + " descuentos = " + Int32.Parse(strDescuentos) , con);
                command.ExecuteNonQuery();
                NpgsqlDataReader reader2 = command.ExecuteReader();
            }
            catch (Exception ex)
            {
                string strErr = ex.Message;
            }
            //1085252501
        }


        public void calculosCuartoPunto(int intSalario)
        {
            dblSaludEmpleador = intSalario * 0.125;
            dblSaludTrabajador = intSalario * 0.04;
            dblPensionEmpleador = intSalario * 0.16;
            dblPensionTrabajador = intSalario * 0.04;

            lblSaludValorEmpleador.Text = dblSaludEmpleador.ToString();
            lblSaludValorTrabajador.Text = dblSaludTrabajador.ToString();
            lblValorPensionEmpleador.Text = dblPensionEmpleador.ToString();
            lblValorPensionTrabajador.Text = dblPensionTrabajador.ToString();
        }
    }
}
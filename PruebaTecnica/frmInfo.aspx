<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmInfo.aspx.cs" Inherits="PruebaTecnica.frmInfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <style type="text/css">
        .auto-style3 {
            height: 148px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">

        <div class="auto-style3">
            <asp:Label ID="Label2" runat="server" Text="Punto1"></asp:Label>
            <br />
            <asp:Label ID="lblTitulo" runat="server" Text="Para buscar un registro, por favor ingrese el numero de documento"></asp:Label>
            <br />
            <table class="default">
                <tr>
                    <td>
                        <asp:Label ID="lblNoDoc" runat="server" Text="Numero de documento:"></asp:Label></td>
                    <td>
                        <input id="txtNumeroDoc" type="text" onkeypress='return event.charCode >= 48 && event.charCode <= 57' runat="server" /></td>
                    <td>
                        <asp:Button ID="btnBuscar" runat="server" Text="Buscar" OnClick="btnBuscar_Click" />
                    </td>
                </tr>
            </table>

        </div>

        <div>
            <table class="default">

                <tr>

                    <td>
                        <asp:Label ID="lblEnunciado1" runat="server" Text="Tipo Documento"></asp:Label></td>
                    <td>
                        <asp:Label ID="lblTipoDocumento" runat="server" Text=""></asp:Label></td>
                </tr>

                <tr>
                    <td>
                        <asp:Label ID="lblEnunciado2" runat="server" Text="Numero Documento"></asp:Label></td>

                    <td>
                        <asp:Label ID="lblNumeroDocumento" runat="server" Text=""></asp:Label></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblEnunciado3" runat="server" Text="Apellidos y Nombres"></asp:Label></td>

                    <td>
                        <asp:Label ID="lblApellidosYnombres" runat="server" Text=""></asp:Label></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblEnunciado4" runat="server" Text="No Contrato Laboral"></asp:Label></td>

                    <td>
                        <asp:Label ID="lblContratoLaboral" runat="server" Text=""></asp:Label></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblEnunciado5" runat="server" Text="Cargo"></asp:Label></td>

                    <td>
                        <asp:Label ID="lblCargo" runat="server" Text=""></asp:Label></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblEnunciado6" runat="server" Text=" Riesgo Laboral (ARL)"></asp:Label></td>

                    <td>
                        <asp:Label ID="lblArl" runat="server" Text=""></asp:Label></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblEnunciado7" runat="server" Text="Fecha Incio Contrato"></asp:Label></td>

                    <td>
                        <asp:Label ID="lblFechaInicioContrato" runat="server" Text=""></asp:Label>
                    </td>
                </tr>



                <tr>
                    <td>
                        <asp:Label ID="lblEnunciado8" runat="server" Text="Fecha Final de Contrato (Proyectada si se tiene)."></asp:Label></td>

                    <td>
                        <asp:Label ID="lblFechaFinContrato" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblEnunciado9" runat="server" Text="Salario"></asp:Label></td>

                    <td>
                        <asp:Label ID="lblSalario" runat="server" Text=""></asp:Label></td>
                </tr>
            </table>
        </div>
        <br />
        <br />
        <br />

        <div>
            <asp:Label ID="Label3" runat="server" Text="Punto2"></asp:Label>

            <table>
                <tr>
                    <td>
                        <asp:Label ID="lblEnunciadoId" runat="server" Text="No Identificacíon"></asp:Label></td>

                    <td>
                        <input id="txtId" type="text" onkeypress='return event.charCode >= 48 && event.charCode <= 57' runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblEnunciado10" runat="server" Text="Periodo Laborado"></asp:Label></td>

                    <td>
                        <input id="txtPeriodoLaborado" type="text" onkeypress='return event.charCode >= 48 && event.charCode <= 57'  runat="server"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblEnunciado11" runat="server" Text="Horas Total Laboradas"></asp:Label></td>

                    <td>
                        <input id="txtHorasTotalLaboradas" type="text" onkeypress='return event.charCode >= 48 && event.charCode <= 57' runat="server"/>
                    </td>
                </tr>


                <tr>
                    <td>
                        <asp:Label ID="lblEnunciado12" runat="server" Text="Horas Extras"></asp:Label></td>

                    <td>
                        <input id="txtHorasExtras" type="text" onkeypress='return event.charCode >= 48 && event.charCode <= 57' runat="server"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblEnunciado13" runat="server" Text="Descuentos De Nomina"></asp:Label></td>

                    <td>
                        <input id="txtDescuentosNomina" type="text" onkeypress='return event.charCode >= 48 && event.charCode <= 57' runat="server"/>
                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:Button ID="btnGuardar" runat="server" Text="Guardar" OnClick="btnGuardar_Click"/>
                    </td>
                </tr>
            </table>
        </div>

        <br />
        <br />


        <div>
            <asp:Label ID="Label1" runat="server" Text="Punto3"></asp:Label>

            <table>
                <tr>
                    <td>
                        <asp:Label ID="lblDoc" runat="server" Text="Salario:"></asp:Label></td>
                    <td>
                        <input id="txtNoId" type="text" onkeypress='return event.charCode >= 48 && event.charCode <= 57' runat="server" /></td>
                    <td>
                        <asp:Button ID="btnCalcular" runat="server" Text="Calcular" OnClick="btnCalcular_Click" />
                    </td>
                </tr>
            </table>
            <table border="1">

                <tr>
                    <td>
                        <asp:Label ID="lblAporte" runat="server" Text="Aporte"></asp:Label></td>

                    <td>
                        <asp:Label ID="lblPerEmpleador" runat="server" Text="%Empleador"></asp:Label></td>
                    <td>
                        <asp:Label ID="lblValorEm" runat="server" Text="Valor$"></asp:Label></td>
                    <td>
                        <asp:Label ID="lblPerTrabajador" runat="server" Text="%Trabajador"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblValorTrabajador" runat="server" Text="Valor$"></asp:Label></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblSalud" runat="server" Text="Salud"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblPerSalud" runat="server" Text="12.5%"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblSaludValorEmpleador" runat="server" Text=""></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblPerTrabajdor" runat="server" Text="4,0%"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblSaludValorTrabajador" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblPension" runat="server" Text="Pension"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblPerEmp" runat="server" Text="16,0%"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblValorPensionEmpleador" runat="server" Text=""></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblPerTrabjador" runat="server" Text="4,0%"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblValorPensionTrabajador" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
        <br />
        <br />
        <div>
            <asp:Label ID="Label4" runat="server" Text="Punto4"></asp:Label>

            <table>
                <tr>
                    <td>
                        <asp:Label ID="lblSalary" runat="server" Text="No. Contrato:"></asp:Label></td>
                    <td>
                        <input id="txtIdContrato" type="text" onkeypress='return event.charCode >= 48 && event.charCode <= 57' runat="server" /></td>
                    <td>
                        <asp:Button ID="btnDescuentosClick" runat="server" Text="CalcularDescuentos" OnClick="btnDescuentosClick_Click" />
                    </td>
                </tr>
                <tr>
                     <td>   <asp:Label ID="lblDescuentos" runat="server" Text="Valor a Pagar:"></asp:Label></td>
                     <td>   <asp:Label ID="lblDescuento" runat="server" Text=""></asp:Label></td>
                    
                </tr>
            </table>
        </div>
    </form>
</body>
</html>

<%@ Page Title="" Language="C#" MasterPageFile="~/GatePassMaster.master" AutoEventWireup="true" CodeFile="Approve.aspx.cs" Inherits="Approve" %>

<asp:Content ID="Content1" ContentPlaceHolderID="GPhead" runat="Server">
    <script src="assets/js/Approve.js"></script>
    <link href="assets/css/Approve.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="GPPageHeading" runat="Server">
    <h2>Gate Pass Approval</h2>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="GPContent" runat="Server">

    <p>currently Loged as : <span id="CurrentUserID">UserID</span></p>

    <input class="PendingButton" type="button" id="BtnPending" value="PENDING" />
    <input class="ApprovedButton" type="button" id="BtnApproved" value="APPROVED" />
    <input class="RejectedButton" type="button" id="BtnRejected" value="REJECTED" />
    <h2><span id="ApproveTopic">Pending</span> Gate Pass</h2>

    <div>


        <%--Pending gatepass--%>
        <div id="TblPendingGatepass" class="divTile"></div>

        <%--Pending gatepass details--%>
        <div id="GpDetailsView" class="divTile">

            <p class="FormTopic">Gate Pass No: <span id="ShipListGatePassNo">N/A</span></p>

            <div>
                <table id="RequestorsData">
                    <tr>
                        <td><b>Requester Name</b></td>
                        <td>:<span id="GPRequesterName"></span></td>
                        <td><b>Department</b></td>
                        <td>:<span id="GPDepartment"></span></td>
                    </tr>
                    <tr>
                        <td><b>Departure</b></td>
                        <td>:<span id="DepartDateTime"></span></td>
                        <td><b>Reason</b></td>
                         <td>:<span id="DepartReason"></span></td>
                    </tr>
                    <tr>
                        <td><b>GatePass No</b></td>
                        <td>:<span id="DepartGatePass"></span></td>
                    </tr>
                </table>
            </div>
            <br />
            <p class="textDescription">All Items approved default, please reject if needed.</p>

            
            <div id="VehicleDtls">
                <hr />
                <h3>VEHICLE GATEPASS</h3>

                <table id="tblVehicleDetails">
                    <tr>
                        <td>Destination</td>
                        <td>:<span id="VehiDestination">N/A</span></td>
                    </tr>
                    <tr>
                        <td>Total Distance</td>
                        <td>:<span id="VehiDistance">N/A</span></td>
                    </tr>
                    <tr>
                        <td>Vehicle Type</td>
                        <td>:<span id="Vehivehicletype">N/A</span></td>
                    </tr>
                </table>
                <table id="FactoryRit">
                    <tr>
                        <td>factory Return</td>
                        <td>:<span id="FactoryRetStatus">N/A</span></td>
                    </tr>
                </table>
                <table id="WaitTime">
                    <tr>
                        <td>Waiting Time</td>
                        <td>:<span id="WaitingTimeDtls">N/A</span></td>
                    </tr>
                </table>
                <table id="timePeriod">
                    <tr>
                        <td>I need vehicle until</td>
                        <td><span id="TimePeriodDate">N/A</span></td>
                    </tr>
                </table>

                <%--<input type="button" class="BlueButton" id="VehiApprove" value="Approve"/>
                <input type="button" class="RedButton" id="VehiReject" value="Reject"/>--%>
            </div>

            

            <div id="HumanDiv">
                <hr />
                <h3>Employee GatePass</h3>
                <table id="tblHumanDetails">
                    <tr>
                        <td>Passenger Count</td>
                        <td>:<span id="HumanCountNo">N/A</span></td>
                    </tr>
                    <tr>
                        <td>Factory Return</td>
                        <td>:<span id="HumanRetSatus">N/A</span></td>
                    </tr>
                </table>
                <table>
                    <tr>
                        <td>Return Date Time</td>
                        <td>:<span id="HumanRetDateTime">N/A</span></td>
                    </tr>
                </table>
                <div id="HumanListDiv">N/A</div>
            </div>

            

            <div id="ItemGateDetails">
                <hr />
                <h3>Item Requisition</h3>

                <table id="ItemDetails">
                    <tr>
                        <td>Item Destination</td>
                        <td>:<span id="ItemDestination">N/A</span></td>
                    </tr>
                    <tr>
                        <td>Contact Person</td>
                        <td>:<span id="ItemContactP">N/A</span></td>
                    </tr>
                    <tr>
                        <td>Contact No</td>
                        <td>:<span id="ItemContactNo">N/A</span></td>
                    </tr>
                    <tr>
                        <td>Status Return</td>
                        <td>:<span id="ItemStatus">N/A</span></td>
                    </tr>
                    <tr>
                        <td>Return Date & Time</td>
                        <td>:<span id="ItemReturn">N/A</span></td>
                    </tr>
                </table>
                <input type="hidden" id="HdnItemStatus" name="HdnItemStatus" value="NO">
                <div id="ItemTableDiv">N/A</div>
            </div>

            

            <div id="Shipments">
                <hr />
                <h3>Shipment Requisition</h3>

                <table id="tblShipmentDetails">
                    <tr>
                        <td>Shipment Name</td>
                        <td>:<span id="ShipmentNa"></span></td>
                    </tr>
                    <tr>
                        <td>Destination</td>
                        <td>:<span id="ShipmentDesti"></span></td>
                    </tr>
                    <tr>
                        <td>Document No</td>
                        <td>:<span id="ShipmentDocNo"></span></td>
                    </tr>
                    <tr>
                        <td>Vehicle No</td>
                        <td>:<span id="ShipmentVehiNo"></span></td>
                    </tr>
                </table>

                <%--<input class="BlueButton" type="button" id="BtnshipmentSubmit" value="Submit" />
                <input class="RedButton" type="button" id="BtnshipmentReject" value="Reject All" />--%>


                <%--Shipment Item list--%>

                <br />

                <div id="TblShipmentList"></div>
            </div>

            <%--hidden variables to track active gatepasses--%>
            <input type="hidden" id="statusItemApp" name="statusItemApp" value="1">
            <input type="hidden" id="statusEmpApp" name="statusEmpApp" value="1">
            <input type="hidden" id="statusVehicleApp" name="statusVehicleApp" value="1">
            <input type="hidden" id="statusShipApp" name="statusShipApp" value="0">
            <input type="hidden" id="RequesterID" name="RequesterID" value="IT">



            <input class="BlueButton" type="button" id="BtnGatepassSubmit" value="Submit" />
            <input class="RedButton" type="button" id="BtnGatepassReject" value="Reject All" />

        </div>





        <%--Approved gatepass--%>

        <div id="TbLShipmentApproved" class="divTile">Approve Gate Pass</div>

        <div class="divTile" id="ApproveGPDetailsView">       
            Approved Gatepass Details
            <p class="FormTopic"> GatePass No: <span id="ApprovedShipListGatePassNo"></span></p>
         <div id="ApprovedShip">
            <table id="tblApprovedShipmentDetails">
                <tr>
                    <td>Shipment Name</td>
                    <td>:<span id="ApprovedShipmentNa"></span></td>
                </tr>
                <tr>
                    <td>Destination</td>
                    <td>:<span id="ApprovedShipmentDesti"></span></td>
                </tr>
                <tr>
                    <td>Document No</td>
                    <td>:<span id="ApprovedShipmentDocNo"></span></td>
                </tr>
                <tr>
                    <td>Vehicle No</td>
                    <td>:<span id="ApprovedShipmentVehiNo"></span></td>
                </tr>
            </table>
            <div id="TblAppShipmentList"></div>
        </div>
          

            <%--Approved Vehicle Details--%>
            <div id="AppVehicleDtls">
                  <hr />
                <table id="tblAppVehicleDetails">
                    <tr>
                        <td>Destination</td>
                        <td>:<span id="AppVehiDestination">N/A</span></td>
                    </tr>
                    <tr>
                        <td>Total Distance</td>
                        <td>:<span id="AppVehiDistance">N/A</span></td>
                    </tr>
                    <tr>
                        <td>Vehicle Type</td>
                        <td>:<span id="AppVehivehicletype">N/A</span></td>
                    </tr>
                </table>
                <table id="AppFactoryRit">
                    <tr>
                        <td>factory Return</td>
                        <td>:<span id="AppFactoryRetStatus">N/A</span></td>
                    </tr>
                </table>
                <table id="AppWaitTime">
                    <tr>
                        <td>Waiting Time</td>
                        <td>:<span id="AppWaitingTimeDtls">N/A</span></td>
                    </tr>
                </table>
                <table id="ApptimePeriod">
                    <tr>
                        <td>I need vehicle until</td>
                        <td><span id="AppTimePeriodDate">N/A</span></td>
                    </tr>
                </table>
            </div>

            <%--Approved Gate Pass Div--%>
           
            <div id="AppHumanDiv">
                 <hr />
                <table id="ApptblHumanDetails">
                    <tr>
                        <td>Passenger Count</td>
                        <td>:<span id="AppHumanCountNo">N/A</span></td>
                    </tr>
                    <tr>
                        <td>Factory Return</td>
                        <td>:<span id="AppHumanRetSatus">N/A</span></td>
                    </tr>
                </table>
                <table>
                    <tr>
                        <td>Return Date Time</td>
                        <td>:<span id="AppHumanRetDateTime">N/A</span></td>
                    </tr>
                </table>
                <div id="AppHumanListDiv">N/A</div>
            </div>
          
            <div id="AppItemGateDetails">
                  <hr />
                <table id="AppItemDetails">
                    <tr>
                        <td>Item Destination</td>
                        <td>:<span id="AppItemDestination">N/A</span></td>
                    </tr>
                    <tr>
                        <td>Contact Person</td>
                        <td>:<span id="AppItemContactP">N/A</span></td>
                    </tr>
                    <tr>
                        <td>Contact No</td>
                        <td>:<span id="AppItemContactNo">N/A</span></td>
                    </tr>
                    <tr>
                        <td>Status Return</td>
                        <td>:<span id="AppItemStatus">N/A</span></td>
                    </tr>
                    <tr>
                        <td>Return Date & Time</td>
                        <td>:<span id="AppItemReturn">N/A</span></td>
                    </tr>
                </table>
                <div id="AppItemTableDiv">N/A</div>
            </div>
        </div>

        <%--Rejected Gatepass--%>

        <div id="TblRejectedShipments" class="divTile">Rejected Details</div>

        <div id="RejectedDtlsView" class="divTile">
            <p class="FormTopic"> GatePass : <span id="RejectShipListGatePassNo"></span></p>
           <div id="RejectedShipmentDtls">
            <table id="tblRejectShipmentDetails">
                <tr>
                    <td>Shipment Name</td>
                    <td>:<span id="RejectShipmentNa"></span></td>
                </tr>
                <tr>
                    <td>Destination</td>
                    <td>:<span id="RejectShipmentDesti"></span></td>
                </tr>
                <tr>
                    <td>Document No</td>
                    <td>:<span id="RejectShipmentDocNo"></span></td>
                </tr>
                <tr>
                    <td>Vehicle No</td>
                    <td>:<span id="RejectShipmentVehiNo"></span></td>
                </tr>
            </table>

            <%--<input class="BlueButton" type="button" id="RejectBtnshipmentSubmit" value="Submit" />--%>
            <div id="TblRejShipmentList"></div>
        </div>

               <%--Reject Vehicle Details--%>
            <div id="RejectedVehicleDtls">
                  <hr />
                <table id="RejectedtblVehicleDetails">
                    <tr>
                        <td>Destination</td>
                        <td>:<span id="RejectedVehiDestination">N/A</span></td>
                    </tr>
                    <tr>
                        <td>Total Distance</td>
                        <td>:<span id="RejectedVehiDistance">N/A</span></td>
                    </tr>
                    <tr>
                        <td>Vehicle Type</td>
                        <td>:<span id="RejectedVehivehicletype">N/A</span></td>
                    </tr>
                </table>
                <table id="RejectedFactoryRit">
                    <tr>
                        <td>factory Return</td>
                        <td>:<span id="RejectedFactoryRetStatus">N/A</span></td>
                    </tr>
                </table>
                <table id="RejectedWaitTime">
                    <tr>
                        <td>Waiting Time</td>
                        <td>:<span id="RejectedWaitingTimeDtls">N/A</span></td>
                    </tr>
                </table>
                <table id="RejectedtimePeriod">
                    <tr>
                        <td>I need vehicle until</td>
                        <td><span id="RejectedTimePeriodDate">N/A</span></td>
                    </tr>
                </table>
            </div>

            <%--Human Gate Pass Div--%>
           
            <div id="RejectedHumanDiv">
                 <hr />
                <table id="RejectedtblHumanDetails">
                    <tr>
                        <td>Passenger Count</td>
                        <td>:<span id="RejectedHumanCountNo">N/A</span></td>
                    </tr>
                    <tr>
                        <td>Factory Return</td>
                        <td>:<span id="RejectedHumanRetSatus">N/A</span></td>
                    </tr>
                </table>
                <table>
                    <tr>
                        <td>Return Date Time</td>
                        <td>:<span id="RejectedHumanRetDateTime">N/A</span></td>
                    </tr>
                </table>
                <div id="RejectedHumanListDiv">N/A</div>
            </div>
          
            <div id="RejectedItemGateDetails">
                  <hr />
                <table id="RejectedItemDetails">
                    <tr>
                        <td>Item Destination</td>
                        <td>:<span id="RejectedItemDestination">N/A</span></td>
                    </tr>
                    <tr>
                        <td>Contact Person</td>
                        <td>:<span id="RejectedItemContactP">N/A</span></td>
                    </tr>
                    <tr>
                        <td>Contact No</td>
                        <td>:<span id="RejectedItemContactNo">N/A</span></td>
                    </tr>
                    <tr>
                        <td>Status Return</td>
                        <td>:<span id="RejectedItemStatus">N/A</span></td>
                    </tr>
                    <tr>
                        <td>Return Date & Time</td>
                        <td>:<span id="RejectedItemReturn">N/A</span></td>
                    </tr>
                </table>
                <div id="RejectedItemTableDiv">N/A</div>
            </div>
        </div>


        </div>
      
    <%--<input type="button" id="btnTestMail" value="Mail" />--%>


    <%--</div>--%>

</asp:Content>


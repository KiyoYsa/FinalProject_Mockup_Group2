<%@ Page Title="Cultural Heritage" Language="C#" AutoEventWireup="true" CodeBehind="CulturalHeritage.aspx.cs" Inherits="FinalProject_Mockup_Group2.CulturalHeritage" MasterPageFile="~/Site.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <main>
        <div class="page-header-section">
            <h1 style="font-family: 'Garamond', 'Georgia', sans-serif;">Cultural Heritage</h1>
            <p>"The T'nalak is not just cloth; it is the physical manifestation of a dream bestowed by Fu Dalu, the Spirit of the Abaca."</p>
        </div>

        <section style="display: flex; align-items: center; gap: 60px; flex-wrap: wrap; padding: 60px;">
            <div style="flex: 1; min-width: 300px;">
                <img src="images/fu-dalu-spirit.jpg" style="width: 100%; border: 1px solid #1A1A1A; padding: 10px;" alt="The Weaver's Loom" />
            </div>
            <div style="flex: 1; min-width: 300px;">
                <h2 style="font-size: 32px; color: #7B160E; margin-bottom: 20px;">The Language of Dreams</h2>
                <p style="font-size: 18px; color: #1A1A1A; margin-bottom: 20px; line-height: 1.8;">
                    The T'boli women, known as <b>Dreamweavers</b>, do not use patterns or drawings. They weave from memory, 
                interpreting sacred designs sent to them in dreams. This spiritual connection ensures that no two T'nalak 
                pieces are ever identical.
                </p>
                <ul style="list-style: none; margin-bottom: 30px;">
                    <li style="margin-bottom: 10px; border-left: 4px solid #7B160E; padding-left: 15px;"><strong>Respect for Fu Dalu:</strong> Weavers must follow strict taboos to avoid offending the spirit.</li>
                    <li style="margin-bottom: 10px; border-left: 4px solid #7B160E; padding-left: 15px;"><strong>Natural Pigments:</strong> Colors are sourced from <i>K’nalum</i> trees and <i>Liko</i> roots.</li>
                </ul>
            </div>
        </section>

        <section>
            <h2 class="section-title">CORE MOTIFS</h2>
            <div class="heritage-grid">
                <asp:Repeater ID="rptPatterns" runat="server">
                    <ItemTemplate>
                        <div class="heritage-card">
                            <h3><%# Eval("PatternName") %></h3>
                            <p><%# Eval("SpiritualMeaning") %></p>
                            <div style="padding: 0 20px 20px;">
                                <button type="button" class="btn-read"
                                    onclick='showHistory("<%# Eval("PatternName") %>", "<%# Eval("History").ToString().Replace("\"", "&quot;").Replace("'", "\\'") %>")'>
                                    Read History
                                </button>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </section>

        <section style="padding: 60px;">
            <h2 style="font-size: 32px; color: #7B160E; margin-bottom: 30px;">Textile Authentication Data</h2>
            <table style="width: 100%; border-collapse: collapse; text-align: left; background: white; border: 1px solid #1A1A1A;">
                <tr style="background: #1A1A1A; color: #FAF3CD;">
                    <th style="padding: 20px;">Property</th>
                    <th style="padding: 20px;">Specification</th>
                    <th style="padding: 20px;">Spiritual & Cultural Meaning</th>
                </tr>
                <tr style="border-bottom: 1px solid #eee;">
                    <td style="padding: 20px;"><strong>Base Material</strong></td>
                    <td style="padding: 20px;">Wild Abaca (Musa textilis)</td>
                    <td style="padding: 20px;"><b>White (Natural):</b> Represents the "Purity of the Dream." It is left undyed to symbolize a direct link to Fu Dalu.</td>
                </tr>
                <tr style="border-bottom: 1px solid #eee;">
                    <td style="padding: 20px;"><strong>The Black Dye</strong></td>
                    <td style="padding: 20px;">K’nalum Leaves (Fermented)</td>
                    <td style="padding: 20px;">Represents the soil, the roots of the abaca, and the deep shadows of the forest where spirits reside.</td>
                </tr>
                <tr style="border-bottom: 1px solid #eee;">
                    <td style="padding: 20px;"><strong>The Red Dye</strong></td>
                    <td style="padding: 20px;">Liko Roots</td>
                    <td style="padding: 20px;">Represents human life, the blood of the ancestors, and the bravery of the T'boli people.</td>
                </tr>
            </table>
        </section>

        <section style="padding: 60px; background-color: #f9f9f9; border-top: 1px solid #eee; border-bottom: 1px solid #eee;">
            <h2 style="font-size: 32px; color: #7B160E; margin-bottom: 30px; text-align: center;">Sacred Taboos of the Dreamweaver</h2>
            <div style="display: grid; grid-template-columns: repeat(auto-fit, minmax(300px, 1fr)); gap: 40px;">
                <div style="padding: 20px; border: 1px solid #7B160E; background: white;">
                    <h3 style="color: #7B160E; border-bottom: 1px solid #7B160E; padding-bottom: 10px;">No Cutting</h3>
                    <p style="line-height: 1.6;">A T'nalak cloth must never be cut while it is still being woven on the loom. To do so is seen as "wounding" the dream and showing deep disrespect to the spirits.</p>
                </div>
                <div style="padding: 20px; border: 1px solid #7B160E; background: white;">
                    <h3 style="color: #7B160E; border-bottom: 1px solid #7B160E; padding-bottom: 10px;">No Stepping Over</h3>
                    <p style="line-height: 1.6;">One must never step over the abaca fibers or the backstrap loom. This act is believed to offend Fu Dalu, the Spirit of the Abaca, and may result in the weaver losing her ability to dream.</p>
                </div>
                <div style="padding: 20px; border: 1px solid #7B160E; background: white;">
                    <h3 style="color: #7B160E; border-bottom: 1px solid #7B160E; padding-bottom: 10px;">Peace of Mind</h3>
                    <p style="line-height: 1.6;">A weaver must be in a state of spiritual and emotional peace. If she is angry or grieving, she must stop weaving, as negative emotions are thought to be "locked" into the pattern.</p>
                </div>
            </div>
        </section>

        <section style="background: #FAF3CD; color: #7B160E; margin: 80px; padding: 80px; border-radius: 6px;">
            <h2 style="color: #7B160E; font-size: 32px; margin-bottom: 20px;">The Lifecycle of T'nalak</h2>
            <p style="font-size: 18px; color: #1A1A1A; margin-bottom: 20px;">The creation process can take 3 to 6 months. It is a slow, meditative ritual.</p>
            <div style="display: grid; grid-template-columns: repeat(auto-fit, minmax(200px, 1fr)); gap: 30px;">
                <div>
                    <h4 style="color: #1A1A1A;">1. Kedungon</h4>
                    <p style="font-size: 18px; color: #1A1A1A; margin-bottom: 20px;">The meticulous stripping of abaca stalks to find the finest fibers.</p>
                </div>
                <div>
                    <h4 style="color: #1A1A1A;">2. Tembong</h4>
                    <p style="font-size: 18px; color: #1A1A1A; margin-bottom: 20px;">The "Dream Tying" where threads are knotted to block the dye.</p>
                </div>
                <div>
                    <h4 style="color: #1A1A1A;">3. Mebed</h4>
                    <p style="font-size: 18px; color: #1A1A1A; margin-bottom: 20px;">Boiling the fibers in natural vats for weeks to reach true colors.</p>
                </div>
                <div>
                    <h4 style="color: #1A1A1A;">4. Mewel</h4>
                    <p style="font-size: 18px; color: #1A1A1A; margin-bottom: 20px;">Weaving on a backstrap loom using the weaver's body as tension.</p>
                </div>
            </div>
        </section>

        <div id="historyModal" style="display: none; position: fixed; z-index: 1000; left: 0; top: 0; width: 100%; height: 100%; background-color: rgba(0,0,0,0.7);">
            <div style="background-color: #FAF3CD; margin: 15% auto; padding: 30px; border: 1px solid #7B160E; width: 50%; border-radius: 8px; position: relative;">
                <span onclick="closeModal()" style="position: absolute; right: 20px; top: 10px; cursor: pointer; font-size: 28px; color: #7B160E;">&times;</span>
                <h2 id="modalTitle" style="color: #7B160E; margin-top: 0;">Pattern History</h2>
                <p id="modalBody" style="color: #1A1A1A; line-height: 1.6; font-size: 18px;"></p>
            </div>
        </div>

        <script type="text/javascript">
            function showHistory(name, history) {
                document.getElementById('modalTitle').innerText = name + " History";
                document.getElementById('modalBody').innerText = history;
                document.getElementById('historyModal').style.display = "block";
            }

            function closeModal() {
                document.getElementById('historyModal').style.display = "none";
            }

            window.onclick = function (event) {
                var modal = document.getElementById('historyModal');
                if (event.target == modal) {
                    closeModal();
                }
            }
        </script>
    </main>
</asp:Content>
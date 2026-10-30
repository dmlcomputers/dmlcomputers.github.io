#!/bin/bash
# ======================================================================
# ⚡ DML COMPUTERS MASTER AUTOMATED CODELINE DEPLOYMENT
# ======================================================================
set -e
WORKSPACE_DIR="/home/lord_protector/dml_workspace"

echo "📂 Step 1: Accessing system repository workspace..."
cd "$WORKSPACE_DIR"

echo "📝 Step 2: Injecting master e-commerce application codebase..."
cat << 'HTML_EOF' > index.html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>DML Computers | Premium Custom PC Boutique & Linux Configuration Node</title>
    <style>
        :root {
            --bg-dark: #06090e;
            --panel-bg: #0d1117;
            --accent-blue: #0071e3;
            --accent-success: #30d5c8;
            --text-light: #ffffff;
            --text-gray: #8b949e;
            --border-color: #21262d;
            --input-bg: #161b22;
        }
        * { box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, sans-serif; }
        body { background-color: var(--bg-dark); color: var(--text-light); margin: 0; padding: 0; line-height: 1.6; }
        header { text-align: center; padding: 3rem 2rem; background: linear-gradient(180deg, #161b22 0%, var(--bg-dark) 100%); border-bottom: 1px solid var(--border-color); }
        .logo-img { max-height: 100px; width: auto; border-radius: 8px; border: 2px solid var(--accent-blue); padding: 0.5rem; background: var(--panel-bg); }
        h1 { font-size: 2.5rem; font-weight: 800; margin: 0; }
        .main-container { max-width: 1000px; width: 92%; margin: 2rem auto; }
        .app-view { display: none; }
        .app-view.active { display: block; animation: fadeIn 0.3s ease-in-out; }
        @keyframes fadeIn { from { opacity: 0; } to { opacity: 1; } }
        
        /* Grid and Card Elements */
        .services-grid { display: grid; grid-template-columns: repeat(auto-fit, minmax(320px, 1fr)); gap: 2rem; margin-top: 2rem; }
        .service-card { background-color: var(--panel-bg); border: 1px solid var(--border-color); border-radius: 12px; padding: 2rem; display: flex; flex-direction: column; justify-content: space-between; cursor: pointer; }
        .service-card:hover { transform: translateY(-4px); border-color: var(--accent-blue); box-shadow: 0 8px 30px rgba(0, 113, 227, 0.15); }
        .badge { font-size: 0.75rem; font-weight: 700; text-transform: uppercase; color: var(--accent-blue); background: rgba(0, 113, 227, 0.1); padding: 0.3rem 0.8rem; border-radius: 20px; display: inline-block; margin-bottom: 1rem; }
        .badge-linux { color: #f2c94c; background: rgba(242, 201, 76, 0.1); }
        .card-bottom { margin-top: 1.5rem; display: flex; justify-content: space-between; align-items: center; border-top: 1px solid var(--border-color); padding-top: 1rem; }
        .price-text { font-size: 1.3rem; font-weight: 800; color: var(--accent-success); }
        .btn-action { font-size: 0.85rem; font-weight: 600; color: #fff; background: var(--accent-blue); padding: 0.5rem 1rem; border-radius: 6px; border: none; cursor: pointer; }
        
        /* Configurator Forms & Panels */
        .panel { background-color: var(--panel-bg); border: 1px solid var(--border-color); border-radius: 12px; padding: 2rem; margin-top: 1.5rem; }
        .config-row { display: grid; grid-template-columns: 1fr 1fr; gap: 1.5rem; margin-bottom: 1.5rem; }
        @media (max-width: 700px) { .config-row { grid-template-columns: 1fr; } }
        .form-block { display: flex; flex-direction: column; }
        .form-block label { font-size: 0.85rem; font-weight: 600; text-transform: uppercase; color: var(--text-gray); margin-bottom: 0.5rem; letter-spacing: 0.5px; }
        .form-block select, .form-block input, .form-block textarea { background-color: var(--input-bg); border: 1px solid #30363d; border-radius: 6px; padding: 0.9rem; color: #fff; font-size: 1rem; }
        .form-block input[readonly] { background-color: #0d1117; color: var(--accent-success); font-weight: bold; border-color: var(--border-color); }
        
        .footer-action-bar { display: flex; gap: 1.5rem; margin-top: 2rem; }
        .btn-master { flex: 1; padding: 1.2rem; font-size: 1.1rem; font-weight: 700; border-radius: 6px; cursor: pointer; text-transform: uppercase; border: none; text-align: center; text-decoration: none; }
        .btn-blue { background: linear-gradient(180deg, #1f6feb 0%, #0e56c5 100%); color: #fff; border: 1px solid #388bfd; }
        .btn-blue:hover { background: linear-gradient(180deg, #388bfd 0%, #1f6feb 100%); }
        .btn-gray { background: #21262d; color: #c9d1d9; border: 1px solid #30363d; }
        .btn-gray:hover { background: #30363d; }

        /* Printable Receipt Blueprint Layout */
        .receipt-frame { background: #fff; color: #000; padding: 3rem; border-radius: 8px; font-family: monospace; border: 2px dashed #000; max-width: 650px; margin: auto; }
        .receipt-header { text-align: center; border-bottom: 2px dashed #000; padding-bottom: 1.5rem; }
        .receipt-line { display: flex; justify-content: space-between; margin: 0.6rem 0; font-size: 1rem; }
        .receipt-total { border-top: 2px dashed #000; font-size: 1.3rem; font-weight: bold; padding-top: 1rem; margin-top: 1rem; }
        @media print { body { background: #fff; color: #000; } .receipt-frame { border: none; padding: 0; } header, footer, .footer-action-bar { display: none !important; } }
    </style>
</head>
<body>

    <header>
        <img src="logo.png" alt="DML Logo" class="logo-img">
        <h1>DML COMPUTERS</h1>
        <p>Premium Hardware Architecture Matrix</p>
    </header>

    <div class="main-container">

        <!-- VIEW 1: SELECTION LAUNCHPAD -->
        <div id="view-hub" class="app-view active">
            <h2>Select Engineering Platform Base</h2>
            <div class="services-grid">
                <div class="service-card" onclick="initiateConfigurator('hardware')">
                    <div>
                        <span class="badge">Hardware Only</span>
                        <h3>Custom Workstation Build</h3>
                        <p>Tailored component grouping, strategic infrastructure layout cabling, and stress testing cycles. Excludes Operating System.</p>
                    </div>
                    <div class="card-bottom">
                        <div class="price-text">Base: £200.00</div>
                        <button class="btn-action">Configure</button>
                    </div>
                </div>

                <div class="service-card" onclick="initiateConfigurator('linux')">
                    <div>
                        <span class="badge badge-linux">OS Pre-Loaded</span>
                        <h3>Linux Machine Build</h3>
                        <p>Tailored multi-component assembly bundled with full enterprise Linux kernel platforming, disk layout partitioning, and custom layouts.</p>
                    </div>
                    <div class="card-bottom">
                        <div class="price-text">Base: £265.00</div>
                        <button class="btn-action">Configure</button>
                    </div>
                </div>
            </div>
        </div>

        <!-- VIEW 2: DYNAMIC CONFIGURE PAGE -->
        <div id="view-configurator" class="app-view">
            <h2>Configure System Components</h2>
            <div class="panel">
                <div class="config-row">
                    <div class="form-block">
                        <label>Processor (CPU Architecture)</label>
                        <select id="cfg-cpu" onchange="calculateRealtimeBillOfMaterials()"></select>
                    </div>
                    <div class="form-block">
                        <label>Motherboard Layer Array</label>
                        <select id="cfg-mobo" onchange="calculateRealtimeBillOfMaterials()"></select>
                    </div>
                </div>
                <div class="config-row">
                    <div class="form-block">
                        <label>Solid State Drive (NVMe Storage)</label>
                        <select id="cfg-ssd" onchange="calculateRealtimeBillOfMaterials()"></select>
                    </div>
                    <div class="form-block">
                        <label>System Memory Volatility (RAM)</label>
                        <select id="cfg-ram" onchange="calculateRealtimeBillOfMaterials()"></select>
                    </div>
                </div>
                <div class="config-row">
                    <div class="form-block">
                        <label>Graphics Compute Processing (GPU)</label>
                        <select id="cfg-gpu" onchange="calculateRealtimeBillOfMaterials()"></select>
                    </div>
                    <div class="form-block">
                        <label>Power Supply Unit (PSU Engine)</label>
                        <select id="cfg-psu" onchange="calculateRealtimeBillOfMaterials()"></select>
                    </div>
                </div>
                <div class="config-row" id="linux-os-row" style="display:none;">
                    <div class="form-block">
                        <label>Pre-Loaded Linux Distribution</label>
                        <select id="cfg-linux-distro">
                            <option value="Arch Linux">Arch Linux Core (Optimized Performance Rolling Release)</option>
                            <option value="Ubuntu LTS">Ubuntu LTS Enterprise Stable (Long Term Support)</option>
                            <option value="Debian Stable">Debian GNU/Linux Stable (Rock Solid Server Stack)</option>
                        </select>
                    </div>
                </div>
            </div>

Use code with caution.
Customer Data Routing & Checkout


Your Full Name
Your Contact Email


Fulfillment Methods
In-Store Local Collection / Pickup (£0.00)
Secure Tracked Insured Royal Mail Delivery (+£20.00)


Aggregated Price Statement


Back to Base Nodes
Purchase via PayPal & Transmit Ticket


DML COMPUTERS INVOICE MANIFEST
REGISTERED TERMINAL REPAIR CENTRE // UK




OPERATOR RECORD:







AGGREGATED TOTAL:



[ STATUS: RECONCILED VIA PAYPAL TRANSFER CHANNEL ]

Thank you for choosing DML Computers.



Print Ticket Receipt
Initialize New Node Transaction

DML COMPUTERS © 2026 // PIPELINE CHANNELS STABILIZED // PAYPAL ROUTED
// High-fidelity component matrix inventory datasets
const componentHardwareCatalog = {
cpu: [
{ name: "AMD Ryzen 5 5600 (6 Cores / 12 Threads)", addedCost: 0 },
{ name: "AMD Ryzen 7 7800X3D (Premium Gaming V-Cache Layer)", addedCost: 220 },
{ name: "Intel Core i5-14600K (Max Architecture Clocks)", addedCost: 110 }
],
mobo: [
{ name: "MSI B550 Tomahawk Pro (AM4 Stable Socket)", addedCost: 0 },
{ name: "ASUS ROG Strix X670E-F Gaming WiFi (AM5 Gen5 Ready)", addedCost: 195 },
{ name: "Gigabyte Z790 AORUS Elite (Intel LGA1700)", addedCost: 140 }
],
ssd: [
{ name: "1TB Kingston NV2 NVMe PCIe 4.0 M.2 SSD", addedCost: 0 },
{ name: "2TB Samsung 990 PRO NVMe (High Read/Write Cycles)", addedCost: 85 }
],
ram: [
{ name: "16GB Corsair Vengeance LPX DDR4 3200MHz Kit", addedCost: 0 },
{ name: "32GB G.Skill Trident Z5 Neo DDR5 6000MHz Low-Latency", addedCost: 90 }
],
gpu: [
{ name: "Integrated Graphics Compute Architecture (No Dedicated GPU)", addedCost: 0 },
{ name: "NVIDIA GeForce RTX 4060 Ti 8GB Graphic Array", addedCost: 340 },
{ name: "NVIDIA GeForce RTX 4070 Super 12GB Enthusiast Core", addedCost: 560 }
],
psu: [
{ name: "Corsair RM750e 750W 80+ Gold Modular PSU Engine", addedCost: 0 },
{ name: "Corsair RM1000x 1000W Heavy Duty Power Node", addedCost: 75 }
]
};
let selectedPlatformBase = 'hardware';
let calculatedPriceCap = 0.00;
let activeOrderTrackingId = "";
function switchActiveView(targetViewId) {
document.querySelectorAll('.app-view').forEach(view => view.classList.remove('active'));
document.getElementById(targetViewId).classList.add('active');
window.scrollTo({ top: 0, behavior: 'smooth' });
}
function populateSelectDropdownOptions(selectElementId, componentsDataArray) {
const dropdown = document.getElementById(selectElementId);
dropdown.innerHTML = "";
componentsDataArray.forEach((item, index) => {
const opt = document.createElement("option");
opt.value = index;
opt.textContent = ${item.name} ${item.addedCost > 0 ? '(+' + item.addedCost + ')' : ''};
dropdown.appendChild(opt);
});
}
function initiateConfigurator(platformType) {
selectedPlatformBase = platformType;
// Populates all hardware options dynamically
populateSelectDropdownOptions("cfg-cpu", componentHardwareCatalog.cpu);
populateSelectDropdownOptions("cfg-mobo", componentHardwareCatalog.mobo);
populateSelectDropdownOptions("cfg-ssd", componentHardwareCatalog.ssd);
populateSelectDropdownOptions("cfg-ram", componentHardwareCatalog.ram);
populateSelectDropdownOptions("cfg-gpu", componentHardwareCatalog.gpu);
populateSelectDropdownOptions("cfg-psu", componentHardwareCatalog.psu);
// Toggles OS rows conditionally based on selections
document.getElementById("linux-os-row").style.display = (platformType === 'linux') ? 'block' : 'none';
calculateRealtimeBillOfMaterials();
switchActiveView('view-configurator');
}
function calculateRealtimeBillOfMaterials() {
let runningAggregate = (selectedPlatformBase === 'linux') ? 265.00 : 200.00;
// Aggregate values from choices
runningAggregate += componentHardwareCatalog.cpu[document.getElementById("cfg-cpu").value].addedCost;
runningAggregate += componentHardwareCatalog.mobo[document.getElementById("cfg-mobo").value].addedCost;
runningAggregate += componentHardwareCatalog.ssd[document.getElementById("cfg-ssd").value].addedCost;
runningAggregate += componentHardwareCatalog.ram[document.getElementById("cfg-ram").value].addedCost;
runningAggregate += componentHardwareCatalog.gpu[document.getElementById("cfg-gpu").value].addedCost;
runningAggregate += componentHardwareCatalog.psu[document.getElementById("cfg-psu").value].addedCost;
if (document.getElementById("cfg-shipping").value === "posted") {
runningAggregate += 20.00;
}
calculatedPriceCap = runningAggregate;
document.getElementById("price-display").value = £${calculatedPriceCap.toFixed(2)};
}
function processOrderCheckoutStream() {
const clientName = document.getElementById("cust-name").value.trim();
const clientEmail = document.getElementById("cust-email").value.trim();
if (!clientName || !clientEmail) {
alert("⚠️ Transmission Blocked: Operational Name and Routing Email parameters are required to anchor your invoice ticket.");
return;
}
// Generate structural cryptographic-style order metadata fields
const timestamp = new Date();
const yearPart = timestamp.getFullYear().toString().substring(2);
const monthPart = (timestamp.getMonth() + 1).toString().padStart(2, '0');
const dayPart = timestamp.getDate().toString().padStart(2, '0');
activeOrderTrackingId = DML-${yearPart}${monthPart}${dayPart}-${Math.floor(1000 + Math.random() * 9000)};
// Extract part data for compiling manifest
const cpuLine = componentHardwareCatalog.cpu[document.getElementById("cfg-cpu").value].name;
const moboLine = componentHardwareCatalog.mobo[document.getElementById("cfg-mobo").value].name;
const ssdLine = componentHardwareCatalog.ssd[document.getElementById("cfg-ssd").value].name;
const ramLine = componentHardwareCatalog.ram[document.getElementById("cfg-ram").value].name;
const gpuLine = componentHardwareCatalog.gpu[document.getElementById("cfg-gpu").value].name;
const psuLine = componentHardwareCatalog.psu[document.getElementById("cfg-psu").value].name;
const fulfillmentType = document.getElementById("cfg-shipping").value.toUpperCase();
let specsEmailPayload = DML COMPUTERS RECONCILED TRANSACTION COMPONENT SPECIFICATION LOG\n;
specsEmailPayload += --------------------------------------------------------------\n;
specsEmailPayload += ORDER ID: ${activeOrderTrackingId}\n;
specsEmailPayload += PLATFORM BASE: ${selectedPlatformBase.toUpperCase()}\n;
specsEmailPayload += PROCESSOR: ${cpuLine}\n;
specsEmailPayload += MOTHERBOARD: ${moboLine}\n;
specsEmailPayload += STORAGE SECTOR: ${ssdLine}\n;
specsEmailPayload += MEMORY VOLATILITY: ${ramLine}\n;
specsEmailPayload += GRAPHIC ACCELERATOR: ${gpuLine}\n;
specsEmailPayload += POWER ENGINE: ${psuLine}\n;
if (selectedPlatformBase === 'linux') {
specsEmailPayload += OS FLAVOR PROVISIONED: ${document.getElementById("cfg-linux-distro").value}\n;
}
specsEmailPayload += DELIVERY STRUCT: ${fulfillmentType}\n;
specsEmailPayload += FINAL ADJUSTED COST STATEMENT: £${calculatedPriceCap.toFixed(2)}\n;
// Display Digital Invoice View
document.getElementById("receipt-date").textContent = DATE: ${timestamp.toLocaleDateString()} // ${timestamp.toLocaleTimeString()};
document.getElementById("receipt-number").textContent = INVOICE REFERENCE: ${activeOrderTrackingId};
document.getElementById("rec-client-name").textContent = CLIENT MONIKER: ${clientName.toUpperCase()};
document.getElementById("rec-client-email").textContent = ROUTING ADDR: ${clientEmail};
document.getElementById("rec-total-price").textContent = £${calculatedPriceCap.toFixed(2)};
let listBuilder = "";
listBuilder += <div class="receipt-line"><span>Platform Setup Service Charge</span><span>£${(selectedPlatformBase === 'linux' ? 265 : 200).toFixed(2)}</span></div>;
if(cpuLine) listBuilder += <div class="receipt-line"><span style="font-size:0.85rem;">+ CPU: ${cpuLine}</span></div>;
if(moboLine) listBuilder += <div class="receipt-line"><span style="font-size:0.85rem;">+ MOBO: ${moboLine}</span></div>;
if(ssdLine) listBuilder += <div class="receipt-line"><span style="font-size:0.85rem;">+ SSD: ${ssdLine}</span></div>;
if(ramLine) listBuilder += <div class="receipt-line"><span style="font-size:0.85rem;">+ RAM: ${ramLine}</span></div>;
if(gpuLine) listBuilder += <div class="receipt-line"><span style="font-size:0.85rem;">+ GPU: ${gpuLine}</span></div>;
if(psuLine) listBuilder += <div class="receipt-line"><span style="font-size:0.85rem;">+ PSU: ${psuLine}</span></div>;
if(fulfillmentType === "POSTED") listBuilder += <div class="receipt-line"><span>+ Insured Royal Mail Royal Mail Postage</span><span>£20.00</span></div>;
document.getElementById("receipt-items-list").innerHTML = listBuilder;
// Save transaction manifest natively to data array structures for tracking
console.log([DATABASE AGGREGATION MATRIX LOGGED]: ${activeOrderTrackingId} captured.);
// Trigger deep-mail system triggers and secure PayPal collection tunnels synchronously
window.location.href = mailto:dlester626@://gmail.com{encodeURIComponent(activeOrderTrackingId + ' - Order Manifest Confirmation')}&body=${encodeURIComponent(specsEmailPayload)};
window.open(https://paypal.com{calculatedPriceCap.toFixed(2)}, '_blank');
switchActiveView('view-receipt');
}



HTML_EOF
echo "🐙 Step 3: Packaging update elements into Git staging indexes..."
git add index.html
echo "📝 Step 4: Stamping localized repository changesets..."
git commit -m "Deploy full parts configurator architecture and printable digital invoice generation pipelines"
echo "🚀 Step 5: Syncing project core elements directly with GitHub Pages deployment nodes..."
git push origin main --force
echo "======================================================================"
echo "✨ SYSTEM IS FULLY REBUILT AND OPERATIONAL!"
echo "👉 View the deployment live at: github.io"
echo "======================================================================"

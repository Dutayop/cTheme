bash -c '
cd /var/www/pterodactyl

# Backup existing theme
cp public/themes/noobee-admin.css public/themes/noobee-admin.css.backup.$(date +%s) 2>/dev/null || true

# Write new Glass Classic theme
cat > public/themes/noobee-admin.css << "EOF"
/* ===================================================================
   NOOBEE GLASS CLASSIC THEME – Production Stable
   Inspired by: Apple Glass UI, Stripe, Linear, Vercel, AWS Console
   Priority: UX Stability > Visual Effects
   =================================================================== */

@import url("https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap");

/* ===== CSS VARIABLES ===== */
:root {
  --bg-root: #0a0e1a;
  --bg-panel: rgba(15, 23, 42, 0.75);
  --bg-card: rgba(30, 41, 59, 0.65);
  --bg-elevated: rgba(51, 65, 85, 0.7);
  --text-primary: #f1f5f9;
  --text-secondary: #cbd5e1;
  --text-muted: #94a3b8;
  --accent-primary: #60a5fa;
  --accent-secondary: #3b82f6;
  --border-subtle: rgba(148, 163, 184, 0.15);
  --border-medium: rgba(148, 163, 184, 0.25);
  --shadow-sm: 0 2px 8px rgba(0, 0, 0, 0.15);
  --shadow-md: 0 4px 16px rgba(0, 0, 0, 0.25);
}

/* ===== GLOBAL BACKGROUND ===== */
html,
body {
  font-family: "Inter", -apple-system, BlinkMacSystemFont, "Segoe UI", sans-serif !important;
  background: linear-gradient(135deg, #0f172a 0%, #1e293b 100%) !important;
  color: var(--text-primary) !important;
  line-height: 1.6;
}

/* Ensure proper scrolling */
html,
body {
  overflow-x: hidden;
  overflow-y: auto !important;
}

.content-wrapper {
  background: transparent !important;
}

/* ===== MAIN HEADER / NAVBAR ===== */
.main-header,
.navbar,
.navbar-static-top {
  background: var(--bg-panel) !important;
  backdrop-filter: blur(10px) saturate(180%);
  -webkit-backdrop-filter: blur(10px) saturate(180%);
  border-bottom: 1px solid var(--border-subtle) !important;
  box-shadow: var(--shadow-sm);
}

.navbar-nav > li > a {
  color: var(--text-secondary) !important;
  transition: color 0.2s ease;
}

.navbar-nav > li > a:hover {
  color: var(--text-primary) !important;
}

/* ===== SIDEBAR ===== */
.main-sidebar {
  background: var(--bg-panel) !important;
  backdrop-filter: blur(10px) saturate(180%);
  -webkit-backdrop-filter: blur(10px) saturate(180%);
  border-right: 1px solid var(--border-subtle) !important;
}

/* Sidebar scrolling - independent */
.sidebar {
  overflow-y: auto !important;
  overflow-x: hidden;
}

/* Sidebar menu items */
.sidebar-menu > li > a {
  color: var(--text-secondary) !important;
  padding: 12px 16px;
  margin: 4px 8px;
  border-radius: 8px;
  transition: background-color 0.2s ease, color 0.2s ease;
}

.sidebar-menu > li > a:hover {
  background: var(--bg-elevated) !important;
  color: var(--text-primary) !important;
}

.sidebar-menu > li.active > a,
.sidebar-menu > li.active > a:hover {
  background: var(--accent-secondary) !important;
  color: white !important;
}

.sidebar-menu .treeview-menu > li > a {
  color: var(--text-muted) !important;
  padding: 8px 16px 8px 32px;
  transition: color 0.2s ease;
}

.sidebar-menu .treeview-menu > li > a:hover {
  color: var(--text-primary) !important;
}

/* ===== CARDS & BOXES ===== */
.card,
.box,
.panel {
  background: var(--bg-card) !important;
  backdrop-filter: blur(8px) saturate(180%);
  -webkit-backdrop-filter: blur(8px) saturate(180%);
  border: 1px solid var(--border-subtle) !important;
  border-radius: 12px !important;
  box-shadow: var(--shadow-sm);
}

.card-header,
.box-header,
.panel-heading {
  background: var(--bg-elevated) !important;
  border-bottom: 1px solid var(--border-medium) !important;
  color: var(--text-primary) !important;
  font-weight: 600;
  border-radius: 12px 12px 0 0 !important;
}

.card-body,
.box-body,
.panel-body {
  color: var(--text-secondary) !important;
}

.card-footer,
.box-footer {
  background: transparent !important;
  border-top: 1px solid var(--border-subtle) !important;
}

/* ===== TABLES ===== */
.table {
  color: var(--text-secondary) !important;
}

.table thead th {
  color: var(--text-primary) !important;
  font-weight: 600;
  border-bottom: 2px solid var(--border-medium) !important;
  background: var(--bg-elevated) !important;
}

.table tbody td {
  border-color: var(--border-subtle) !important;
}

.table tbody tr {
  transition: background-color 0.2s ease;
}

.table tbody tr:hover {
  background: rgba(96, 165, 250, 0.08) !important;
}

.table-striped tbody tr:nth-of-type(odd) {
  background: rgba(51, 65, 85, 0.3) !important;
}

/* ===== FORMS ===== */
.form-control,
.form-select,
select,
textarea,
input[type="text"],
input[type="email"],
input[type="password"],
input[type="number"] {
  background: var(--bg-elevated) !important;
  border: 1px solid var(--border-medium) !important;
  color: var(--text-primary) !important;
  border-radius: 8px !important;
  transition: border-color 0.2s ease, background-color 0.2s ease;
}

.form-control:focus,
.form-select:focus,
select:focus,
textarea:focus,
input:focus {
  background: var(--bg-card) !important;
  border-color: var(--accent-primary) !important;
  box-shadow: 0 0 0 3px rgba(96, 165, 250, 0.15) !important;
  outline: none !important;
}

.form-control::placeholder {
  color: var(--text-muted) !important;
}

label {
  color: var(--text-secondary) !important;
  font-weight: 500;
}

/* ===== BUTTONS ===== */
.btn {
  border-radius: 8px !important;
  font-weight: 500;
  padding: 8px 16px;
  transition: background-color 0.2s ease, border-color 0.2s ease;
}

.btn-primary {
  background: var(--accent-secondary) !important;
  border-color: var(--accent-secondary) !important;
  color: white !important;
}

.btn-primary:hover,
.btn-primary:focus {
  background: var(--accent-primary) !important;
  border-color: var(--accent-primary) !important;
}

.btn-success {
  background: #10b981 !important;
  border-color: #10b981 !important;
  color: white !important;
}

.btn-success:hover {
  background: #059669 !important;
  border-color: #059669 !important;
}

.btn-danger {
  background: #ef4444 !important;
  border-color: #ef4444 !important;
  color: white !important;
}

.btn-danger:hover {
  background: #dc2626 !important;
  border-color: #dc2626 !important;
}

.btn-warning {
  background: #f59e0b !important;
  border-color: #f59e0b !important;
  color: white !important;
}

.btn-warning:hover {
  background: #d97706 !important;
  border-color: #d97706 !important;
}

.btn-default,
.btn-secondary {
  background: var(--bg-elevated) !important;
  border-color: var(--border-medium) !important;
  color: var(--text-primary) !important;
}

.btn-default:hover,
.btn-secondary:hover {
  background: var(--bg-card) !important;
}

/* ===== MODALS ===== */
.modal-content {
  background: var(--bg-card) !important;
  backdrop-filter: blur(10px) saturate(180%);
  -webkit-backdrop-filter: blur(10px) saturate(180%);
  border: 1px solid var(--border-medium) !important;
  border-radius: 12px !important;
  box-shadow: var(--shadow-md);
}

.modal-header {
  background: var(--bg-elevated) !important;
  border-bottom: 1px solid var(--border-medium) !important;
  color: var(--text-primary) !important;
}

.modal-body {
  color: var(--text-secondary) !important;
}

.modal-footer {
  background: transparent !important;
  border-top: 1px solid var(--border-subtle) !important;
}

.modal-backdrop {
  background: rgba(0, 0, 0, 0.7) !important;
}

/* ===== ALERTS ===== */
.alert {
  border-radius: 8px !important;
  border: 1px solid !important;
}

.alert-success {
  background: rgba(16, 185, 129, 0.15) !important;
  border-color: rgba(16, 185, 129, 0.3) !important;
  color: #6ee7b7 !important;
}

.alert-info {
  background: rgba(96, 165, 250, 0.15) !important;
  border-color: rgba(96, 165, 250, 0.3) !important;
  color: #93c5fd !important;
}

.alert-warning {
  background: rgba(245, 158, 11, 0.15) !important;
  border-color: rgba(245, 158, 11, 0.3) !important;
  color: #fbbf24 !important;
}

.alert-danger {
  background: rgba(239, 68, 68, 0.15) !important;
  border-color: rgba(239, 68, 68, 0.3) !important;
  color: #fca5a5 !important;
}

/* ===== BADGES ===== */
.badge,
.label {
  border-radius: 6px !important;
  padding: 4px 8px;
  font-weight: 500;
}

/* ===== PAGINATION ===== */
.pagination > li > a,
.pagination > li > span {
  background: var(--bg-elevated) !important;
  border-color: var(--border-medium) !important;
  color: var(--text-secondary) !important;
}

.pagination > li > a:hover {
  background: var(--bg-card) !important;
  color: var(--text-primary) !important;
}

.pagination > .active > a {
  background: var(--accent-secondary) !important;
  border-color: var(--accent-secondary) !important;
  color: white !important;
}

/* ===== DROPDOWNS ===== */
.dropdown-menu {
  background: var(--bg-card) !important;
  backdrop-filter: blur(10px) saturate(180%);
  -webkit-backdrop-filter: blur(10px) saturate(180%);
  border: 1px solid var(--border-medium) !important;
  border-radius: 8px !important;
  box-shadow: var(--shadow-md);
}

.dropdown-menu > li > a {
  color: var(--text-secondary) !important;
  transition: background-color 0.2s ease, color 0.2s ease;
}

.dropdown-menu > li > a:hover {
  background: var(--bg-elevated) !important;
  color: var(--text-primary) !important;
}

/* ===== PROGRESS BARS ===== */
.progress {
  background: var(--bg-elevated) !important;
  border-radius: 8px !important;
}

.progress-bar {
  background: var(--accent-secondary) !important;
}

/* ===== TABS ===== */
.nav-tabs {
  border-bottom: 1px solid var(--border-medium) !important;
}

.nav-tabs > li > a {
  color: var(--text-muted) !important;
  border-radius: 8px 8px 0 0 !important;
  transition: background-color 0.2s ease, color 0.2s ease;
}

.nav-tabs > li > a:hover {
  background: var(--bg-elevated) !important;
  color: var(--text-primary) !important;
}

.nav-tabs > li.active > a {
  background: var(--bg-card) !important;
  border-color: var(--border-medium) var(--border-medium) transparent !important;
  color: var(--text-primary) !important;
}

/* ===== FOOTER ===== */
.main-footer {
  background: transparent !important;
  border-top: 1px solid var(--border-subtle) !important;
  color: var(--text-muted) !important;
}

/* ===== REACT/TAILWIND USER PANEL OVERRIDES ===== */
/* Safe overrides for user panel - preserve Tailwind functionality */

[class*="bg-neutral"],
[class*="bg-gray"] {
  background-color: var(--bg-card) !important;
}

[class*="text-neutral"],
[class*="text-gray"] {
  color: var(--text-secondary) !important;
}

/* Server console and terminal */
.terminal,
.xterm,
[class*="console"] {
  background: rgba(0, 0, 0, 0.85) !important;
  border-radius: 8px !important;
}

/* Code blocks */
pre,
code {
  background: var(--bg-elevated) !important;
  border: 1px solid var(--border-subtle) !important;
  border-radius: 6px !important;
  color: var(--text-primary) !important;
}

/* ===== SCROLLBAR STYLING ===== */
::-webkit-scrollbar {
  width: 10px;
  height: 10px;
}

::-webkit-scrollbar-track {
  background: rgba(15, 23, 42, 0.5);
}

::-webkit-scrollbar-thumb {
  background: rgba(148, 163, 184, 0.3);
  border-radius: 5px;
}

::-webkit-scrollbar-thumb:hover {
  background: rgba(148, 163, 184, 0.5);
}

/* ===== FIX FOR SCROLL ISSUES ===== */
/* Ensure AdminLTE content area scrolls properly */
.content-wrapper,
.main-content {
  overflow-y: auto !important;
  overflow-x: hidden;
}

/* Prevent layout breaks */
.wrapper {
  overflow: visible !important;
}

/* ===== ACCESSIBILITY ===== */
*:focus {
  outline: 2px solid var(--accent-primary) !important;
  outline-offset: 2px;
}

button:focus,
a:focus,
.btn:focus {
  outline: 2px solid var(--accent-primary) !important;
  outline-offset: 2px;
}

/* ===== END OF THEME ===== */
EOF

# Clear cache
php artisan view:clear 2>/dev/null || true
php artisan optimize:clear 2>/dev/null || true
php artisan config:clear 2>/dev/null || true
php artisan route:clear 2>/dev/null || true

echo ""
echo "=========================================="
echo "[✓] Glass Classic Theme Applied"
echo "=========================================="
echo ""
echo "Rollback command:"
echo "bash -c \"cd /var/www/pterodactyl && ls -t public/themes/noobee-admin.css.backup.* | head -1 | xargs -I {} cp {} public/themes/noobee-admin.css && php artisan view:clear && php artisan optimize:clear && echo Rollback complete\""
echo ""
'

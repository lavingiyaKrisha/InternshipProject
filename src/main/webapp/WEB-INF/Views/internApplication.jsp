<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>My Applications | ShipVyom</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">
    
    <style>
        body { background-color: #f8faff; font-family: 'Inter', sans-serif; color: #333; }
        
        /* Navbar Styling */
        .navbar { background: white; border-bottom: 1px solid #eee; padding: 0.8rem 2rem; }
        .nav-link { color: #5c677d !important; font-weight: 500; margin: 0 10px; font-size: 0.9rem; }
        .nav-link.active { background: #303b96; color: white !important; border-radius: 8px; padding: 8px 16px; }
        
        /* Application Card */
        .app-card { background: white; border-radius: 20px; border: none; box-shadow: 0 4px 15px rgba(0,0,0,0.03); padding: 30px; margin-bottom: 30px; }
        .role-icon { width: 48px; height: 48px; background: #1e293b; color: white; border-radius: 12px; display: flex; align-items: center; justify-content: center; font-size: 1.2rem; }
        
        /* Status Badges */
        .badge-applied { background: #eef2ff; color: #4338ca; border-radius: 20px; padding: 6px 16px; font-weight: 600; font-size: 0.75rem; }
        .badge-assignment { background: #fff4e6; color: #f76707; border-radius: 20px; padding: 6px 16px; font-weight: 600; font-size: 0.75rem; }
        
        /* Timeline Tracker */
        .timeline-container { position: relative; padding: 40px 0; margin-top: 20px; }
        .timeline-line { position: absolute; top: 50px; left: 5%; width: 90%; height: 3px; background: #e2e8f0; z-index: 1; }
        .timeline-progress { position: absolute; top: 50px; left: 5%; height: 3px; background: #303b96; z-index: 2; }
        
        .timeline-steps { display: flex; justify-content: space-between; position: relative; z-index: 3; }
        .step { text-align: center; width: 100px; }
        .step-circle { width: 32px; height: 32px; border-radius: 50%; background: white; border: 2px solid #e2e8f0; margin: 0 auto 10px; display: flex; align-items: center; justify-content: center; font-weight: 600; font-size: 0.8rem; color: #94a3b8; }
        .step-label { font-size: 0.8rem; font-weight: 600; color: #94a3b8; }
        .step-sub { font-size: 0.65rem; font-weight: 700; text-transform: uppercase; color: #94a3b8; margin-top: 4px; display: block; }

        /* Step Active/Completed States */
        .step.completed .step-circle { background: #303b96; border-color: #303b96; color: white; }
        .step.completed .step-label { color: #1e293b; }
        .step.active .step-circle { border-color: #303b96; color: #303b96; border-width: 2px; }
        .step.active .step-label { color: #1e293b; }
        .step.active .step-sub { color: #303b96; background: #eef2ff; display: inline-block; padding: 2px 8px; border-radius: 4px; }

        /* Footer Buttons */
        .btn-apply-more { background: #303b96; color: white; border-radius: 10px; padding: 10px 24px; font-weight: 600; }
        .btn-view-resume { border: 1px solid #e2e8f0; border-radius: 8px; background: white; padding: 6px 15px; font-size: 0.85rem; color: #475569; font-weight: 500; }
    </style>
</head>
<body>

<nav class="navbar navbar-expand-lg">
    <div class="container-fluid">
        <a class="navbar-brand d-flex align-items-center" href="#">
            <img src="/images/logo.png" height="30" class="me-2">
            <span class="text-muted pe-3 border-end">Career Portal</span>
        </a>
        <div class="collapse navbar-collapse justify-content-center">
            <ul class="navbar-nav">
                <li class="nav-item"><a class="nav-link" href="/dashboard"><i class="bi bi-house me-1"></i> Dashboard</a></li>
                <li class="nav-item"><a class="nav-link active" href="/applications"><i class="bi bi-file-earmark-text me-1"></i> My Applications</a></li>
                <li class="nav-item"><a class="nav-link" href="/assignments"><i class="bi bi-clipboard-check me-1"></i> Assignments</a></li>
                <li class="nav-item"><a class="nav-link" href="/profile"><i class="bi bi-person me-1"></i> Profile</a></li>
            </ul>
        </div>
        <div class="text-end me-3">
            <div class="fw-bold small">Krisha Lavingiya</div>
            <div class="text-muted" style="font-size: 0.75rem;">krishalavingiya08@gmail.com</div>
        </div>
        <i class="bi bi-box-arrow-right text-muted fs-5 cursor-pointer"></i>
    </div>
</nav>

<div class="container mt-5">
    <div class="d-flex justify-content-between align-items-center mb-4">
        <div>
            <h3 class="fw-bold mb-1">My Applications</h3>
            <p class="text-muted small">Track the live status of your job applications</p>
        </div>
        <a href="/careers" class="btn btn-apply-more"><i class="bi bi-plus me-2"></i> Apply for More</a>
    </div>

    <div class="app-card">
        <div class="d-flex justify-content-between align-items-start">
            <div class="d-flex align-items-center">
                <div class="role-icon me-3"><i class="bi bi-briefcase-fill"></i></div>
                <div>
                    <h5 class="fw-bold mb-1">Frontend Developer Intern</h5>
                    <div class="text-muted small">
                        <i class="bi bi-calendar3 me-1"></i> Applied: Jan 27, 2026 
                        <span class="mx-2">|</span> 
                        <i class="bi bi-geo-alt me-1"></i> Remote / Hybrid
                    </div>
                </div>
            </div>
            <div class="text-end">
                <div class="text-uppercase text-muted fw-bold mb-1" style="font-size: 0.65rem;">Current Status</div>
                <span class="badge-applied">Applied</span>
            </div>
        </div>

        <div class="timeline-container">
            <div class="timeline-line"></div>
            <div class="timeline-progress" style="width: 0%;"></div>
            <div class="timeline-steps">
                <div class="step active">
                    <div class="step-circle">1</div>
                    <div class="step-label">Applied</div>
                    <span class="step-sub">Current</span>
                </div>
                <div class="step">
                    <div class="step-circle">2</div>
                    <div class="step-label">Reviewing</div>
                </div>
                <div class="step">
                    <div class="step-circle">3</div>
                    <div class="step-label">Interview</div>
                </div>
                <div class="step">
                    <div class="step-circle">4</div>
                    <div class="step-label">Assignment</div>
                </div>
                <div class="step">
                    <div class="step-circle">5</div>
                    <div class="step-label">Selected</div>
                </div>
            </div>
        </div>
    </div>

    <div class="app-card">
        <div class="d-flex justify-content-between align-items-start">
            <div class="d-flex align-items-center">
                <div class="role-icon me-3"><i class="bi bi-briefcase-fill"></i></div>
                <div>
                    <h5 class="fw-bold mb-1">Backend Developer Intern</h5>
                    <div class="text-muted small">
                        <i class="bi bi-calendar3 me-1"></i> Applied: Jan 26, 2026 
                        <span class="mx-2">|</span> 
                        <i class="bi bi-geo-alt me-1"></i> Remote / Hybrid
                    </div>
                </div>
            </div>
            <div class="text-end">
                <div class="text-uppercase text-muted fw-bold mb-1" style="font-size: 0.65rem;">Current Status</div>
                <span class="badge-assignment">Assignment</span>
            </div>
        </div>

        <div class="timeline-container">
            <div class="timeline-line"></div>
            <div class="timeline-progress" style="width: 75%;"></div>
            <div class="timeline-steps">
                <div class="step completed">
                    <div class="step-circle"><i class="bi bi-check-lg"></i></div>
                    <div class="step-label">Applied</div>
                </div>
                <div class="step completed">
                    <div class="step-circle"><i class="bi bi-check-lg"></i></div>
                    <div class="step-label">Reviewing</div>
                </div>
                <div class="step completed">
                    <div class="step-circle"><i class="bi bi-check-lg"></i></div>
                    <div class="step-label">Interview</div>
                </div>
                <div class="step active">
                    <div class="step-circle">4</div>
                    <div class="step-label">Assignment</div>
                    <span class="step-sub">Current</span>
                </div>
                <div class="step">
                    <div class="step-circle">5</div>
                    <div class="step-label">Selected</div>
                </div>
            </div>
        </div>

        <div class="border-top pt-3 mt-4 d-flex justify-content-between align-items-center">
            <span class="text-uppercase text-muted fw-bold" style="font-size: 0.7rem; letter-spacing: 1px;">Documents</span>
            <button class="btn btn-view-resume"><i class="bi bi-file-earmark-pdf me-2"></i> View Sent Resume</button>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
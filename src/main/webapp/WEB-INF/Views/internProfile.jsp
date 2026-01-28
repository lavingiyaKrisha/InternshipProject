<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>User Profile | ShipVyom</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600&display=swap" rel="stylesheet">
    
    <style>
        body { background-color: #f8faff; font-family: 'Inter', sans-serif; color: #333; }
        
        /* Navbar Styling */
        .navbar { background: white; border-bottom: 1px solid #eee; padding: 0.8rem 2rem; }
        .nav-link { color: #5c677d !important; font-weight: 500; margin: 0 10px; }
        .nav-link.active { background: #303b96; color: white !important; border-radius: 8px; padding: 8px 16px; }
        
        /* Cards & Components */
        .profile-card { background: white; border-radius: 20px; border: none; box-shadow: 0 2px 15px rgba(0,0,0,0.02); margin-bottom: 24px; padding: 30px; }
        .avatar-circle { width: 100px; height: 100px; border: 3px solid #303b96; border-radius: 50%; display: flex; align-items: center; justify-content: center; font-size: 2.5rem; font-weight: bold; position: relative; }
        .status-dot { width: 15px; height: 15px; background: #28a745; border-radius: 50%; position: absolute; bottom: 5px; right: 5px; border: 2px solid white; }
        
        .badge-candidate { background: #eef2ff; color: #4338ca; border-radius: 20px; padding: 5px 15px; font-weight: 500; }
        .member-since { font-size: 0.85rem; color: #6c757d; }
        
        /* Right Sidebar Cards */
        .resume-card { background: #303b96; color: white; border-radius: 15px; padding: 25px; }
        .btn-upload { background: white; color: #303b96; font-weight: 600; border-radius: 10px; width: 100%; border: none; padding: 10px; }
        .protip-card { background: #fff8f1; border: 1px solid #ffe8cc; border-radius: 15px; padding: 20px; color: #a35d00; }
        
        /* Form Styling */
        .detail-label { font-size: 0.75rem; font-weight: 700; color: #adb5bd; text-transform: uppercase; margin-bottom: 4px; }
        .detail-value { font-weight: 600; color: #212529; margin-bottom: 20px; }
        .social-link-box { border: 1px solid #f1f3f5; border-radius: 10px; padding: 12px; margin-bottom: 10px; display: flex; align-items: center; background: #fff; }
        .social-link-box i { font-size: 1.2rem; margin-right: 15px; color: #5c677d; }
    </style>
</head>
<body>

<nav class="navbar navbar-expand-lg sticky-top">
    <div class="container-fluid">
        <a class="navbar-brand d-flex align-items-center" href="#">
            <img src="/images/logo.png" height="30" class="me-2">
            <span class="text-muted pe-3 border-end">Career Portal</span>
        </a>
        <div class="collapse navbar-collapse justify-content-center">
            <ul class="navbar-nav">
                <li class="nav-item"><a class="nav-link" href="/dashboard"><i class="bi bi-house me-1"></i> Dashboard</a></li>
                <li class="nav-item"><a class="nav-link" href="/applications"><i class="bi bi-file-earmark-text me-1"></i> My Applications</a></li>
                <li class="nav-item"><a class="nav-link" href="/assignments"><i class="bi bi-clipboard-check me-1"></i> Assignments</a></li>
                <li class="nav-item"><a class="nav-link active" href="/profile"><i class="bi bi-person me-1"></i> Profile</a></li>
            </ul>
        </div>
        <div class="text-end">
            <div class="fw-bold small">Krisha Lavingiya</div>
            <div class="text-muted" style="font-size: 0.75rem;">krishalavingiya08@gmail.com</div>
        </div>
        <i class="bi bi-box-arrow-right ms-3 text-muted" style="font-size: 1.2rem; cursor: pointer;"></i>
    </div>
</nav>

<div class="container mt-5">
    <div class="row">
        <div class="col-lg-8">
            <div class="profile-card d-flex align-items-center">
                <div class="avatar-circle me-4 text-primary">
                    K <div class="status-dot"></div>
                </div>
                <div>
                    <h3 class="fw-bold mb-1">Krisha Lavingiya</h3>
                    <p class="text-muted mb-2">krishalavingiya08@gmail.com</p>
                    <div class="d-flex align-items-center gap-3">
                        <span class="badge-candidate">Candidate</span>
                        <span class="member-since"><i class="bi bi-calendar3 me-1"></i> Member since Jan 2026</span>
                    </div>
                </div>
            </div>

            <div class="profile-card">
                <div class="d-flex justify-content-between align-items-center mb-4">
                    <h5 class="fw-bold mb-0"><i class="bi bi-person me-2 text-primary"></i> Personal Details</h5>
                    <button class="btn btn-sm btn-light border px-3" style="border-radius: 8px;">Edit Profile</button>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="detail-label">Full Name</div>
                        <div class="detail-value">Krisha Lavingiya</div>
                    </div>
                    <div class="col-md-6">
                        <div class="detail-label">Phone Number</div>
                        <div class="detail-value">9023066224</div>
                    </div>
                    <div class="col-md-12">
                        <div class="detail-label">Email Address</div>
                        <div class="detail-value p-2 bg-light rounded d-flex justify-content-between align-items-center">
                            <span>krishalavingiya08@gmail.com</span>
                            <i class="bi bi-lock-fill text-muted"></i>
                        </div>
                    </div>
                </div>
            </div>

            <div class="profile-card">
                <h5 class="fw-bold mb-4"><i class="bi bi-link-45deg me-2 text-warning"></i> Social & Portfolio</h5>
                
                <div class="detail-label">LinkedIn URL</div>
                <div class="social-link-box">
                    <i class="bi bi-linkedin"></i> <span class="text-muted">Not provided</span>
                </div>
                
                <div class="detail-label">GitHub URL</div>
                <div class="social-link-box">
                    <i class="bi bi-github"></i> <span class="text-muted">Not provided</span>
                </div>

                <div class="detail-label">Portfolio URL</div>
                <div class="social-link-box">
                    <i class="bi bi-globe"></i> <span class="text-muted">Not provided</span>
                </div>
            </div>
        </div>

        <div class="col-lg-4">
            <div class="resume-card mb-4">
                <div class="d-flex align-items-center mb-3">
                    <i class="bi bi-file-earmark-text fs-4 me-2"></i>
                    <h5 class="mb-0 fw-bold">Resume / CV</h5>
                </div>
                <p class="small opacity-75 mb-4">Upload your resume to speed up your application process.</p>
                <button class="btn-upload">Upload Resume</button>
            </div>

            <div class="protip-card">
                <h6 class="fw-bold mb-2">Pro Tip 💡</h6>
                <p class="small mb-0" style="line-height: 1.6;">
                    Keep your profile updated! Recruiters check these details before scheduling interviews. 
                    Adding a portfolio increases your chances by <strong>40%</strong>.
                </p>
            </div>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Assignments Dashboard | ShipVyom</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">
    
    <style>
        body { background-color: #f8faff; font-family: 'Inter', sans-serif; color: #333; }
        
        /* Navbar Styling - Consistent with previous pages */
        .navbar { background: white; border-bottom: 1px solid #eee; padding: 0.8rem 2rem; }
        .nav-link { color: #5c677d !important; font-weight: 500; margin: 0 10px; font-size: 0.9rem; }
        .nav-link.active { background: #303b96; color: white !important; border-radius: 8px; padding: 8px 16px; }
        
        /* Header Section */
        .dashboard-header { margin-top: 40px; margin-bottom: 30px; }
        .section-title { font-weight: 700; font-size: 0.95rem; display: flex; align-items: center; gap: 8px; margin-bottom: 20px; }
        .dot-active { width: 8px; height: 8px; background: #fd7e14; border-radius: 50%; }
        .dot-completed { width: 8px; height: 8px; background: #339af0; border-radius: 50%; }

        /* Active Tasks Card */
        .empty-state-card {
            background: white; border: 1px dashed #e2e8f0; border-radius: 20px;
            padding: 80px 40px; text-align: center; height: 400px;
            display: flex; flex-direction: column; align-items: center; justify-content: center;
        }
        .check-circle {
            width: 60px; height: 60px; background: #f0fdf4; color: #22c55e;
            border-radius: 50%; display: flex; align-items: center;
            justify-content: center; font-size: 1.8rem; margin-bottom: 20px;
        }

        /* Completed History Card */
        .history-card {
            background: white; border: 1px solid #f1f5f9; border-radius: 15px;
            padding: 20px; box-shadow: 0 4px 12px rgba(0,0,0,0.02);
        }
        .badge-submitted {
            background: #eef2ff; color: #4338ca; border-radius: 6px;
            font-size: 0.65rem; font-weight: 700; padding: 4px 8px; text-transform: uppercase;
        }
        .btn-view-work {
            width: 100%; border: 1px solid #f1f5f9; background: #f8fafc;
            color: #475569; font-weight: 600; font-size: 0.85rem; padding: 8px;
            border-radius: 8px; margin-top: 15px; transition: 0.2s;
        }
        .btn-view-work:hover { background: #f1f5f9; }
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
                <li class="nav-item"><a class="nav-link" href="/applications"><i class="bi bi-file-earmark-text me-1"></i> My Applications</a></li>
                <li class="nav-item"><a class="nav-link active" href="/assignments"><i class="bi bi-clipboard-check me-1"></i> Assignments</a></li>
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

<div class="container">
    <div class="dashboard-header">
        <h3 class="fw-bold mb-1">Assignments Dashboard</h3>
        <p class="text-muted small">Complete tasks to showcase your skills to the hiring team</p>
    </div>

    <div class="row">
        <div class="col-lg-8">
            <div class="section-title">
                <span class="dot-active"></span> Active Tasks (0)
            </div>
            <div class="empty-state-card">
                <div class="check-circle">
                    <i class="bi bi-check-lg"></i>
                </div>
                <h5 class="fw-bold mb-1">All caught up!</h5>
                <p class="text-muted small">You have no pending assignments at the moment.</p>
            </div>
        </div>

        <div class="col-lg-4">
            <div class="section-title">
                <span class="dot-completed"></span> Completed History
            </div>
            
            <div class="history-card">
                <div class="d-flex justify-content-between align-items-start mb-2">
                    <h6 class="fw-bold mb-0 pe-2" style="font-size: 0.95rem;">Hyperlocal backend assignment</h6>
                    <span class="badge-submitted">Submitted</span>
                </div>
                <p class="text-muted mb-3" style="font-size: 0.8rem; line-height: 1.5;">
                    Assignment Design and Implement a Hyperlocal Booking & Courier Allocation Backend...
                </p>
                <div class="text-muted" style="font-size: 0.75rem;">
                    Submitted: 27/01/2026
                </div>
                <button class="btn btn-view-work">View Work</button>
            </div>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
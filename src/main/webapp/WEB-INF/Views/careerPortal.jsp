<!DOCTYPE html>
<html lang="en">
<head>
	<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600&display=swap" rel="stylesheet">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600&display=swap" rel="stylesheet">
    <style>
        body { background-color: #f8faff; font-family: 'Inter', sans-serif; color: #333; }
        .navbar { background: white; border-bottom: 1px solid #eee; }
        .hero-banner { 
            background: linear-gradient(135deg, #444fb3 0%, #303b96 100%);
            border-radius: 20px; color: white; padding: 40px; margin-top: 20px;
        }
        .stat-card {
            background: white; border: none; border-radius: 15px;
            box-shadow: 0 4px 12px rgba(0,0,0,0.03); padding: 20px;
        }
        .app-card {
            border: 1px solid #f0f0f0; border-radius: 12px; padding: 15px; margin-bottom: 10px;
        }
        .badge-status { background: #fff4e6; color: #ff922b; border-radius: 8px; padding: 5px 12px; font-size: 0.8rem; }
        .btn-browse { background: #303b96; color: white; border-radius: 10px; padding: 12px 30px; }
        <style>
	    body {
	        font-family: 'Inter', sans-serif;
	    }
	    .navbar {
	        background-color: #ffffff;
	        border-bottom: 1px solid #e9ecef;
	        padding: 0.75rem 2rem;
	    }
	    .navbar-brand img {
	        height: 32px;
	        margin-right: 12px;
	    }
	    .brand-separator {
	        border-left: 1px solid #dee2e6;
	        height: 24px;
	        margin: 0 15px;
	    }
	    .career-portal-text {
	        color: #6c757d;
	        font-size: 0.95rem;
	        font-weight: 500;
	    }
	    .nav-link {
	        color: #495057 !important;
	        font-weight: 500;
	        font-size: 0.95rem;
	        margin: 0 12px;
	        display: flex;
	        align-items: center;
	        gap: 8px;
	    }
	    .nav-link i {
	        font-size: 1.1rem;
	        color: #5c677d;
	    }
	    .nav-link:hover {
	        color: #303b96 !important;
	    }
	    .profile-section {
	        display: flex;
	        align-items: center;
	        gap: 15px;
	    }
	    .user-info {
	        text-align: right;
	        line-height: 1.2;
	    }
	    .user-name {
	        font-weight: 600;
	        font-size: 0.95rem;
	        display: block;
	    }
	    .user-email {
	        font-size: 0.8rem;
	        color: #6c757d;
	    }
	    .logout-icon {
	        color: #5c677d;
	        font-size: 1.2rem;
	        cursor: pointer;
	    }
</style>
    </style>
</head>
<body>
<nav class="navbar navbar-expand-lg">
    <div class="container-fluid">
        <div class="d-flex align-items-center">
            <a class="navbar-brand d-flex align-items-center" href="#">
                <img src="/images/logo.png" alt="ShipVyom">
                <span class="brand-separator"></span>
                <span class="career-portal-text">Career Portal</span>
            </a>
        </div>

        <div class="collapse navbar-collapse justify-content-center">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" href="/dashboard"><i class="bi bi-house"></i> Dashboard</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/applications"><i class="bi bi-file-earmark-text"></i> My Applications</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/assignments"><i class="bi bi-clipboard-check"></i> Assignments</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/profile"><i class="bi bi-person"></i> Profile</a>
                </li>
            </ul>
        </div>

        <div class="profile-section">
            <div class="user-info">
                <span class="user-name">Krisha Lavingiya</span>
                <span class="user-email">krishalavingiya08@gmail.com</span>
            </div>
            <a href="/logout" class="logout-icon">
                <i class="bi bi-box-arrow-right"></i>
            </a>
        </div>
    </div>
</nav>


<div class="container">
    <div class="hero-banner">
        <span class="badge bg-soft-light mb-2">Career Portal • Active</span>
        <h2>Welcome back, ${userName}! </h2>
        <p class="opacity-75">Track your applications, complete assignments, and stay updated.</p>
    </div>

    <div class="row mt-4">
        <div class="col-md-4">
            <div class="stat-card d-flex align-items-center">
                
                <div><p class="mb-0 text-muted small">Applications</p><h4 class="mb-0">${appCount}</h4></div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="stat-card d-flex align-items-center">
                <div><p class="mb-0 text-muted small">Pending Tasks</p><h4 class="mb-0">${pendingTasks}</h4></div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="stat-card d-flex align-items-center">
               
                <div><p class="mb-0 text-muted small">Latest Status</p><span class="badge-status">● Assignment</span></div>
            </div>
        </div>
    </div>

    <div class="row mt-4">
        <div class="col-md-6">
            <div class="stat-card h-100">
                <div class="d-flex justify-content-between mb-4">
                    <h6 class="fw-bold">Recent Applications</h6>
                    <a href="#" class="small text-decoration-none">View all ></a>
                </div>
                <div class="app-card d-flex justify-content-between align-items-center">
                    <div>
                        <p class="mb-0 fw-600">Backend Developer Intern</p>
                        <small class="text-muted">Applied 20/01/2026</small>
                    </div>
                    <span class="badge-status">Assignment</span>
                </div>
            </div>
        </div>

        <div class="col-md-6">
            <div class="stat-card h-100 text-center d-flex flex-column justify-content-center">
   
                <h6>All caught up!</h6>
                <p class="text-muted small">No pending assignments</p>
            </div>
        </div>
    </div>

    <div class="stat-card mt-4 d-flex justify-content-between align-items-center p-4 mb-5">
        <div>
            <h6 class="fw-bold">Looking for more opportunities?</h6>
            <p class="mb-0 text-muted small">Browse our open positions and find your next role.</p>
        </div>
        <button class="btn btn-browse">Browse Openings →</button>
    </div>
</div>



</body>
</html>
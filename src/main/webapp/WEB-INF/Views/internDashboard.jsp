<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Careers | ShipVyom</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    
    <style>
        :root { --brand-blue: #303b96; --brand-gradient: linear-gradient(135deg, #444fb3 0%, #303b96 100%); }
        body { font-family: 'Inter', sans-serif; background-color: #fff; color: #333; overflow-x: hidden; }
        
        /* Navbar */
        .navbar { background: rgba(255, 255, 255, 0.95); backdrop-filter: blur(10px); border-bottom: 1px solid #eee; }
        .nav-link { font-size: 0.9rem; font-weight: 500; color: #555 !important; margin: 0 10px; }
        .btn-nav-outline { border: 1px solid #dee2e6; border-radius: 8px; padding: 6px 15px; font-size: 0.85rem; }

        /* Hero Section */
        .hero { background: var(--brand-gradient); color: white; padding: 100px 0; text-align: center; border-radius: 0 0 50% 50% / 0 0 10% 10%; }
        .hero h1 { font-weight: 700; font-size: 3.5rem; margin-bottom: 20px; }
        .hero h1 span { color: #fd7e14; }
        .stat-box { background: rgba(255, 255, 255, 0.1); border: 1px solid rgba(255,255,255,0.2); border-radius: 15px; padding: 20px; transition: 0.3s; }
        .stat-box:hover { background: rgba(255,255,255,0.15); }

        /* Job Cards */
        .filter-chip { border: 1px solid #eee; border-radius: 20px; padding: 5px 20px; font-size: 0.85rem; cursor: pointer; background: white; }
        .filter-chip.active { background: var(--brand-blue); color: white; border-color: var(--brand-blue); }
        .job-card { border: 1px solid #f0f0f0; border-radius: 15px; padding: 25px; transition: 0.3s; height: 100%; display: flex; flex-direction: column; }
        .job-card:hover { border-color: var(--brand-blue); box-shadow: 0 10px 30px rgba(0,0,0,0.05); }
        .badge-intern { background: #e6fffa; color: #00bfa5; border-radius: 5px; font-size: 0.75rem; }
        .salary-text { color: #4338ca; font-weight: 600; font-size: 0.85rem; }

        /* Benefits */
        .benefit-card { background: #f8faff; border-radius: 20px; padding: 30px; border: 2px solid transparent; transition: all 0.3s ease; height: 100%; position: relative; }
        .benefit-card:hover, .benefit-card.highlighted { background: linear-gradient(135deg, #4d7cff 0%, #6131ff 100%); color: white !important; transform: translateY(-5px); }
        .benefit-card:hover .benefit-icon, .benefit-card.highlighted .benefit-icon { background: rgba(255, 255, 255, 0.2); color: white; }
        .benefit-card:hover .text-muted, .benefit-card.highlighted .text-muted { color: rgba(255, 255, 255, 0.8) !important; }
        .benefit-icon { width: 45px; height: 45px; background: #eef2ff; border-radius: 12px; display: flex; align-items: center; justify-content: center; font-size: 1.2rem; color: #303b96; margin-bottom: 20px; transition: 0.3s; }

        /* Form */
        .form-container { background: white; border-radius: 20px; box-shadow: 0 20px 50px rgba(0,0,0,0.1); padding: 40px; margin-top: -50px; position: relative; z-index: 10; border: 1px solid #f0f0f0; }
        .upload-area { border: 2px dashed #dee2e6; border-radius: 15px; padding: 40px; text-align: center; cursor: pointer; background: #fafafa; }
        .btn-submit { background: var(--brand-blue); color: white; padding: 12px; border-radius: 10px; font-weight: 600; width: 100%; border: none; }

        footer { background: #0b0e25; color: #adb5bd; padding: 80px 0 30px; font-size: 0.9rem; }
        footer h6 { color: white; font-weight: 600; margin-bottom: 20px; }
        footer a { color: #adb5bd; text-decoration: none; display: block; margin-bottom: 10px; }
    </style>
</head>
<body>

<nav class="navbar navbar-expand-lg sticky-top">
    <div class="container">
        <a class="navbar-brand d-flex align-items-center" href="#">
            <img src="/images/logo.png" height="30" class="me-2">
            <span class="text-muted small border-start ps-2">CAREERS</span>
        </a>
        <div class="ms-auto d-flex align-items-center">
            <a href="#openings" class="nav-link">Open Positions</a>
            <a href="#why-us" class="nav-link">Why Join Us</a>
            <a href="/dashboard" class="btn btn-nav-outline ms-3">Dashboard</a>
            <a href="${pageContext.request.contextPath}/logout" class="btn btn-nav-outline ms-2">Logout</a>
        </div>
    </div>
</nav>

<section class="hero">
    <div class="container">
        <span class="badge bg-warning text-dark mb-3">● We're Hiring!</span>
        <h1>We're Looking for <span>Engineers</span></h1>
        <p class="opacity-75 mb-5 mx-auto" style="max-width: 600px;">Be part of India's fastest-growing logistics revolution.</p>
        <div class="row justify-content-center g-4 mb-5">
            <div class="col-6 col-md-2"><div class="stat-box"><h4>50+</h4><small>Team Members</small></div></div>
            <div class="col-6 col-md-2"><div class="stat-box"><h4>3</h4><small>Cities</small></div></div>
            <div class="col-6 col-md-2"><div class="stat-box"><h4>4+</h4><small>Open Roles</small></div></div>
            <div class="col-6 col-md-2"><div class="stat-box"><h4>&infin;</h4><small>Growth</small></div></div>
        </div>
        <div class="d-flex justify-content-center gap-3">
            <a href="#openings" class="btn btn-light px-4 py-2">View Open Positions</a>
            <a href="#apply" class="btn btn-outline-light px-4 py-2">Submit Resume</a>
        </div>
    </div>
</section>

<section id="openings" class="py-5 mt-5">
    <div class="container text-center">
        <span class="badge bg-light text-primary border mb-2">Opportunities</span>
        <h2 class="fw-bold mb-5">Current Openings</h2>
        
        <div class="row g-4 text-start">
            <c:forEach var="internship" items="${internships}">
                <c:if test="${internship.active}">
                    <div class="col-md-4">
                        <div class="job-card">
                            <div class="d-flex justify-content-between mb-3">
                                <span class="badge-intern p-1 px-2">${internship.isPaid ? 'Paid' : 'Unpaid'}</span>
                                <span class="salary-text">
                                    <c:choose>
                                        <c:when test="${internship.isStipend}">₹${internship.stipendAmount}/mo</c:when>
                                        <c:otherwise>No Stipend</c:otherwise>
                                    </c:choose>
                                </span>
                            </div>
                            <h5 class="fw-bold mb-1">${internship.title}</h5>
                            <p class="small text-muted mb-4">${internship.description}</p>
                            <div class="mt-auto d-flex justify-content-between align-items-center">
                                <span class="small text-muted"><i class="bi bi-cpu me-1"></i> ${internship.technology.name}</span>
                                
                                <a href="#apply" class="btn btn-sm btn-primary px-3">Apply</a>
                            </div>
                        </div>
                    </div>
                </c:if>
            </c:forEach>
        </div>
    </div>
</section>

<section id="why-us" class="py-5 bg-light">
    <div class="container text-center py-5">
        <h2 class="fw-bold mb-5">Why Join ShipVyom?</h2>
        <div class="row g-4 text-start">
            <div class="col-md-4"><div class="benefit-card highlighted"><div class="benefit-icon"><i class="bi bi-graph-up-arrow"></i></div><h6 class="fw-bold">Growth Opportunities</h6><p class="small text-muted mb-0">Experience a rapidly growing startup environment.</p></div></div>
            <div class="col-md-4"><div class="benefit-card"><div class="benefit-icon"><i class="bi bi-clock"></i></div><h6 class="fw-bold">Flexible Work</h6><p class="small text-muted mb-0">Enjoy flexible hours and remote options.</p></div></div>
            <div class="col-md-4"><div class="benefit-card"><div class="benefit-icon"><i class="bi bi-currency-dollar"></i></div><h6 class="fw-bold">Competitive Pay</h6><p class="small text-muted mb-0">Industry-leading compensation.</p></div></div>
        </div>
    </div>
</section>

<section id="apply" class="py-5">
    <div class="container py-5">
        <div class="text-center mb-5">
            <h2 class="fw-bold mb-1">Apply Now</h2>
        </div>
        
        <div class="row justify-content-center">
            <div class="col-lg-7">
                <form class="form-container" action="submit-application" method="post" enctype="multipart/form-data">
                    <div class="row g-3 mb-4">
                        <div class="col-md-6">
                            <label class="form-label small fw-bold">Full Name *</label>
                            <input type="text" class="form-control p-2" value="${fullName}" readonly>
                        </div>
                        <div class="col-md-6">
                            <label class="form-label small fw-bold">Email Address *</label>
                            <input type="email" class="form-control p-2" value="${userEmail}" readonly>
                        </div>
                        <div class="col-md-6">
                            <label class="form-label small fw-bold">Phone Number *</label>
                            <input type="text" class="form-control p-2" value="${userPhone}">
                        </div>
                        <div class="col-md-6">
                            <label class="form-label small fw-bold">Position *</label>
                            <select class="form-select p-2" name="internshipId">
                                <option value="">Select a position</option>
                                <c:forEach var="intern" items="${internships}">
                                    <option value="${intern.internshipId}">${intern.title}</option>
                                </c:forEach>
                            </select>
                        </div>
                    </div>
                    
                    <div class="mb-4">
                        <label class="form-label small fw-bold">Resume / CV</label>
                        <div class="upload-area">
                            <input type="file" name="resume" class="d-none" id="resumeInput">
                            <label for="resumeInput" style="cursor: pointer;">
                                <i class="bi bi-cloud-arrow-up fs-2 text-muted"></i>
                                <p class="small mt-2 mb-0">Click to upload or drag and drop</p>
                            </label>
                        </div>
                    </div>
                    
                    <button type="submit" class="btn btn-submit">Submit Application &rightarrow;</button>
                </form>
            </div>
        </div>
    </div>
</section>

<footer>
    <div class="container">
        <div class="row g-5">
            <div class="col-lg-4">
                <img src="/images/logo-white.png" height="30" class="mb-3">
                <p class="small">India's fastest growing logistics platform for individuals and businesses. Delivering your package at a time.</p>
            </div>
            <div class="col-6 col-lg-2">
                <h6>Company</h6>
                <a href="#">About Us</a><a href="#">Careers</a><a href="#">Work with Us</a>
            </div>
            <div class="col-6 col-lg-2">
                <h6>Services</h6>
                <a href="#">Package Delivery</a><a href="#">Express Delivery</a><a href="#">API Integration</a>
            </div>
            <div class="col-6 col-lg-2">
                <h6>Support</h6>
                <a href="#">Help Center</a><a href="#">Track Shipment</a><a href="#">FAQs</a>
            </div>
            <div class="col-6 col-lg-2">
                <h6>Legal</h6>
                <a href="#">Terms of Service</a><a href="#">Privacy Policy</a><a href="#">Cookie Policy</a>
            </div>
        </div>
        <hr class="my-5 opacity-25">
        <p class="small text-center mb-0">&copy; 2026 ShipVyom. All rights reserved.</p>
    </div>
</footer>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
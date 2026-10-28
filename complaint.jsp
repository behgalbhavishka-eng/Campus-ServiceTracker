<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Submit Complaint | Campus Service Tracker</title>

    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, Helvetica, sans-serif;
            background: #f4f7fb;
            color: #243447;
            line-height: 1.6;
        }

        /* Navigation bar */
        nav {
            background: #17365d;
            color: white;
            padding: 18px 7%;
            display: flex;
            justify-content: space-between;
            align-items: center;
            flex-wrap: wrap;
            gap: 12px;
        }

        .logo {
            font-size: 21px;
            font-weight: bold;
        }

        nav .nav-links {
            display: flex;
            flex-wrap: wrap;
            gap: 18px;
        }

        nav a {
            color: white;
            text-decoration: none;
            font-size: 14px;
        }

        nav a:hover {
            text-decoration: underline;
        }

        /* Main form area */
        .container {
            max-width: 760px;
            margin: 40px auto;
            padding: 0 18px;
        }

        .form-card {
            background: white;
            padding: 35px;
            border-radius: 12px;
            box-shadow: 0 5px 22px rgba(23, 54, 93, 0.10);
        }

        .form-heading {
            text-align: center;
            margin-bottom: 28px;
        }

        .form-heading h1 {
            color: #17365d;
            font-size: 30px;
            margin-bottom: 10px;
        }

        .form-heading p {
            color: #64748b;
            font-size: 15px;
        }

        .info-message {
            background: #eaf3ff;
            border-left: 4px solid #2874a6;
            padding: 12px 15px;
            margin-bottom: 25px;
            border-radius: 4px;
            color: #24476a;
            font-size: 14px;
        }

        /* Labels and input fields */
        .form-group {
            margin-bottom: 20px;
        }

        label {
            display: block;
            margin-bottom: 8px;
            font-weight: bold;
            color: #243b55;
            font-size: 14px;
        }

        input,
        select,
        textarea {
            display: block;
            width: 100%;
            padding: 13px 14px;
            border: 1px solid #cbd5e1;
            border-radius: 6px;
            background: #ffffff;
            color: #243447;
            font-size: 15px;
            font-family: Arial, Helvetica, sans-serif;
        }

        input,
        select {
            min-height: 46px;
        }

        textarea {
            min-height: 130px;
            resize: vertical;
        }

        input:focus,
        select:focus,
        textarea:focus {
            outline: none;
            border-color: #2874a6;
            box-shadow: 0 0 0 3px rgba(40, 116, 166, 0.12);
        }

        input::placeholder,
        textarea::placeholder {
            color: #94a3b8;
        }

        .submit-btn {
            display: block;
            width: 100%;
            padding: 14px;
            margin-top: 8px;
            border: none;
            border-radius: 6px;
            background: #17365d;
            color: white;
            font-size: 16px;
            font-weight: bold;
            cursor: pointer;
        }

        .submit-btn:hover {
            background: #2874a6;
        }

        .back-link {
            display: block;
            text-align: center;
            margin-top: 22px;
            color: #1769aa;
            text-decoration: none;
            font-weight: bold;
            font-size: 14px;
        }

        .back-link:hover {
            text-decoration: underline;
        }

        /* Footer */
        footer {
            margin-top: 35px;
            background: #17365d;
            color: white;
            text-align: center;
            padding: 22px 15px;
            font-size: 13px;
        }

        footer p + p {
            margin-top: 4px;
            color: #d7e3f1;
        }

        /* Mobile screen support */
        @media (max-width: 600px) {
            nav {
                justify-content: center;
                text-align: center;
            }

            nav .nav-links {
                justify-content: center;
                gap: 12px;
            }

            .container {
                margin: 25px auto;
            }

            .form-card {
                padding: 22px 18px;
            }

            .form-heading h1 {
                font-size: 25px;
            }
        }
    </style>
</head>

<body>

<!-- Navigation -->
<nav>
    <div class="logo">Campus Service Tracker</div>

    <div class="nav-links">
        <a href="${pageContext.request.contextPath}/index.jsp">Home</a>
        <a href="${pageContext.request.contextPath}/complaint.jsp">Submit Complaint</a>
        <a href="${pageContext.request.contextPath}/student-status.jsp">Track Status</a>
        <a href="${pageContext.request.contextPath}/login.jsp">Admin Login</a>
    </div>
</nav>

<!-- Complaint form -->
<main class="container">

    <div class="form-card">

        <div class="form-heading">
            <h1>Submit a Complaint</h1>
            <p>
                Tell us about the campus problem so it can be
                reviewed and addressed.
            </p>
        </div>

        <div class="info-message">
            Please enter correct information in all fields.
            Your complaint will initially have Pending status.
        </div>

        <form action="${pageContext.request.contextPath}/complaint"
              method="post">

            <div class="form-group">
                <label for="studentName">Student Name</label>
                <input
                    type="text"
                    id="studentName"
                    name="studentName"
                    placeholder="Enter your full name"
                    maxlength="100"
                    autocomplete="name"
                    required>
            </div>

            <div class="form-group">
                <label for="studentId">Student ID</label>
                <input
                    type="text"
                    id="studentId"
                    name="studentId"
                    placeholder="Enter your student ID"
                    maxlength="50"
                    required>
            </div>

            <div class="form-group">
                <label for="serviceType">Service Type</label>
                <select id="serviceType" name="serviceType" required>
                    <option value="">-- Select a Service --</option>
                    <option value="Wi-Fi">Wi-Fi / Internet</option>
                    <option value="Electricity">Electricity</option>
                    <option value="Classroom">Classroom</option>
                    <option value="Laboratory">Laboratory</option>
                    <option value="Cleaning">Cleaning</option>
                    <option value="Water">Water Supply</option>
                    <option value="Other">Other</option>
                </select>
            </div>

            <div class="form-group">
                <label for="location">Problem Location</label>
                <input
                    type="text"
                    id="location"
                    name="location"
                    placeholder="Example: Computer Lab 2"
                    maxlength="100"
                    required>
            </div>

            <div class="form-group">
                <label for="description">Describe the Problem</label>
                <textarea
                    id="description"
                    name="description"
                    placeholder="Explain the problem in detail..."
                    maxlength="5000"
                    required></textarea>
            </div>

            <button type="submit" class="submit-btn">
                Submit Complaint
            </button>

        </form>

        <a class="back-link"
           href="${pageContext.request.contextPath}/index.jsp">
            &larr; Back to Home
        </a>

    </div>

</main>

<!-- Footer -->
<footer>
    <p>Campus Service Tracker</p>
    <p>Helping improve campus services, one complaint at a time.</p>
</footer>

</body>
</html>

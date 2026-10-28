<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Track Complaint | Campus Service Tracker</title>

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

        .container {
            max-width: 700px;
            margin: 45px auto;
            padding: 0 18px;
        }

        .card {
            background: white;
            padding: 35px;
            border-radius: 12px;
            box-shadow: 0 5px 22px rgba(23, 54, 93, 0.10);
        }

        .icon {
            width: 65px;
            height: 65px;
            margin: 0 auto 18px;
            border-radius: 50%;
            background: #eaf3ff;
            color: #1769aa;
            font-size: 32px;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        h1 {
            text-align: center;
            color: #17365d;
            font-size: 29px;
            margin-bottom: 10px;
        }

        .intro {
            text-align: center;
            color: #64748b;
            margin-bottom: 28px;
        }

        .notice {
            background: #eaf3ff;
            border-left: 4px solid #2874a6;
            padding: 13px;
            border-radius: 4px;
            font-size: 14px;
            color: #24476a;
            margin-bottom: 25px;
        }

        .form-group {
            margin-bottom: 20px;
        }

        label {
            display: block;
            margin-bottom: 8px;
            font-weight: bold;
            font-size: 14px;
            color: #243b55;
        }

        input {
            display: block;
            width: 100%;
            padding: 13px 14px;
            border: 1px solid #cbd5e1;
            border-radius: 6px;
            font-size: 15px;
            background: white;
        }

        input:focus {
            outline: none;
            border-color: #2874a6;
            box-shadow: 0 0 0 3px rgba(40, 116, 166, 0.12);
        }

        .submit-btn {
            width: 100%;
            padding: 14px;
            margin-top: 5px;
            background: #17365d;
            color: white;
            border: none;
            border-radius: 6px;
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
        }

        .back-link:hover {
            text-decoration: underline;
        }

        footer {
            margin-top: 40px;
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

        @media (max-width: 600px) {
            nav {
                justify-content: center;
                text-align: center;
            }

            nav .nav-links {
                justify-content: center;
                gap: 12px;
            }

            .card {
                padding: 24px 18px;
            }

            h1 {
                font-size: 25px;
            }
        }
    </style>
</head>

<body>

<nav>
    <div class="logo">Campus Service Tracker</div>

    <div class="nav-links">
        <a href="${pageContext.request.contextPath}/index.jsp">Home</a>
        <a href="${pageContext.request.contextPath}/complaint.jsp">Submit Complaint</a>
        <a href="${pageContext.request.contextPath}/student-status.jsp">Track Status</a>
        <a href="${pageContext.request.contextPath}/login.jsp">Admin Login</a>
    </div>
</nav>

<main class="container">
    <section class="card">

        <div class="icon">&#128269;</div>

        <h1>Track Your Complaint</h1>

        <p class="intro">
            Check the latest progress of the complaint you submitted
            to your campus administration.
        </p>

        <div class="notice">
            Please enter the Complaint ID shown on your confirmation
            page and the Student ID used when submitting the complaint.
        </div>

        <form method="post"
              action="${pageContext.request.contextPath}/student-status">

            <div class="form-group">
                <label for="complaintId">Complaint ID</label>
                <input
                    type="number"
                    id="complaintId"
                    name="complaintId"
                    min="1"
                    placeholder="Enter your complaint ID"
                    required>
            </div>

            <div class="form-group">
                <label for="studentId">Student ID</label>
                <input
                    type="text"
                    id="studentId"
                    name="studentId"
                    maxlength="50"
                    placeholder="Enter your student ID"
                    required>
            </div>

            <button type="submit" class="submit-btn">
                Check Complaint Status
            </button>

        </form>

        <a class="back-link"
           href="${pageContext.request.contextPath}/index.jsp">
            &larr; Back to Home
        </a>

    </section>
</main>

<footer>
    <p>Campus Service Tracker</p>
    <p>Helping improve campus services, one complaint at a time.</p>
</footer>

</body>
</html>

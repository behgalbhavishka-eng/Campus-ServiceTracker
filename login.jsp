<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Admin Login | Campus Service Tracker</title>

    <style>
        * {
            box-sizing: border-box;
        }

        body {
            margin: 0;
            font-family: Arial, Helvetica, sans-serif;
            background: #f3f7fc;
            color: #1e293b;
            min-height: 100vh;
            display: flex;
            flex-direction: column;
        }

        .navbar {
            background: #ffffff;
            padding: 18px 7%;
            display: flex;
            justify-content: space-between;
            align-items: center;
            box-shadow: 0 2px 12px rgba(15, 23, 42, 0.06);
        }

        .brand {
            font-size: 21px;
            font-weight: bold;
            color: #1d4ed8;
            text-decoration: none;
        }

        .nav-link {
            text-decoration: none;
            color: #334155;
            font-weight: bold;
            font-size: 14px;
        }

        .nav-link:hover {
            color: #2563eb;
        }

        .main-content {
            flex: 1;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 45px 20px;
        }

        .login-card {
            width: 100%;
            max-width: 430px;
            background: #ffffff;
            padding: 38px;
            border-radius: 16px;
            box-shadow: 0 12px 35px rgba(15, 23, 42, 0.09);
            border: 1px solid #e2e8f0;
        }

        .icon-circle {
            width: 65px;
            height: 65px;
            margin: 0 auto 18px;
            border-radius: 50%;
            background: #dbeafe;
            color: #1d4ed8;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 29px;
        }

        h1 {
            text-align: center;
            font-size: 28px;
            margin: 0 0 10px;
            color: #0f172a;
        }

        .subtitle {
            text-align: center;
            color: #64748b;
            font-size: 14px;
            line-height: 1.6;
            margin: 0 0 25px;
        }

        .message {
            padding: 13px;
            margin-bottom: 18px;
            border-radius: 8px;
            font-size: 14px;
            line-height: 1.5;
        }

        .error-message {
            background: #fef2f2;
            border: 1px solid #fecaca;
            color: #b91c1c;
        }

        .success-message {
            background: #f0fdf4;
            border: 1px solid #bbf7d0;
            color: #166534;
        }

        label {
            display: block;
            margin: 18px 0 8px;
            font-size: 14px;
            font-weight: bold;
            color: #334155;
        }

        input {
            display: block;
            width: 100%;
            padding: 13px 14px;
            border: 1px solid #cbd5e1;
            border-radius: 8px;
            font-size: 15px;
            outline: none;
            background: #ffffff;
        }

        input:focus {
            border-color: #2563eb;
            box-shadow: 0 0 0 3px rgba(37, 99, 235, 0.12);
        }

        button {
            width: 100%;
            padding: 14px;
            margin-top: 25px;
            background: #2563eb;
            color: #ffffff;
            border: none;
            border-radius: 8px;
            font-size: 16px;
            font-weight: bold;
            cursor: pointer;
            transition: background 0.2s;
        }

        button:hover {
            background: #1d4ed8;
        }

        .security-note {
            margin-top: 20px;
            padding: 12px;
            background: #f8fafc;
            border-radius: 8px;
            text-align: center;
            color: #64748b;
            font-size: 12px;
            line-height: 1.6;
        }

        .home-link {
            display: block;
            text-align: center;
            margin-top: 22px;
            color: #2563eb;
            text-decoration: none;
            font-size: 14px;
            font-weight: bold;
        }

        .home-link:hover {
            text-decoration: underline;
        }

        footer {
            text-align: center;
            padding: 20px;
            background: #ffffff;
            border-top: 1px solid #e2e8f0;
            color: #64748b;
            font-size: 13px;
        }

        @media (max-width: 480px) {
            .navbar {
                padding: 16px 5%;
            }

            .brand {
                font-size: 17px;
            }

            .login-card {
                padding: 26px 22px;
            }

            h1 {
                font-size: 25px;
            }
        }
    </style>
</head>

<body>

    <nav class="navbar">
        <a class="brand"
           href="${pageContext.request.contextPath}/index.jsp">
            Campus Service Tracker
        </a>

        <a class="nav-link"
           href="${pageContext.request.contextPath}/index.jsp">
            Home
        </a>
    </nav>

    <main class="main-content">
        <section class="login-card">

            <div class="icon-circle">&#128274;</div>

            <h1>Admin Login</h1>

            <p class="subtitle">
                Welcome back! Please sign in to manage
                campus complaints and update their status.
            </p>

            <% if ("1".equals(request.getParameter("error"))) { %>
                <div class="message error-message" role="alert">
                    <strong>Login failed!</strong><br>
                    Invalid username or password. Please try again.
                </div>
            <% } %>

            <% if ("1".equals(request.getParameter("loggedOut"))) { %>
                <div class="message success-message" role="status">
                    You have logged out successfully.
                </div>
            <% } %>

            <form method="post"
                  action="${pageContext.request.contextPath}/admin-login">

                <label for="username">Username</label>
                <input type="text"
                       id="username"
                       name="username"
                       maxlength="50"
                       autocomplete="username"
                       placeholder="Enter admin username"
                       required>

                <label for="password">Password</label>
                <input type="password"
                       id="password"
                       name="password"
                       maxlength="100"
                       autocomplete="current-password"
                       placeholder="Enter admin password"
                       required>

                <button type="submit">Sign In to Dashboard</button>
            </form>

            <div class="security-note">
                &#128274; Restricted area for authorised campus
                administrators only.
            </div>

            <a class="home-link"
               href="${pageContext.request.contextPath}/index.jsp">
                &#8592; Back to Home Page
            </a>

        </section>
    </main>

    <footer>
        &copy; 2026 Campus Service Tracker |
        Making campus services easier to manage
    </footer>

</body>
</html>

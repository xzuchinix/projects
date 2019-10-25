<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Hubbub&trade; &raquo; Sign-up</title>
        <%@include file="/WEB-INF/jspf/w3csshead.jspf"%>
    </head>
    <body>
        <div id="navbar" class ="w3-bar" style="background-color:#92C4BE">
            <a class="w3-bar-item w3-button" href="main?action=timeline">Home</a>
            <a class="w4-car-item w3-button" href="main?action=login">I'm already a Bub&trade;</a>
        </div>
        <div class="w3-container">
            <%@include file="/WEB-INF/jspf/masthead.jspf"%>
            <h1>Add Your Distinctiveness To Our Own!</h1>
            <c:if test="${not empty flash}">
                <h2 class="flash"${flash}</h2>
            </c:if>
        </div>
        <div class="w3-container w3-half w3-margin-top">
            <form class="w3-container w3-card-4" method="POST" action="main">
                <input type="hidden" name="action" value="join"/>
                <p>
                    <input class="w3-input" name="username" type="text" id="user"
                           style="width:90%" required/>
                    <label>Username:</label>
                </p>
                <p>
                    <input class="w3-input" name="password1" type="text" 
                           id="password" style="width:90%" required/>
                    <label>Password:</label>
                </p>
                <p>
                    <input class="w3-input" name="password2" type="text" 
                           id="password" style="width:90%" required/>
                    <label>Password Again:</label>
                </p>
                <p>
                    <button class="w3-button w3-section w3-ripple"
                        style="background-color:#92C4BE">
                    I Submit to The Collective!
                    </button>
                </p>
            </form>
        </div>
    </body>
</html>

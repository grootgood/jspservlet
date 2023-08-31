<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
    <!-- CDN: Content Delivery Network -->
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
      integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
      crossorigin="anonymous"
      referrerpolicy="no-referrer"
    />
    <link
      ref="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
    />
    <!-- Latest compiled and minified CSS -->
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
    />
    <!-- jQuery library -->
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.slim.min.js"></script>
    <!-- Popper JS -->
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <!-- Latest compiled JavaScript -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="./css/main.css" />
    <style></style>
  </head>
  <body>
    <div class="container">
        <div class="mx-auto mt-4" style="width: 500px">
            <h1><i class="fa-solid fa-question"></i> Sports & Gender</h1>
            <form action="sport" method="post" class=form>
                <div class="from-group">
                    <label for="baseball">Baseball</label>
                    <input type="checkbox" name="sports" value="baseball">
                    
                    <label for="football">Football</label>
                    <input type="checkbox" name="sports" value="football">
                    
                    <label for="basketball">Basketball</label>
                    <input type="checkbox" name="sports" value="basketball">
                </div>
                <div class="form-group">
                    <label for="sex">Male</label>
                    <input type="radio" name="sex" value="male" checked>
                    
                    <label for="sex">Female</label>
                    <input type="radio" name="sex" value="female">
                </div>
                
                <div>
                		<label>나이</label>
                		<input type="number" name="age" required>
                </div>
                
                <div>
                    <button type="submit" class="btn btn-primary"> 
                        <i class="fa-solid fa-right-to-bracket"></i> 전송 
                    </button>
                </div>
            </form>
        </div>
    </div>
  </body>
</html>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Rajinikanth DevOps Kitchen</title>
    <style>
        .menu-item {
            cursor: pointer;
            padding: 10px;
            border: 1px solid #ddd;
            margin: 5px;
            display: inline-block;
        }
    </style>
</head>
<body style="text-align: center">
<h1>Welcome to Rajinikanth DevOps Kitchen!</h1>
<h2>Menu</h2>

<div id="menu">
    <div class="menu-item" onclick="showSubItems('Biryani')">Biryani</div>
    <div class="menu-item" onclick="showSubItems('Curries')">Curries</div>
    <div class="menu-item" onclick="showSubItems('Pizzas')">Pizzas</div>
    <div class="menu-item" onclick="showSubItems('Starters')">Starters</div>
</div>

<div id="sub-items" style="margin-top: 20px;">
    <!-- Sub-items will be listed here -->
</div>

<script>
    function showSubItems(category) {
        // This is a placeholder. In a real application, you might make an AJAX call to the server to get the sub-items
        var subItems = {
            Biryani: ['Chicken Biryani', 'Mutton Biryani', 'Veg Biryani'],
            Curries: ['Butter Chicken', 'Palak Paneer', 'Chana Masala'],
            Pizzas: ['Margherita', 'Pepperoni', 'BBQ Chicken'],
            Starters: ['Paneer Tikka', 'Chicken 65', 'Spring Rolls']
        };

        var itemsList = subItems[category].map(function(item) {
            return '<div>' + item + '</div>';
        }).join('');

        document.getElementById('sub-items').innerHTML = '<h3>' + category + '</h3>' + itemsList;
    }
</script>
</body>
</html>

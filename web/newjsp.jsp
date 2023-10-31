<%-- 
    Document   : newjsp
    Created on : 04-Oct-2023, 2:28:20 pm
    Author     : manikanta
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sentiment Analysis Charts</title>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
</head>
<body>
<div class="container-xxl flex-grow-1 container-p-y">
    <div class="col-md-12 col-lg-12 col-xl-12 order-0 mb-4">
        <div class="card h-100">
            <div class="container-fluid text-center"> <!-- Center the content -->
                <h4>Bar Chart Analysis</h4>
                <canvas id="barChart" width="100" height="100"></canvas>
                <hr style="border: 1px solid black; color: hsl(17, 86%, 72%)">
            </div>
            <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
            <script>
                $(document).ready(function() {
                    $.ajax({
                        url: "fetch-sentiment-data.jsp",
                        method: "GET",
                        dataType: "json",
                        success: function(data) {
                            const sentimentLabels = ["Very Positive", "Positive", "Neutral", "Negative", "Very Negative"];
                            const sortedSentimentData = sentimentLabels.map(label => data[label]);
                            const ctx = document.getElementById("barChart").getContext("2d");
                            const myChart = new Chart(ctx, {
                                type: "bar",
                                data: {
                                    labels: sentimentLabels,
                                    datasets: [{
                                        label: "Reviews",
                                        data: sortedSentimentData,
                                        backgroundColor: [
                                            'rgba(255, 99, 132, 0.2)',
                                            'rgba(54, 162, 235, 0.2)',
                                            'rgba(255, 206, 86, 0.2)',
                                            'rgba(75, 192, 192, 0.2)',
                                            'rgba(153, 102, 255, 0.2)',
                                        ],
                                        borderColor: [
                                            'rgba(255,99,132,1)',
                                            'rgba(54, 162, 235, 1)',
                                            'rgba(255, 206, 86, 1)',
                                            'rgba(75, 192, 192, 1)',
                                            'rgba(153, 102, 255, 1)',
                                        ],
                                        borderWidth: 1,
                                        hoverBorderColor: ["green", "red", "yellow", "orange", "pink"],
                                    }],
                                },
                                options: {
                                    legend: {
                                        labels: {
                                            fontColor: "blue",
                                            fontSize: 18,
                                        },
                                    },
                                    scales: {
                                        y: {
                                            beginAtZero: true,
                                        },
                                    },
                                },
                            });
                        },
                        error: function(jqXHR, textStatus, errorThrown) {
                            console.error("AJAX error: " + textStatus, errorThrown);
                        }
                    });
                });
            </script>
        </div>
    </div>
</div>

</body>
</html>

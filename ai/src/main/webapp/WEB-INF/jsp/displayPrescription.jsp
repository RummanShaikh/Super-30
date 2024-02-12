<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Prescription Form</title>
</head>
<body>

<!-- Prescription form -->
<form th:action="@{/displayPrescription}" method="get">
    <label for="prescriptionInput">Enter Prescription ID:</label>
    <input type="text" id="prescriptionInput" name="prescriptionId" required>
    <button type="submit">Display Prescription</button>
</form>

<!-- Display prescription text or message -->
<div th:if="${prescription ne null}">
    <p th:text="${prescription.prescriptionText}"></p>
</div>
<div th:if="${prescription eq null}">
    <p>No prescription found for the given ID.</p>
</div>

</body>
</html>

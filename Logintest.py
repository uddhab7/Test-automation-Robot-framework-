from selenium import webdriver
from selenium.webdriver.common.keys import Keys

# Set the path to the WebDriver executable (make sure you have downloaded the appropriate WebDriver)
driver_path = r"C:\Users\Ram\Desktop\chromedriver-win64\chromedriver.exe"


# Create a new instance of the Chrome driver
driver = webdriver.Chrome()

# Open the login page
url = 'https://practicetestautomation.com/practice-test-login/'
driver.get(url)

# Locate the username and password fields, and the submit button
username_field = driver.find_element("name", "username")
password_field = driver.find_element("name", "password")
submit_button = driver.find_element("id", "submit")

# Input the credentials
username_field.send_keys("student")
password_field.send_keys("Password123")

# Submit the form
submit_button.click()

# Wait for a while to see the result before closing the browser
driver.implicitly_wait(5)
 
# Close the browser  
driver.quit()














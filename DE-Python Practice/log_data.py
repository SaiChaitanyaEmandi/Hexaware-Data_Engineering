import csv
import random
from datetime import datetime, timedelta

def generate_logs(num_records):
    logs = []
    for _ in range(num_records):
        timestamp = datetime.now() - timedelta(days=random.randint(0, 365), hours=random.randint(0, 23), minutes=random.randint(0, 59), seconds=random.randint(0, 59))
        ip_address = f"192.168.{random.randint(0, 255)}.{random.randint(0, 255)}"
        user_agent = f"UserAgent-{random.randint(1000, 9999)}"
        http_status = random.choice([200, 404, 500])
        bytes_sent = random.randint(100, 10000)
        logs.append([timestamp, ip_address, user_agent, http_status, bytes_sent])
    return logs

num_records = 1000  
logs_data = generate_logs(num_records)

csv_file = 'log_data.csv'

# Write data to CSV file
with open(csv_file, mode='w', newline='') as file:
    writer = csv.writer(file)
    # Write the header row
    writer.writerow(['Timestamp', 'IP Address', 'User Agent', 'HTTP Status', 'Bytes Sent'])
    # Write the data rows
    writer.writerows(logs_data)



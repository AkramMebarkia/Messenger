import pandas as pd
import matplotlib.pyplot as plt

# Read the CSV file
df = pd.read_csv('latency_log.csv', 
                 names=['count', 'send_time', 'recv_time', 'latency', 'payload_size'])

df_unique = df.drop_duplicates(subset=["count", "send_time"])

# Calculate statistics
avg_latency = df['latency'].mean()
max_latency = df['latency'].max()
min_latency = df['latency'].min()

# Fix throughput calculation
time_duration = (df['recv_time'].max() - df['recv_time'].min()) / 1e6  # Convert microseconds to seconds
total_bytes = df_unique['payload_size'].sum()
throughput = total_bytes / time_duration if time_duration > 0 else 0

print(f"Average Latency: {avg_latency:.2f} microseconds")
print(f"Max Latency: {max_latency:.2f} microseconds")
print(f"Min Latency: {min_latency:.2f} microseconds")
print(f"Total bytes transferred: {total_bytes:,} bytes")
print(f"Time duration: {time_duration:.2f} seconds")
print(f"Throughput: {throughput/1024/1024:.10f} MB/s")

# Plot latency distribution
plt.figure(figsize=(10, 6))
plt.hist(df['latency'], bins=50)
plt.title('Latency Distribution')
plt.xlabel('Latency (microseconds)')
plt.ylabel('Count')
plt.savefig('latency_distribution.png')
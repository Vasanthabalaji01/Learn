You want to write a script that automatically sends an email notification when a certain condition is met.

## Solution
To solve this problem and use Gmail for sending emails, you can use `msmtp` along with `mail` or `sendmail` to send the email notification.

### Step 1: Install and Configure MSMTP

1. **Install MSMTP**: Install MSMTP using your system's package manager. For example, on Ubuntu:

   ```bash
   sudo apt-get install msmtp
   ```

2. **Configure MSMTP**: Create or edit the MSMTP configuration file (`~/.msmtprc`) and add the following configuration, replacing `your_email@gmail.com` and `your_gmail_password` with your Gmail credentials:

   ```bash
   # Gmail SMTP configuration
   account gmail
   host smtp.gmail.com
   port 587
   from your_email@gmail.com
   auth on
   user your_email@gmail.com
   password your_gmail_password
   tls on
   tls_starttls on
   tls_trust_file /etc/ssl/certs/ca-certificates.crt
   logfile ~/.msmtp.log
   ```

   Remember to secure the permissions of this file by running:

   ```bash
   chmod 600 ~/.msmtprc
   ```

### Step 2: Write the Script

Create a Bash script, let's call it `email_notification.sh`, and add the following content:

```bash
#!/bin/bash

# Function to check the condition
check_condition() {
    # Add your condition-checking logic here
    # For example, check if a file exists
    if [ -f "/path/to/condition_file" ]; then
        echo "Condition met: File exists"
    else
        echo "Condition not met: File does not exist"
    fi
}

# Call the function and capture the output
output=$(check_condition)

# Check if the condition is met
if [[ "$output" == *"Condition met"* ]]; then
    # Send email notification using MSMTP
    echo "Sending email notification..."
    echo "Condition met: You have a new notification." | msmtp recipient@example.com
fi
```

Replace `/path/to/condition_file` with the path to the file or the condition you want to check. Replace `recipient@example.com` with the email address you want to send the notification to.

### Step 3: Make the Script Executable

Make the script executable:

```bash
chmod +x email_notification.sh
```

### Step 4: Run the Script

Execute the script to check the condition and send an email notification if it is met:

```bash
./email_notification.sh
```

Now, the script will automatically send an email notification when the specified condition is met, using Gmail's SMTP server via MSMTP.

This solution enables you to send email notifications securely using Gmail's SMTP server from your Bash script.
# ใช้ official image ของ n8n
FROM n8nio/n8n:latest

# กำหนด environment (Render จะ override ได้ภายหลัง)
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=yourpassword
ENV N8N_PORT=5678
ENV N8N_HOST=0.0.0.0

# Expose port 5678 (Render จะ map ไปที่ $PORT ของมันเอง)
EXPOSE 5678

# คำสั่งเริ่มต้น
CMD ["n8n", "start"]

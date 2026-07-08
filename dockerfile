# Step 1: Lightweight Web Server Stage
FROM nginx:alpine

# Step 2: Copy custom Nginx configuration
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Step 3: Copy website files (Current folder elathaiyum direct-a copy pannu)
COPY . /usr/share/nginx/html/

# Step 4: Expose port 80
EXPOSE 80

# Step 5: Start Nginx
CMD ["nginx", "-g", "daemon off;"]
# *** 
# *** 1st Stage: Transpile TypeScript 
# *** 
FROM nginx


COPY nginx.conf /etc/nginx/nginx.conf

# Expose the app port via docker
EXPOSE 8080

# Start the App
CMD ["nginx", "-g", "daemon off;"]
# CMD ["nginx", "-g", "daemon off;", "--host", "0.0.0.0"]

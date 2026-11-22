
#!/bin/bash

# Set the default destination or use a custom path
DESTINATION="${1:-$HOME/radius-projects/website-project}"

# Check whether the destination already exists
if [ -e "$DESTINATION" ]; then
    echo "Error: The destination already exists: $DESTINATION"
    echo "Please choose a different location."
    exit 1
fi

# Create the website directories
mkdir -p "$DESTINATION/css"
mkdir -p "$DESTINATION/js"
mkdir -p "$DESTINATION/images"

# Create the HTML file
cat > "$DESTINATION/index.html" <<'EOF'
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Website Project</title>
    <link rel="stylesheet" href="css/style.css">
    <script src="js/script.js" defer></script>
</head>
<body>
    <h1>Welcome to My Website!</h1>
    <p>This website was created using a Bash script.</p>
</body>
</html>
EOF

# Create the CSS file
cat > "$DESTINATION/css/style.css" <<'EOF'
body {
    font-family: Arial, sans-serif;
    background-color: #f4f4f4;
    text-align: center;
    padding: 40px;
}

h1 {
    color: #333333;
}

p {
    color: #666666;
}
EOF

# Create the JavaScript file
cat > "$DESTINATION/js/script.js" <<'EOF'
console.log("Welcome to my website project!");
EOF

# Create README files
cat > "$DESTINATION/README.md" <<'EOF'
# Website Project

A basic website project generated automatically using a Bash script.
It contains HTML, CSS, JavaScript, and an images directory.
EOF

cat > "$DESTINATION/css/README.md" <<'EOF'
# CSS Directory

This directory contains CSS files used to style the website.
EOF

cat > "$DESTINATION/js/README.md" <<'EOF'
# JavaScript Directory

This directory contains JavaScript files that add functionality and interactivity to the website.
EOF

cat > "$DESTINATION/images/README.md" <<'EOF'
# Images Directory

This directory stores website images such as JPG, PNG, SVG, and GIF files.
EOF

# Display completion message
echo "Website project created successfully!"
echo "Project location: $DESTINATION"

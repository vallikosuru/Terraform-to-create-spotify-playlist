terraform-to-create-spotify-playlist
This project demonstrates how to use Terraform to create a Spotify playlist by interacting with the Spotify Web API. It’s a fun and beginner-friendly way to apply Infrastructure as Code (IaC) skills in a real-world use case.

PREREQUISITES:

Make sure Terraform is installed on your local machine.

Docker should be installed (optional, for containerization).

You need a valid Spotify account.

Create a Spotify Developer account to get your Client ID and Client Secret.

Use any code editor like VS Code.

SETUP INSTRUCTIONS:

Clone this repository using
git clone https://github.com/yourusername/terraform-to-create-spotify-playlist.git
cd terraform-to-create-spotify-playlist

Create a .env file in the root directory and add the following:
SPOTIFY_CLIENT_ID=your_client_id
SPOTIFY_CLIENT_SECRET=your_client_secret
SPOTIFY_REDIRECT_URI=http://localhost:8888/callback
SPOTIFY_USERNAME=your_spotify_username

Export the environment variables (if you're not using a dotenv tool):
export $(cat .env | xargs)

HOW TO RUN:

Initialize Terraform using:
terraform init

(Optional) Validate the configuration:
terraform validate

Plan the infrastructure changes:
terraform plan

Apply the configuration to create the playlist:
terraform apply
Type ‘yes’ when prompted to confirm the changes.

PROJECT STRUCTURE:

main.tf: Main Terraform configuration file

provider.tf: Spotify provider and authentication

variables.tf: Input variable definitions

outputs.tf: Output values like playlist ID or URL

.env: Stores sensitive credentials (add this to .gitignore)

README.md: Project description

OUTPUT:

Once applied, the Terraform script creates a new playlist in your Spotify account and returns the playlist ID or URL in the output.

ACKNOWLEDGEMENTS:

Special thanks to Abhishek Veeramalla and Cloud Champ for their guidance and tutorials that inspired this project. Built using the official Spotify Web API.


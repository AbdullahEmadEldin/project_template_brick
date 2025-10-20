# Git Repository Setup Guide

## ✅ Local Repository Status

Your local Git repository is ready with:
- ✅ Initial commit with all files
- ✅ Proper .gitignore configuration
- ✅ Clean commit history
- ✅ __brick__ directory properly included

## 🚀 Push to GitHub

### Option 1: Create New Repository via GitHub Website (Recommended)

1. **Go to GitHub**: [https://github.com/new](https://github.com/new)

2. **Configure Repository**:
   - **Repository name**: `flutter-template-brick` (or your preferred name)
   - **Description**: `A comprehensive Flutter project template Mason brick with BLoC, localization, and theme management`
   - **Visibility**: Public or Private (your choice)
   - ⚠️ **Important**: Do NOT initialize with README, .gitignore, or license (we already have these)

3. **Create Repository**

4. **Push Your Code**:
   ```bash
   cd /Users/abdullahemad/FlutterDev/PROJECTS/project_brick
   
   # Add the remote (replace YOUR_USERNAME with your GitHub username)
   git remote add origin https://github.com/YOUR_USERNAME/flutter-template-brick.git
   
   # Push to GitHub
   git branch -M main
   git push -u origin main
   ```

### Option 2: Create via GitHub CLI (if installed)

```bash
cd /Users/abdullahemad/FlutterDev/PROJECTS/project_brick

# Create public repository
gh repo create flutter-template-brick --public --source=. --remote=origin --push

# OR create private repository
gh repo create flutter-template-brick --private --source=. --remote=origin --push
```

### Option 3: Use Existing Repository

If you want to use a specific existing repository:

```bash
cd /Users/abdullahemad/FlutterDev/PROJECTS/project_brick

# Add remote (replace with your repository URL)
git remote add origin https://github.com/YOUR_USERNAME/YOUR_REPO_NAME.git

# Push
git branch -M main
git push -u origin main
```

## 📝 After Pushing

### Update brick.yaml with Repository URL

After creating your repository, update `brick.yaml`:

```yaml
name: flutter_template
description: A complete Flutter project template with BLoC, localization, and theme management
version: 1.1.0+1

# Add your repository URL here
repository: https://github.com/YOUR_USERNAME/flutter-template-brick
```

Then commit and push the change:

```bash
git add brick.yaml
git commit -m "Add repository URL to brick.yaml"
git push
```

## 🌐 Using the Brick from GitHub

Once pushed, others (or you) can use the brick from GitHub:

### Add to mason.yaml:

```yaml
bricks:
  flutter_template:
    git:
      url: https://github.com/YOUR_USERNAME/flutter-template-brick.git
```

### Use directly:

```bash
# Add brick from GitHub
mason add flutter_template --git-url https://github.com/YOUR_USERNAME/flutter-template-brick.git

# Generate project
mason make flutter_template
```

## 📦 Publishing to BrickHub (Optional)

If you want to publish to the official Mason BrickHub:

1. **Login to BrickHub**:
   ```bash
   mason login
   ```

2. **Publish**:
   ```bash
   cd /Users/abdullahemad/FlutterDev/PROJECTS/project_brick
   mason publish
   ```

3. **Once published, others can use**:
   ```bash
   mason add flutter_template
   ```

## 🔄 Making Updates

When you make changes to your brick:

```bash
# Make your changes
# Update version in brick.yaml and CHANGELOG.md

# Commit
git add .
git commit -m "Description of changes"

# Push
git push

# If published to BrickHub, publish new version
mason publish
```

## 🛠️ Troubleshooting

### Authentication Issues

If you get authentication errors when pushing:

**Option 1: SSH (Recommended)**
```bash
# Generate SSH key (if you don't have one)
ssh-keygen -t ed25519 -C "your_email@example.com"

# Add to GitHub: Settings > SSH and GPG keys > New SSH key
# Copy your public key:
cat ~/.ssh/id_ed25519.pub

# Change remote to SSH
git remote set-url origin git@github.com:YOUR_USERNAME/flutter-template-brick.git
git push
```

**Option 2: Personal Access Token**
```bash
# Go to GitHub: Settings > Developer settings > Personal access tokens > Generate new token
# Select 'repo' scope
# Use token as password when prompted
git push
```

### Remote Already Exists

If you get "remote origin already exists":
```bash
# Remove existing remote
git remote remove origin

# Add correct remote
git remote add origin YOUR_REPO_URL

# Push
git push -u origin main
```

## 📊 Repository Best Practices

### Create Useful Labels

On GitHub, create labels for issues:
- `enhancement` - New features
- `bug` - Bug fixes
- `documentation` - Documentation updates
- `question` - Questions about usage

### Add Topics

Add topics to your repository to make it discoverable:
- `flutter`
- `mason`
- `mason-brick`
- `flutter-template`
- `bloc`
- `localization`
- `boilerplate`

### Enable Discussions

Enable GitHub Discussions for community questions and feedback.

### Add a Contributing Guide

Consider adding `CONTRIBUTING.md` if you want contributions.

## 🎉 You're Done!

Your Mason brick is now ready to be shared with the world! 🚀


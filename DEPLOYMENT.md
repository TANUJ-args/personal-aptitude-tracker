# 🚀 GitHub Pages Deployment Guide

Follow these steps to deploy your Aptitude Study Tracker to GitHub Pages:

## Step 1: Create a GitHub Repository

1. Go to [GitHub](https://github.com)
2. Click the **+** button in the top right corner
3. Select **New repository**
4. Name your repository: `aptitude-study-tracker`
5. Make it **Public** (required for free GitHub Pages)
6. Don't initialize with README (we already have one)
7. Click **Create repository**

## Step 2: Initialize Git and Push Your Code

Open PowerShell in your project folder and run:

```powershell
# Navigate to your project folder (if not already there)
cd c:\PROJECTS\aptitude-study-tracker

# Initialize git repository
git init

# Add all files
git add .

# Create first commit
git commit -m "Initial commit: Aptitude Study Tracker"

# Add your GitHub repository as remote (replace YOUR-USERNAME)
git remote add origin https://github.com/YOUR-USERNAME/aptitude-study-tracker.git

# Push to GitHub
git branch -M main
git push -u origin main
```

## Step 3: Enable GitHub Pages

1. Go to your repository on GitHub: `https://github.com/YOUR-USERNAME/aptitude-study-tracker`
2. Click **Settings** (top menu)
3. Scroll down and click **Pages** in the left sidebar
4. Under **Source**, select:
   - Branch: `main`
   - Folder: `/ (root)`
5. Click **Save**
6. Wait 1-2 minutes for deployment

## Step 4: Access Your Live Site

Your site will be available at:
```
https://YOUR-USERNAME.github.io/aptitude-study-tracker
```

## 🔄 Updating Your Site

After making changes to your code:

```powershell
# Add changes
git add .

# Commit changes
git commit -m "Description of changes"

# Push to GitHub
git push origin main
```

GitHub Pages will automatically rebuild your site (takes 1-2 minutes).

## ⚠️ Important Notes

1. **Make sure to update the README.md** with your actual GitHub username
2. **All code is public** - anyone can view your source code
3. **localStorage data is browser-specific** - different browsers won't share progress
4. **No backend required** - everything runs in the browser

## 🔧 Custom Domain (Optional)

If you have a custom domain:

1. Add a `CNAME` file to your repository with your domain name
2. In GitHub Pages settings, enter your custom domain
3. Configure your domain's DNS settings to point to GitHub Pages

## 🐛 Troubleshooting

### Site not loading?
- Check that repository is public
- Verify GitHub Pages is enabled in Settings > Pages
- Wait a few minutes for the first deployment
- Clear browser cache

### Changes not showing?
- Make sure you pushed your changes: `git push origin main`
- Wait 1-2 minutes for GitHub to rebuild
- Hard refresh your browser: `Ctrl + Shift + R` (Windows) or `Cmd + Shift + R` (Mac)

### Progress not saving?
- Check browser console for errors (F12)
- Ensure localStorage is enabled in browser
- Try a different browser

## ✅ Testing Locally Before Deployment

Always test locally first:

```powershell
# Using Python
python -m http.server 8000

# Then visit: http://localhost:8000
```

## 📚 Additional Resources

- [GitHub Pages Documentation](https://docs.github.com/en/pages)
- [Git Documentation](https://git-scm.com/doc)
- [Markdown Guide](https://www.markdownguide.org/)

---

**Need help?** Open an issue on the GitHub repository!

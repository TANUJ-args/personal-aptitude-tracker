# 🚀 Quick Start Guide

## For Users

### First Time Setup (30 seconds)

1. **Open the application** in your browser
2. **Set your start date**:
   - Scroll to "Study Plan Settings" card
   - Click the date picker
   - Choose your study start date
   - Click "Update Start Date"
3. **Start studying!**
   - Go to "Weekly View"
   - Check off tasks as you complete them
   - Add notes to remember key points

### Daily Routine

1. Open the app
2. Navigate to current week
3. Complete today's tasks
4. Check them off
5. Review formulas if needed
6. Take practice tests when ready

### Tips for Success

- ✅ Check off tasks immediately after completing
- 📝 Add notes for difficult topics
- ⭐ Rate topics to track weak areas
- 🎯 Take practice tests regularly
- 🔥 Maintain your study streak!

---

## For Developers

### Local Development

```powershell
# Clone the repo
git clone https://github.com/YOUR-USERNAME/aptitude-study-tracker.git
cd aptitude-study-tracker

# Start local server
python -m http.server 8000
# OR
npx serve

# Open browser
start http://localhost:8000
```

### Make Changes

1. Edit `index.html`
2. Refresh browser to test
3. Check browser console (F12) for errors

### Deploy Changes

```powershell
# Stage changes
git add .

# Commit
git commit -m "Your change description"

# Push to GitHub
git push origin main
```

Wait 1-2 minutes for GitHub Pages to update.

### File Structure

```
aptitude-study-tracker/
├── index.html          # Main application (4200+ lines)
├── README.md           # Project documentation
├── DEPLOYMENT.md       # Deployment guide
├── CHANGES.md          # Change log
├── QUICK_START.md      # This file
├── .gitignore          # Git ignore rules
└── deploy.ps1          # Deployment script
```

### Key Code Sections in index.html

- **Lines 8-1900**: CSS Styles
- **Lines 1900-2700**: HTML Structure
- **Lines 2700-4200**: JavaScript Logic

### State Management

All app state stored in `localStorage`:
```javascript
// Save state
localStorage.setItem('aptitudeTrackerState', JSON.stringify(appState));

// Load state
const savedState = localStorage.getItem('aptitudeTrackerState');
```

### Adding New Features

1. **New week/topic**:
   - Edit `appData.weeks` object
   - Add week data with days and topics

2. **New formula**:
   - Edit `appData.formulas` array
   - Add category, name, and formula text

3. **New test**:
   - Edit `testQuestions` object
   - Add topic with questions array
   - Update `topicTests` configuration

### Debug Commands (Browser Console)

```javascript
// View current state
viewProgress()

// Reset all progress
resetProgress()

// View specific data
console.log(appState.completedTasks)
console.log(appState.testResults)
```

### Common Issues

**Progress not saving?**
- Check browser console for errors
- Verify localStorage is enabled
- Check `saveAppState()` is called

**Tests not working?**
- Check `testQuestions` object has data
- Verify test ID matches
- Check timer initialization

**Styles broken?**
- Clear browser cache
- Check CSS syntax
- Verify Font Awesome CDN loads

---

## Quick Links

- 📚 [Full Documentation](README.md)
- 🚀 [Deployment Guide](DEPLOYMENT.md)
- 📋 [Change Log](CHANGES.md)
- 💻 [GitHub Repository](https://github.com/YOUR-USERNAME/aptitude-study-tracker)
- 🌐 [Live Site](https://YOUR-USERNAME.github.io/aptitude-study-tracker)

---

**Need Help?** Open an issue on GitHub or check the documentation!

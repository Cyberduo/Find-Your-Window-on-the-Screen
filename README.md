# If you have multiple monitors and often find yourself searching for windows or applications across them — or even beyond their visible areas — I have a simple solution for you.
Universal Window Fixer - Gnome, Ubuntu - "It's There, But You Can't See It" - 

🪟 Universal Window Fixer - Gnome - Linux - Ubuntu – "It's There, But You Can't See It"
🎯 Version: 1.2 – April Fools Edition
👥 Author: Lukasz Szymulanski

🧠 What is this?
Have you ever had a window fly off-screen, land on a wrong display, or just refuse to be seen?
This little Bash tool will help you grab it, focus it, and bring it back to your main monitor – like a digital lasso for rogue windows.

🛠 Requirements
Make sure the following tools are installed:


```sudo apt install wmctrl```

```sudo apt install xdotool```

🪛 Example Output

📋 List of all visible and not windows :

 1. 0x02800005 -1 YourComuter Discord
 2. 0x04e00007  0 YourComuter MyLostWindow.pdf

🔢 Enter the number of window you want to fix: 2

🎯 Selected window: "MyLostWindow.pdf"
🔧 Fixing window...

✅ The window has been brought to focus and moved to the screen in fullsrceen.


✨ Tip

Copy the script to a location in your $PATH, such as:

```cp fixer_window.sh /your/path``` (/usr/bin/ or ~/bin/fixer_window.sh)
```chmod +x fixer_window.sh```
Add a convenient alias to your ~/.bashrc or ~/.zshrc:
alias your_alias_name ='/your/path' (/usr/bin/ or ~/bin/fixer_window.sh)

```source ~/.bashrc  # or ~/.zshrc```


Bind this script to a custom hotkey and summon your lost windows anytime with a single keystroke!


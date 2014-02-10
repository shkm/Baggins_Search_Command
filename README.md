# What it is
It's a keyboard-friendly slash command for [Baggins_Search].

# Requirements
[Baggins] and [Baggins_Search]. Obviously.

# How to use it

Type `/bs <search query>` and away you go. `/bs` clears the search.

Want a CTRL+F-like hotkey? Create this macro and bind it to something:

```
/run local c = ChatFrame1EditBox; c:SetFocus(); c:SetText("/bs ");
```

It'll open your chat edit box and insert `/bs `, ready for you to enter your query.

# Why it exists
[Baggins_Search] provides a sorely missed search feature for [Baggins], but I'm not a fan of opening my bags and clicking the search box, so I hacked this up.

Yes, I know that "bs" isn't the choicest of command names. I won't be implementing options, so you'll have to change it in `core.lua` if you must.

[baggins]: http://www.curse.com/addons/wow/baggins
[baggins_search]: http://www.curse.com/addons/wow/baggins_search

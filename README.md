# oh-my-posh-vi-mode
Oh My Posh + PowerShell Vi Mode

The theme in the theme folder adds this segment to the atomic theme:

```json
{
    "type": "text",
    "style": "powerline",
    "powerline_symbol": "",
    "foreground": "#26C6DA",
    "background": "#546E7A",
    "background_templates": [
        "{{if eq \"COM\" .Env.VI_MODE_SEGMENT}}#33DD2D{{end}}"
    ],
    "template": "{{ .Env.VI_MODE_SEGMENT }}"
},
```

You'd need to add the script in `profile.ps1` to one of your profile scripts. e.g. `$PROFILE.AllUsersAllHosts`
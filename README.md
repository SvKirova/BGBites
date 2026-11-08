<p align="center">
  <img width="200" height="200" src="https://github.com/user-attachments/assets/d842b4b7-bc14-4f62-a563-e70e7df7836b" alt="BG Bites logo" >
</p>

<h1 align="center">BG Bites</h1>
<p align="center"><em>Discover the taste of Bulgaria</em></p>

<p align="center">
  An iOS app for finding traditional Bulgarian recipes, cooking them step by step and saving favourites.<br>
  Built with SwiftUI in Xcode.
</p>

<p align="center">
  <img src="https://github.com/user-attachments/assets/b29458a1-8d7d-414f-9248-dd4136e5e39a" width="200" alt="Welcome screen">
  <img width="200" alt="04-home" src="https://github.com/user-attachments/assets/45bbeebf-9f6c-4f4b-9829-9a252693b2ab" />
  <img width="200" alt="08-recipe-top" src="https://github.com/user-attachments/assets/618c2153-0fbb-4a20-911e-d1940e2e3d28" />
  <img width="200" alt="10-my-cookbook" src="https://github.com/user-attachments/assets/608c15e1-31f9-484e-bee8-6c13fbdf148b" />
</p>

---

## Entry screens

<table align="center">
  <tr>
    <td align="center"><img width="230" alt="01-welcome" src="https://github.com/user-attachments/assets/e72738bb-ad65-4213-92ef-1840d8119fc9" /><br><sub><b>1. Welcome</b></sub></td>
    <td align="center">
<img width="230" alt="02-login" src="https://github.com/user-attachments/assets/8f5940ed-9792-4b1d-abbb-753c80ddecd5" /><br><sub><b>2. Log In</b></sub></td>
    <td align="center"><img width="230" alt="03-register" src="https://github.com/user-attachments/assets/be0e23c2-8119-4275-94c8-ff52b2325fa9" /><br><sub><b>3. Register</b></sub></td>
  </tr>
</table>

## Home

<table align="center">
  <tr>
    <td align="center"><img width="230" alt="04-home" src="https://github.com/user-attachments/assets/5ba64b21-b879-47bc-9056-d83ad9b03196" /><br><sub><b>4. Home</b></sub></td>
    <td align="center"><img width="230" alt="05-home-soups" src="https://github.com/user-attachments/assets/d73423d0-ea7f-40da-a293-8aceebffa352" /><br><sub><b>5. Home - Soups</b></sub></td>
  </tr>
</table>

## Recipes

<table align="center">
  <tr>
    <td align="center"><img width="230" alt="06-recipes" src="https://github.com/user-attachments/assets/cb772d16-6642-4659-b689-9771a2e050ef" /><br><sub><b>6. Recipes</b></sub></td>
    <td align="center"><img width="230" alt="07-recipes-salads" src="https://github.com/user-attachments/assets/77dbd6c4-afa1-4516-a909-78ca34fb32e5" /><br><sub><b>7. Recipes - Salads</b></sub></td>
  </tr>
</table>

## Recipe page

<table align="center">
  <tr>
    <td align="center"><img width="230" alt="08-recipe-top" src="https://github.com/user-attachments/assets/2a05d642-2a06-4bb4-8a2d-b4f281b8c9f3" /><br><sub><b>8. Recipe - top</b></sub></td>
    <td align="center"><img width="230" alt="09-recipe-steps" src="https://github.com/user-attachments/assets/9b439a8e-ff66-4371-a65e-c5c050881c53" /><br><sub><b>9. Recipe - steps</b></sub></td>
  </tr>
</table>

## Cookbook and profile

<table align="center">
  <tr>
    <td align="center"><img width="230" alt="10-my-cookbook" src="https://github.com/user-attachments/assets/d5d49268-ac06-4a47-8d75-840bc55f19ac" /><br><sub><b>10. My cookbook</b></sub></td>
    <td align="center"><img width="230" alt="11-profile" src="https://github.com/user-attachments/assets/c2eccbed-ddf9-4eb6-abee-53aa9bd731a5" /><br><sub><b>11. Profile</b></sub></td>
    <td align="center"><img width="230" alt="12-about" src="https://github.com/user-attachments/assets/68b6261e-1fb4-4da8-8c10-09407fd20f23" /><br><sub><b>12. About BG Bites</b></sub></td>
  </tr>
</table>

---

## Features

- Create an account and log in
- Browse recipes by category: All, Soups, Salads, Main Dishes, Desserts
- Recipe cards with photo, category tag, cooking time and difficulty
- Recipe details with servings and an ingredient list, plus video and audio
- Step-by-step cooking instructions with check boxes and a cooking tip
- Bookmark recipes into a personal cookbook
- Profile and About page

## Design

| Colour | Hex |
|---|---|
| Soft pink | `#FAE6EC` |
| Chocolate brown | `#684735` |
| White | `#FFFFFF` |
| Light blush | `#FEFAFB` |

**Fonts:** [Vampiro One](https://fonts.google.com/specimen/Vampiro+One) for titles and the logo, [Poppins](https://fonts.google.com/specimen/Poppins) for body text, labels and buttons.

## Navigation

```
Welcome ──► Log In ──┐
        └─► Register ┴──► Home ──┬──► Recipes ──► Recipe page (details + steps)
                                 ├──► My cookbook
                                 └──► Profile ──► About BG Bites
```

## Author

**Svetlozara Kirova**

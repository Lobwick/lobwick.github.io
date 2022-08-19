---
layout: page
title: Contact
permalink: /contact/
image: '/assets/images/primus-classic/primus-classic_9627.jpg'
---
<div class="form-container">
  {% if site.contact.description %}
  <p class="contact-description">{{site.contact.description}}</p>
  {% endif %}
  <form class="form"
    action="{% if site.contact.email %}https://formspree.io/{{site.contact.email}}{% else %}#{% endif %}" method="POST">
    <div class="form__group">
      <label class="form__label screen-reader-text" for="form-name">Nom</label>
      <input class="form__input" id="form-name" type="text" name="name" placeholder="Name..." required>
    </div>
    <div class="form__group">
      <label class="form__label screen-reader-text" for="form-email">Email</label>
      <input class="form__input" id="form-email" type="email" name="_replyto" placeholder="Email..." required>
    </div>
    <div class="form__group">
      <label class="form__label screen-reader-text" for="form-text">Message</label>
      <textarea class="form__input" id="form-text" name="text" rows="8" placeholder="Message..." required></textarea>
    </div>
    <div class="form__group">
      <button class="button button--primary" type="submit">Envoyer</button>
    </div>
    <input type="hidden" name="_next" value="{{ site.baseurl }}/contact/thanks/" />
  </form>
</div>
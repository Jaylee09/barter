index.html
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width,initial-scale=1" />
  <title>SwapCart — Home</title>
  <link rel="stylesheet" href="styles.css" />
  <link rel="manifest" href="manifest.json" />
  <style>
    
  </style>
</head>
<body>
  <div class="layout">
    <aside class="sidebar" id="sidebar">
      <div class="sidebar-brand">SwapCart</div>
      <nav>
        <a href="profile.html">👤 Profile</a>
        <a href="index.html">🏠 Home</a>
        <a href="barter.html">🔁 Barter</a>
        <a href="barter-dashboard.html" class="icon-btn ">
    🔄 Barter Dashboard <span id="barter-count" class="badge">0</span></a>
        <a href="seller.html">🛍️ Sell</a>
        <a href="favorites.html" class="icon-btn ">
    ❤️ Favorites <span id="fav-count" class="badge">0</span></a>
        <a href="cart.html" class="icon-btn ">
    🛒 Cart <span id="cart-count" class="badge">0</span></a>
        <!-- ✅ New Logout button -->
  <button id="logoutBtn" class="icon-btn" style="background:none;border:none;cursor:pointer;font-size:1em;">
    🚪 Logout
  </button>
</nav>
    </aside>

    <main class="main-content">
      <button class="menu-toggle" id="menuToggle">☰</button>

      <div class="hero card">
        <h1>SwapCart — Shop & Barter</h1>
        <p>Buy or propose a barter for any listed item. Shop vibe, barter power.</p>
      </div>
      
      <!-- Search Bar -->
      <div class="search" style="margin:20px 0;">
        <div class="field">
          <input type="text" id="search-input" placeholder="Search products...">
          <button class="btn-search" id="search-btn">🔍</button>
        </div>
      </div>
      
      <div id="products-grid" class="products-grid"></div>
    </main>
  </div>
  
  <!-- Global Chat Modal -->
  <div id="global-chat-modal" class="modal" style="display:none;">
    <div class="modal-content card" style="max-width:600px;margin:auto;">
      <h3 id="global-chat-with-name">Chat</h3>
      <div id="global-chat-messages" style="max-height:300px;overflow-y:auto;border:1px solid #ccc;padding:10px;margin-bottom:10px;"></div>
      <textarea id="global-chat-input" rows="2" placeholder="Type your message..."></textarea>
      <button class="btn orange" id="global-send-chat-btn">Send</button>
      <button class="btn" id="global-close-chat-btn">Close</button>
    </div>
  </div>

  <!-- Chat Bot Button -->
  <button class="chat-bot-btn" onclick="startChatbot()" title="Customer Service Chat">
    🤖
  </button>

  <!-- View Chats Button -->
  <button class="view-chats-btn" onclick="viewChatSessions()">
    💬 View Chats
  </button>

  <!-- Notification Container -->
  <div id="notification-container"
       style="position:fixed;bottom:20px;right:20px;z-index:300;
              display:flex;flex-direction:column;gap:10px;"></div>

  <script src="script.js"></script>
  <script src="logout.js"></script>
  <script>
    const sidebar = document.getElementById('sidebar');
    const toggle = document.getElementById('menuToggle');
    toggle.addEventListener('click', () => {
      sidebar.classList.toggle('collapsed');
    });
  </script>
  <script>
    const user = JSON.parse(localStorage.getItem('currentUser'));
    if (!user) window.location.href = 'login.html';
  </script>
</body>
</html>



login.html
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>SwapCart — Login</title>
  <link rel="stylesheet" href="auth.css" />

</head>
<body>

    <!-- Main Content -->
    <main class="main-content">
      <div class="auth-page">
        <div class="auth-card">
          <h2>LOGIN</h2>
          <p class="muted" style="text-align:center;margin-bottom:16px;">Login to continue shopping or bartering</p>

          <form id="login-form">
            <input type="email" id="login-email" placeholder="Email" required />
            <input type="password" id="login-password" placeholder="Password" required />
            <button class="btn btn-primary" type="submit">Login</button>
          </form>

          <div id="login-alert" style="margin-top:10px;"></div>

          <p class="muted" style="margin-top:20px;text-align:center;">
            Don’t have an account? <a href="register.html" style="color:var(--accent-2);font-weight:700;">Register</a><br>
            <a href="forgot.html" style="color:var(--accent-1);font-weight:700;">Forgot Password?</a>
          </p>
        </div>
      </div>
    </main>
  </div>

  <script src="script.js"></script>
  
  </script>
</body>
</html>




forgot.html
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>SwapCart — Forgot Password</title>
  <link rel="stylesheet" href="auth.css" />

</head>
<body>
  
    <!-- Main Content -->
    <main class="main-content">
      <div class="auth-page">
        <div class="auth-card">
          <h2>Reset Password 🔑</h2>
          <p class="muted" style="text-align:center;margin-bottom:16px;">
            Enter your email and a new password below
          </p>

          <form id="forgot-form">
            <input type="email" id="forgot-email" placeholder="Email Address" required />
            <input type="password" id="forgot-new-password" placeholder="New Password" required />
            <button class="btn btn-primary" type="submit">Reset Password</button>
          </form>

          <div id="forgot-alert" style="margin-top:10px;"></div>

          <p class="muted" style="margin-top:20px;text-align:center;">
            Remembered your password? 
            <a href="login.html" style="color:var(--accent-2);font-weight:700;">Login</a><br>
            Need an account? 
            <a href="register.html" style="color:var(--accent-1);font-weight:700;">Register</a>
          </p>
        </div>
      </div>
    </main>
  </div>

  <script src="script.js"></script>
  <script>
    document.addEventListener('DOMContentLoaded', () => {
      const user = JSON.parse(localStorage.getItem('currentUser'));
      if (user) window.location.href = 'index.html'; // redirect logged-in users
    });
  </script>
</body>
</html>



favorites.html
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width,initial-scale=1" />
  <title>SwapCart — Favorites</title>
  <link rel="stylesheet" href="styles.css" />
</head>
<body>
  <!-- Header -->
  <header class="site-header">
    <div class="container topbar">
      <div class="brand"><a href="home.html" style="text-decoration:none;color:#4400ff;">SwapCart</a></div>

      <div class="actions">
        <a href="index.html" class="icon-btn orange">Home</a>
      </div>
    </div>
  </header>

  <!-- Favorites -->
  <main class="container">
    <div class="hero card">
      <h1>❤️ My Favorite Items</h1>
      <p>All the products you’ve marked with a heart.</p>
    </div>

    <div id="favorites-grid" class="products-grid"></div>
  </main>

  <script src="script.js"></script>
</body>
</html>




cart.html
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width,initial-scale=1" />
  <title>SwapCart — Cart</title>
  <link rel="stylesheet" href="styles.css" />
</head>
<body>
  <header class="site-header">
    <div class="container topbar">
      <div class="brand"><a href="home.html" style="text-decoration:none;color:#6a00ff;">SwapCart</a></div>
      <div class="actions">
        <a href="index.html" class="icon-btn orange">Home</a>
    </div>
  </header>

  <main class="container">
  <h2>Your Cart</h2>
  <div id="cart-items" class="card"></div>
  <div class="card checkout">
    <div id="cart-total">Total: ₱0.00</div>
    <form id="checkout-form">
      <input id="checkout-name" placeholder="Full name" required />
      <input id="checkout-address" placeholder="Delivery address" required />
      <input id="checkout-phone" placeholder="Phone number" type="tel" required />
      <div class="payment-row">
        <label><input type="radio" name="payment" value="gcash" id="gcash" /> GCash</label>
        <label><input type="radio" name="payment" value="cod" id="cod" /> Cash on Delivery</label>
      </div>
      <div id="gcash-details" class="gcash-details" style="display:none;">
        <input id="gcash-number" placeholder="GCash number (11 digits)" pattern="[0-9]{11}" />
        <input id="gcash-name" placeholder="GCash account name" />
      </div>
      <button class="btn orange">Complete Purchase</button>
    </form>
  </div>
</main>


  <script src="script.js"></script>
  

</body>
</html>



barter.html
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width,initial-scale=1" />
  <title>SwapCart — Barter</title>
  <link rel="stylesheet" href="styles.css" />

</head>
<body>
  <header class="site-header">
    <div class="container topbar">
      <div class="brand"><a href="home.html" style="text-decoration:none;color:#6a00ff;">SwapCart</a></div>
      <div class="actions">
        <a href="index.html" class="icon-btn orange">Home</a>
        <a href="barter-dashboard.html" class="icon-btn orange">Dashboard</a>
      </div>
    </div>
  </header>

  <main class="container">
    <h2>Barter Center</h2>
    <div class="barter-grid">
      <div class="card">
        <h3>Post Item for Barter</h3>
        <div id="barter-alert"></div>
        <form id="barter-form">
          <input id="barter-title" placeholder="Title" required />
          <textarea id="barter-description" placeholder="Description" rows="3" required></textarea>
          <input id="barter-photo" type="file" accept="image/*" />
          <button class="btn orange">Post for Barter</button>
        </form>
      </div>

      <div class="card" style="flex:1">
        <h3>Available Barter Offers</h3>
        <div id="barter-items-list"></div>
      </div>
    </div>
  </main>

  <!-- Global Chat Modal -->
  <div id="global-chat-modal" class="modal" style="display:none;">
    <div class="modal-content card" style="max-width:600px;margin:auto;">
      <h3 id="global-chat-with-name">Chat</h3>
      <div id="global-chat-messages" style="max-height:300px;overflow-y:auto;border:1px solid #ccc;padding:10px;margin-bottom:10px;"></div>
      <textarea id="global-chat-input" rows="2" placeholder="Type your message..."></textarea>
      <button class="btn orange" id="global-send-chat-btn">Send</button>
      <button class="btn" id="global-close-chat-btn">Close</button>
    </div>
  </div>

  <!-- Chat Bot Button -->
  <button class="chat-bot-btn" onclick="startChatbot()" title="Customer Service Chat">
    🤖
  </button>

  <!-- View Chats Button -->
  <button class="view-chats-btn" onclick="viewChatSessions()">
    💬 View Chats
  </button>

  <script src="script.js"></script>
  
</body>
</html>



barter-dashboard.html
<!-- Updated barter-dashboard.html -->
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width,initial-scale=1" />
  <title>My Barter Dashboard</title>
  <link rel="stylesheet" href="styles.css" />
</head>
<body>
  <header class="site-header">
    <div class="container topbar">
      <div class="brand"><a href="index.html" style="text-decoration:none;color:#8800ff;">SwapCart</a></div>
      <div class="actions">
        <a href="barter.html" class="icon-btn orange">New Barter</a>
        <a href="index.html" class="icon-btn orange">Home</a>
        </div>

    </div>
  </header>

  <main class="container">
    <h2>My Barter Dashboard</h2>
    <div id="my-barter-list"></div>

    <!-- Hidden comment modal -->
    <div id="comment-modal" class="modal" style="display:none;">
      <div class="modal-content card" style="max-width:600px;margin:auto;">
        <h3>Comments</h3>
        <div id="comment-list"></div>
        <textarea id="new-comment-text" placeholder="Write a comment..." rows="2"></textarea>
        <button class="btn orange" id="post-comment-btn">Post Comment</button>
        <button class="btn" onclick="closeCommentModal()">Close</button>
      </div>
    </div>
  </main>
  <!-- 🔔 Notification Popup -->
<div id="notification-container"
     style="position:fixed;bottom:20px;right:20px;z-index:300;
            display:flex;flex-direction:column;gap:10px;"></div>


  <script src="script.js"></script>
</body>
</html>



logout.js
// logout.js — handles user logout for SwapCart
document.addEventListener('DOMContentLoaded', () => {
  const logoutBtn = document.getElementById('logoutBtn');

  if (logoutBtn) {
    logoutBtn.addEventListener('click', () => {
      if (confirm('Are you sure you want to logout?')) {
        // Remove current user session
        localStorage.removeItem('currentUser');

        // Optional: also clear cart or session data
        // localStorage.removeItem('cart');

        // Redirect to login page
        window.location.href = 'login.html';
      }
    });
  }
});



logouts.js
/* SwapCart — Logout Handler with Glass Toast */

document.addEventListener('DOMContentLoaded', () => {
  const logoutBtn = document.getElementById('logoutBtn');
  if (logoutBtn) {
    logoutBtn.addEventListener('click', () => {
      if (confirm('Are you sure you want to log out?')) {
        localStorage.removeItem('currentUser');
        showGlassToast('You have been logged out 👋', '#0fb2a6');
        setTimeout(() => {
          window.location.href = 'login.html';
        }, 1500);
      }
    });
  }
});

/* ---- Glass Toast Utility ---- */
function showGlassToast(message, color = '#5b6ef6') {
  // Create container if not already present
  let cont = document.getElementById('glass-toast-container');
  if (!cont) {
    cont = document.createElement('div');
    cont.id = 'glass-toast-container';
    cont.style.cssText = `
      position: fixed;
      top: 20px;
      right: 20px;
      display: flex;
      flex-direction: column;
      gap: 10px;
      z-index: 2000;
    `;
    document.body.appendChild(cont);
  }

  // Create toast
  const toast = document.createElement('div');
  toast.textContent = message;
  toast.style.cssText = `
    padding: 14px 20px;
    border-radius: 16px;
    backdrop-filter: blur(10px) saturate(140%);
    -webkit-backdrop-filter: blur(10px) saturate(140%);
    background: rgba(255,255,255,0.25);
    border: 1px solid rgba(255,255,255,0.3);
    color: ${color};
    font-weight: 700;
    font-size: 14px;
    box-shadow: 0 8px 30px rgba(0,0,0,0.1);
    opacity: 0;
    transform: translateY(-10px);
    transition: all 0.4s ease;
  `;
  cont.appendChild(toast);

  // Animate in
  setTimeout(() => {
    toast.style.opacity = '1';
    toast.style.transform = 'translateY(0)';
  }, 50);

  // Remove after 2.5s
  setTimeout(() => {
    toast.style.opacity = '0';
    toast.style.transform = 'translateY(-10px)';
    setTimeout(() => toast.remove(), 400);
  }, 2500);
}



product.html
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width,initial-scale=1" />
  <title>SwapCart — Product</title>
  <link rel="stylesheet" href="styles.css" />
  <style>
    .product-page {
      display: flex;
      flex-wrap: wrap;
      gap: 30px;
      background: #fff;
      border-radius: 10px;
      padding: 20px;
      box-shadow: 0 2px 6px rgba(0,0,0,0.1);
      margin-top: 30px;
    }
    .product-img {
      flex: 1;
      min-width: 280px;
      text-align: center;
    }
    .product-img img {
      width: 100%;
      max-width: 350px;
      border-radius: 10px;
      border: 1px solid #ddd;
    }
    .product-info {
      flex: 2;
      min-width: 320px;
    }
    .product-info h2 {
      color: #333;
      margin-bottom: 8px;
    }
    .product-price {
      color: #ff6a00;
      font-size: 1.6em;
      margin-bottom: 10px;
    }
    .product-meta {
      color: #777;
      font-size: 14px;
      margin-bottom: 15px;
    }
    .buy-btn, .cart-btn {
      display: inline-block;
      margin-right: 10px;
      padding: 10px 20px;
      background: #ff6a00;
      color: white;
      border: none;
      border-radius: 5px;
      cursor: pointer;
    }
    .cart-btn {
      background: #333;
    }
    .cart-btn:hover, .buy-btn:hover {
      opacity: 0.85;
    }
  </style>
</head>
<body>
  <header class="site-header">
    <div class="container topbar">
      <div class="brand"><a href="index.html" style="text-decoration:none;color:#ff6a00;">SwapCart</a></div>
      <div class="actions">
        <a href="index.html" class="icon-btn orange">Home</a>
      </div>
    </div>
  </header>

  <main class="container">
  <div id="product-details" class="product-page"></div>

  <section id="reviews-section" class="card" style="margin-top:30px; padding:20px;">
    <h3>🗨️ Reviews & Comments</h3>

    <div id="reviews-list" style="margin-top:15px;"></div>

    <div id="review-form" style="margin-top:20px;">
      <h4>Leave a Review</h4>
      <textarea id="review-text" rows="3" placeholder="Write your comment here..." style="width:100%;padding:10px;border-radius:6px;border:1px solid #ccc;"></textarea>
      <div style="margin-top:10px;">
        Rating:
        <select id="review-rating">
          <option value="5">⭐⭐⭐⭐⭐</option>
          <option value="4">⭐⭐⭐⭐</option>
          <option value="3">⭐⭐⭐</option>
          <option value="2">⭐⭐</option>
          <option value="1">⭐</option>
        </select>
      </div>
      <button class="buy-btn" style="margin-top:10px;" onclick="submitReview()">Submit Review</button>
    </div>
  </section>
</main>

  <!-- Global Chat Modal -->
  <div id="global-chat-modal" class="modal" style="display:none;">
    <div class="modal-content card" style="max-width:600px;margin:auto;">
      <h3 id="global-chat-with-name">Chat</h3>
      <div id="global-chat-messages" style="max-height:300px;overflow-y:auto;border:1px solid #ccc;padding:10px;margin-bottom:10px;"></div>
      <textarea id="global-chat-input" rows="2" placeholder="Type your message..."></textarea>
      <button class="btn orange" id="global-send-chat-btn">Send</button>
      <button class="btn" id="global-close-chat-btn">Close</button>
    </div>
  </div>

  <!-- Chat Bot Button -->
  <button class="chat-bot-btn" onclick="startChatbot()" title="Customer Service Chat">
    🤖
  </button>

  <!-- View Chats Button -->
  <button class="view-chats-btn" onclick="viewChatSessions()">
    💬 View Chats
  </button>

  <script src="script.js"></script>
  <script>
    document.addEventListener('DOMContentLoaded', () => {
      const params = new URLSearchParams(window.location.search);
      const productId = parseInt(params.get('id'));
      loadProductDetails(productId);
      loadReviews(productId);
    });

    function buyNow(id) {
      addToCart(id);
      window.location.href = 'cart.html';
    }
  </script>
</body>
</html>


profile.html
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>SwapCart — Profile</title>
  <link rel="stylesheet" href="styles.css" />
  <style>
    body {
      background: #fafafa;
      font-family: Arial, sans-serif;
    }

    .profile-container {
      max-width: 900px;
      margin: 40px auto;
      background: #fff;
      padding: 30px 40px;
      border-radius: 10px;
      box-shadow: 0 2px 6px rgba(0,0,0,0.1);
    }

    .profile-header {
      border-bottom: 1px solid #ddd;
      margin-bottom: 20px;
      padding-bottom: 10px;
    }

    .profile-header h2 {
      margin: 0;
      color: #333;
    }

    .profile-header p {
      color: #777;
      margin: 4px 0 0;
      font-size: 14px;
    }

    .profile-form {
      display: flex;
      justify-content: space-between;
      flex-wrap: wrap;
      gap: 40px;
    }

    .profile-left {
      flex: 1;
      min-width: 400px;
    }

    .profile-right {
      width: 220px;
      text-align: center;
    }

    .profile-right img {
      width: 120px;
      height: 120px;
      border-radius: 50%;
      object-fit: cover;
      border: 2px solid #ddd;
      margin-bottom: 10px;
    }

    label {
      display: block;
      font-weight: bold;
      margin-top: 15px;
      color: #333;
    }

    input[type="text"], input[type="email"], input[type="password"], input[type="date"] {
      width: 100%;
      padding: 8px;
      margin-top: 5px;
      border: 1px solid #ccc;
      border-radius: 5px;
      font-size: 14px;
    }

    .gender-group {
      margin-top: 8px;
    }

    .gender-group input {
      margin-right: 5px;
    }

    .save-btn {
      background: #ff6a00;
      color: white;
      border: none;
      padding: 10px 20px;
      border-radius: 5px;
      cursor: pointer;
      margin-top: 20px;
    }

    .save-btn:hover {
      background: #e65c00;
    }

    .logout-btn {
      background: #ccc;
      color: black;
      border: none;
      padding: 10px 20px;
      border-radius: 5px;
      cursor: pointer;
      margin-top: 10px;
    }

    small {
      display: block;
      color: #888;
      font-size: 12px;
      margin-top: 6px;
    }
  </style>
</head>
<body>
  <header class="site-header">
    <div class="container topbar">
      <div class="brand"><a href="index.html" style="text-decoration:none;color:#6a00ff;">SwapCart</a></div>
      <div class="actions">
        <a href="index.html" class="icon-btn orange">Home</a>
        
      </div>
    </div>
  </header>

  <main class="profile-container">
    <div class="profile-header">
      <h2>My Profile</h2>
      <p>Manage and protect your account</p>
    </div>

    <form id="profile-form" class="profile-form">
      <div class="profile-left">
        <label>Username</label>
        <input type="text" id="username" readonly>

        <label>Name</label>
        <input type="text" id="name">

        <label>Email</label>
        <input type="email" id="email" readonly>

        <label>Phone Number</label>
        <input type="text" id="phone">

        <label>Gender</label>
        <div class="gender-group">
          <label><input type="radio" name="gender" value="Male"> Male</label>
          <label><input type="radio" name="gender" value="Female"> Female</label>
          <label><input type="radio" name="gender" value="Other"> Other</label>
        </div>

        <label>Date of Birth</label>
        <input type="date" id="dob">

        <button type="submit" class="save-btn">Save</button>
        <button type="button" id="logout-btn" class="logout-btn">Logout</button>
      </div>

      <div class="profile-right">
        <img id="profile-photo" src="default-avatar.png" alt="Profile Photo">
        <input type="file" id="photo-upload" accept="image/*">
        <small>File size: max 1MB<br>Formats: JPEG, PNG</small>
      </div>
    </form>
  </main>

  <script src="script.js"></script>
  <script>
    document.addEventListener('DOMContentLoaded', () => {
      const user = JSON.parse(localStorage.getItem('currentUser'));
      if (!user) return window.location.href = 'login.html';

      // Fill existing info
      document.getElementById('username').value = user.username || user.email.split('@')[0];
      document.getElementById('name').value = user.name || '';
      document.getElementById('email').value = user.email || '';
      document.getElementById('phone').value = user.phone || '';
      document.getElementById('dob').value = user.dob || '';
      if (user.gender) {
        document.querySelector(`input[name="gender"][value="${user.gender}"]`).checked = true;
      }
      if (user.photo) {
        document.getElementById('profile-photo').src = user.photo;
      }

      // Save changes
      document.getElementById('profile-form').addEventListener('submit', e => {
        e.preventDefault();
        const name = document.getElementById('name').value.trim();
        const phone = document.getElementById('phone').value.trim();
        const dob = document.getElementById('dob').value;
        const gender = document.querySelector('input[name="gender"]:checked')?.value || user.gender;

        let users = JSON.parse(localStorage.getItem('users')) || [];
        const idx = users.findIndex(u => u.id === user.id);
        if (idx === -1) return alert('User not found.');

        users[idx] = { ...users[idx], name, phone, dob, gender, photo: user.photo };
        localStorage.setItem('users', JSON.stringify(users));
        localStorage.setItem('currentUser', JSON.stringify(users[idx]));

        alert('Profile updated successfully!');
      });

      // Upload image
      document.getElementById('photo-upload').addEventListener('change', e => {
        const file = e.target.files[0];
        if (!file) return;
        if (file.size > 1024 * 1024) return alert('File too large! Max 1MB.');

        const reader = new FileReader();
        reader.onload = ev => {
          const imgData = ev.target.result;
          document.getElementById('profile-photo').src = imgData;
          user.photo = imgData;

          let users = JSON.parse(localStorage.getItem('users')) || [];
          const idx = users.findIndex(u => u.id === user.id);
          if (idx !== -1) users[idx].photo = imgData;

          localStorage.setItem('users', JSON.stringify(users));
          localStorage.setItem('currentUser', JSON.stringify(user));
        };
        reader.readAsDataURL(file);
      });

      // Logout
      document.getElementById('logout-btn').addEventListener('click', () => {
        localStorage.removeItem('currentUser');
        window.location.href = 'login.html';
      });
    });
  </script>
</body>
</html>




register.html
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>SwapCart — Register</title>
  <link rel="stylesheet" href="auth.css" />

</head>
<body>
    <!-- Main Content -->
    <main class="main-content">
      <div class="auth-page">
        <div class="auth-card">
          <h2>Create Account ✨</h2>
          <p class="muted" style="text-align:center;margin-bottom:16px;">
            Join SwapCart to shop, sell, and barter with others
          </p>

          <form id="register-form">
            <input type="text" id="register-name" placeholder="Full Name" required />
            <input type="email" id="register-email" placeholder="Email" required />
            <input type="password" id="register-password" placeholder="Password" required />
            <input type="password" id="register-confirm-password" placeholder="Confirm Password" required />
            <button class="btn btn-primary" type="submit">Register</button>
          </form>

          <div id="register-alert" style="margin-top:10px;"></div>

          <p class="muted" style="margin-top:20px;text-align:center;">
            Already have an account? 
            <a href="login.html" style="color:var(--accent-2);font-weight:700;">Login</a>
          </p>
        </div>
      </div>
    </main>
  </div>

  <script src="script.js"></script>
  <script>
    document.addEventListener('DOMContentLoaded', () => {
      const user = JSON.parse(localStorage.getItem('currentUser'));
      if (user) window.location.href = 'index.html'; // redirect logged-in users
    });
  </script>
</body>
</html>




script.js
/* SwapCart — Multi-Page Edition
   Functions for Login, Register, Products, Cart, Seller, and Barter
   Works across multiple HTML pages using localStorage only.
*/

/* STORAGE KEYS */
const STORAGE = {
  USERS: 'users',
  CURRENT_USER: 'currentUser',
  PRODUCTS: 'products',
  CART: 'cart',
  BARTER_ITEMS: 'barterItems',
  BARTER_PROPOSALS: 'barterProposals',
  FAVORITES: 'favorites',
  BARTER_COMMENTS: 'barterComments',
  MESSAGES: 'messages',
  NOTIFICATIONS: 'notifications',
  CHAT_SESSIONS: 'chatSessions',
  CHATBOT_RESPONSES: 'chatbotResponses'
};

/* STATE */
let users = JSON.parse(localStorage.getItem(STORAGE.USERS)) || [];
let currentUser = JSON.parse(localStorage.getItem(STORAGE.CURRENT_USER)) || null;
let products = JSON.parse(localStorage.getItem(STORAGE.PRODUCTS)) || [];
let cart = JSON.parse(localStorage.getItem(STORAGE.CART)) || [];
let barterItems = JSON.parse(localStorage.getItem(STORAGE.BARTER_ITEMS)) || [];
let barterProposals = JSON.parse(localStorage.getItem(STORAGE.BARTER_PROPOSALS)) || [];
let favorites = JSON.parse(localStorage.getItem(STORAGE.FAVORITES)) || [];
let barterComments = JSON.parse(localStorage.getItem(STORAGE.BARTER_COMMENTS)) || [];
let messages = JSON.parse(localStorage.getItem(STORAGE.MESSAGES)) || [];
let notifications = JSON.parse(localStorage.getItem(STORAGE.NOTIFICATIONS)) || [];
let chatSessions = JSON.parse(localStorage.getItem(STORAGE.CHAT_SESSIONS)) || [];
let chatbotResponses = JSON.parse(localStorage.getItem(STORAGE.CHATBOT_RESPONSES)) || [
  {
    keywords: ['hello', 'hi', 'hey', 'good morning', 'good afternoon'],
    response: 'Hello! 👋 Welcome to SwapCart Customer Service. How can I help you today?'
  },
  {
    keywords: ['problem', 'issue', 'not working', 'broken', 'defective'],
    response: 'I\'m sorry to hear you\'re having issues. Please describe the problem and we\'ll help resolve it.'
  },
  {
    keywords: ['return', 'refund', 'exchange'],
    response: 'For returns/refunds, please contact our support team at support@swapcart.com or call (02) 1234-5678.'
  },
  {
    keywords: ['delivery', 'shipping', 'arrive', 'when'],
    response: 'Standard delivery takes 3-5 business days. Express shipping available for ₱100 (1-2 days).'
  },
  {
    keywords: ['price', 'cost', 'how much'],
    response: 'Prices are shown on each product page. Feel free to make offers on barter items!'
  },
  {
    keywords: ['thank', 'thanks'],
    response: 'You\'re welcome! 😊 Let me know if you need anything else.'
  },
  {
    keywords: ['bye', 'goodbye'],
    response: 'Thank you for chatting with us! Have a great day! 🌟'
  }
];

// Initialize chatbot responses if not exists
localStorage.setItem(STORAGE.CHATBOT_RESPONSES, JSON.stringify(chatbotResponses));

/* Default sample products (for first load) */
if (products.length === 0) {
  products = [
    { id: 1, name: "Wireless Earbuds", description: "High-quality sound", price: 1200, quantity: 10, image: null, sellerId: 1, sellerName: "TechShop" },
    { id: 2, name: "Vintage Watch", description: "Classic leather strap", price: 2500, quantity: 5, image: null, sellerId: 2, sellerName: "TimeCollector" },
    { id: 3, name: "Book Collection", description: "10 best-selling novels", price: 800, quantity: 15, image: null, sellerId: 1, sellerName: "TechShop" }
  ];
  localStorage.setItem(STORAGE.PRODUCTS, JSON.stringify(products));
}

/* Initialize depending on page */
document.addEventListener('DOMContentLoaded', () => {
  const page = location.pathname.split('/').pop();

  // Login
  if (page === 'login.html' && document.getElementById('login-form')) {
    document.getElementById('login-form').addEventListener('submit', handleLogin);
  }

  // Register
  if (page === 'register.html' && document.getElementById('register-form')) {
    document.getElementById('register-form').addEventListener('submit', handleRegister);
  }
  
  // Forgot Password
  if (page === 'forgot.html' && document.getElementById('forgot-form')) {
    document.getElementById('forgot-form').addEventListener('submit', handleForgotPassword);
  }

  // Home / Index
  if (page === 'index.html' || page === '' || page === 'index.html') {
    loadProducts();
    document.getElementById('search-btn').addEventListener('click', handleSearch);
    document.getElementById('search-input').addEventListener('keydown', e => { if (e.key === 'Enter') handleSearch(); });
  }

  // Cart
  if (page === 'cart.html') {
    updateCartDisplay();
    const gcash = document.getElementById('gcash');
    const cod = document.getElementById('cod');
    if (gcash && cod) {
      gcash.addEventListener('change', toggleGcashDetails);
      cod.addEventListener('change', toggleGcashDetails);
    }
    document.getElementById('checkout-form').addEventListener('submit', handleCheckout);
  }

  // Barter
  if (page === 'barter.html') {
    document.getElementById('barter-form').addEventListener('submit', handleBarterSubmit);
    loadBarterItems();
  }

  // Seller
  if (page === 'seller.html') {
    document.getElementById('seller-form').addEventListener('submit', handleAddProduct);
    loadSellerProducts();
  }
  
  // Favorites page
  if (page === 'favorites.html') {
    loadFavorites();
  }
  
  if (page === 'barter-dashboard.html') {
    loadMyBarterDashboard();
  }
});

/* ---------------- AUTH ---------------- */
function handleRegister(e) {
  e.preventDefault();
  const name = document.getElementById('register-name').value.trim();
  const email = document.getElementById('register-email').value.trim().toLowerCase();
  const pass = document.getElementById('register-password').value;
  const confirm = document.getElementById('register-confirm-password').value;
  const alertBox = document.getElementById('register-alert');
  alertBox.innerHTML = '';

  if (!name || !email || !pass) return alertBox.innerHTML = `<div class="alert alert-error">Please fill all fields</div>`;
  if (pass !== confirm) return alertBox.innerHTML = `<div class="alert alert-error">Passwords do not match</div>`;
  if (users.find(u => u.email === email)) return alertBox.innerHTML = `<div class="alert alert-error">Email already registered</div>`;

  const newUser = { id: Date.now(), name, email, password: pass };
  users.push(newUser);
  localStorage.setItem(STORAGE.USERS, JSON.stringify(users));
  alertBox.innerHTML = `<div class="alert alert-success">Registered successfully! Redirecting to login...</div>`;
  setTimeout(() => (window.location.href = 'login.html'), 1000);
}

function handleLogin(e) {
  e.preventDefault();
  const email = document.getElementById('login-email').value.trim().toLowerCase();
  const pass = document.getElementById('login-password').value;
  const alertBox = document.getElementById('login-alert');
  alertBox.innerHTML = '';

  const user = users.find(u => u.email === email && u.password === pass);
  if (!user) return alertBox.innerHTML = `<div class="alert alert-error">Invalid email or password</div>`;

  currentUser = user;
  localStorage.setItem(STORAGE.CURRENT_USER, JSON.stringify(user));
  alertBox.innerHTML = `<div class="alert alert-success">Login successful!</div>`;
  setTimeout(() => (window.location.href = 'index.html'), 800);
}

function handleForgotPassword(e) {
  e.preventDefault();
  const email = document.getElementById('forgot-email').value.trim().toLowerCase();
  const newPass = document.getElementById('forgot-new-password').value.trim();
  const alertBox = document.getElementById('forgot-alert');
  alertBox.innerHTML = '';

  if (!email || !newPass) return alertBox.innerHTML = `<div class="alert alert-error">Please fill all fields.</div>`;

  const user = users.find(u => u.email === email);
  if (!user) return alertBox.innerHTML = `<div class="alert alert-error">No account found with that email.</div>`;

  user.password = newPass;
  localStorage.setItem(STORAGE.USERS, JSON.stringify(users));
  alertBox.innerHTML = `<div class="alert alert-success">Password reset successful! Redirecting to login...</div>`;
  setTimeout(() => (window.location.href = 'login.html'), 1500);
}

/* ---------------- PRODUCTS ---------------- */
let searchQuery = '';

function handleSearch() {
  searchQuery = document.getElementById('search-input').value.trim().toLowerCase();
  loadProducts();
}

function loadProducts() {
  const grid = document.getElementById('products-grid');
  if (!grid) return;

  grid.innerHTML = '';
  let list = products.filter(p => !searchQuery || p.name.toLowerCase().includes(searchQuery));

  if (list.length === 0) {
    grid.innerHTML = '<div class="card">No products found.</div>';
    return;
  }

  list.forEach(p => {
    const div = document.createElement('div');
    div.className = 'product-card';
    div.innerHTML = `
      <div class="product-media" onclick="viewProduct(${p.id})" style="cursor:pointer;">
           ${p.image ? `<img src="${p.image}" alt="${escapeHtml(p.name)}">` : `<div>${escapeHtml(initials(p.name))}</div>`}
     </div>
       <div class="product-body" onclick="viewProduct(${p.id})" style="cursor:pointer;">
         <div class="product-title">${escapeHtml(p.name)}</div>
         <div class="product-price">₱${Number(p.price).toFixed(2)}</div>
        <div class="product-meta">Seller: ${escapeHtml(p.sellerName || 'SwapCart')} • Stock: ${p.quantity}</div>
      </div>
      <div class="product-actions">
        <button class="add-to-cart" onclick="event.stopPropagation(); addToCart(${p.id});">Add to Cart</button>
        <button class="favorite-btn" onclick="event.stopPropagation(); toggleFavorite(${p.id});">
          ${favorites.some(f => f.userId === currentUser?.id && f.productId === p.id) ? '❤️' : '🤍'}
        </button>
        <button class="message-seller-btn" onclick="event.stopPropagation(); startSellerChat(${p.sellerId}, '${escapeHtml(p.name)}');">
          💬 Message Seller
        </button>
        <button class="view-seller-btn" onclick="event.stopPropagation(); viewSeller(${p.sellerId});">View Seller</button>
      </div>`;

    grid.appendChild(div);
  });
}

/* ---------------- CART ---------------- */
function addToCart(productId) {
  if (!currentUser) return alert('Please login first.');

  const p = products.find(x => x.id === productId);
  if (!p) return alert('Product not found.');
  if (p.quantity < 1) return alert('Out of stock.');

  const existing = cart.find(c => c.productId === productId && c.userId === currentUser.id);
  if (existing) existing.quantity += 1;
  else cart.push({ id: Date.now(), productId: p.id, userId: currentUser.id, quantity: 1, name: p.name, price: p.price });

  localStorage.setItem(STORAGE.CART, JSON.stringify(cart));
  alert('Added to cart!');
  refreshAfterAction();
}

function updateCartDisplay() {
  const cont = document.getElementById('cart-items');
  if (!cont) return;
  cont.innerHTML = '';
  if (!currentUser) return cont.innerHTML = '<div class="card">Please login to view your cart.</div>';

  const myCart = cart.filter(i => i.userId === currentUser.id);
  if (myCart.length === 0) return cont.innerHTML = '<div class="card">Your cart is empty.</div>';

  let total = 0;
  myCart.forEach(item => {
    total += item.price * item.quantity;
    const row = document.createElement('div');
    row.className = 'cart-item';
    row.innerHTML = `
      <div style="display:flex;gap:10px;align-items:center;">
        <div>${escapeHtml(item.name)}</div>
      </div>
      <div>
        <span>₱${item.price}</span> × ${item.quantity}
        <button class="icon-btn" onclick="removeFromCart(${item.id})">Remove</button>
      </div>`;
    cont.appendChild(row);
  });

  const totalEl = document.getElementById('cart-total');
  if (totalEl) totalEl.textContent = `Total: ₱${total.toFixed(2)}`;
}

function removeFromCart(id) {
  cart = cart.filter(i => i.id !== id);
  localStorage.setItem(STORAGE.CART, JSON.stringify(cart));
  updateCartDisplay();
  refreshAfterAction();
}

function toggleGcashDetails() {
  const gcashDiv = document.getElementById('gcash-details');
  if (document.getElementById('gcash').checked) gcashDiv.style.display = 'block';
  else gcashDiv.style.display = 'none';
}

function handleCheckout(e) {
  e.preventDefault();
  if (!currentUser) return alert('Please login to checkout.');

  const userCart = cart.filter(i => i.userId === currentUser.id);
  if (userCart.length === 0) return alert('Cart empty.');

  userCart.forEach(it => {
    const p = products.find(pr => pr.id === it.productId);
    if (p) p.quantity -= it.quantity;
  });

  products = products.filter(p => p.quantity > 0);
  cart = cart.filter(i => i.userId !== currentUser.id);
  localStorage.setItem(STORAGE.PRODUCTS, JSON.stringify(products));
  localStorage.setItem(STORAGE.CART, JSON.stringify(cart));
  alert('Checkout successful!');
  refreshAfterAction();
  window.location.href = 'index.html';
}

function toggleFavorite(productId) {
  if (!currentUser) return alert('Please login first.');

  const index = favorites.findIndex(f => f.userId === currentUser.id && f.productId === productId);
  if (index > -1) {
    favorites.splice(index, 1);
  } else {
    favorites.push({ userId: currentUser.id, productId });
  }

  localStorage.setItem(STORAGE.FAVORITES, JSON.stringify(favorites));
  refreshAfterAction();

  const page = location.pathname.split('/').pop();
  if (page === 'favorites.html') {
    loadFavorites();
  } else if (page === 'index.html' || page === '') {
    loadProducts();
  }
}

/* ---------------- BARTER ---------------- */
function handleBarterSubmit(e) {
  e.preventDefault();
  if (!currentUser) return alert('Please login first.');

  const title = document.getElementById('barter-title').value.trim();
  const desc = document.getElementById('barter-description').value.trim();
  const file = document.getElementById('barter-photo').files[0];

  if (!title || !desc) {
    return alert('Please fill in all required fields.');
  }

  const create = (img = null) => {
    const newItem = {
      id: Date.now(),
      userId: currentUser.id,
      userName: currentUser.name,
      title,
      description: desc,
      image: img,
      status: "available"
    };

    barterItems.unshift(newItem);
    localStorage.setItem(STORAGE.BARTER_ITEMS, JSON.stringify(barterItems));
    refreshAfterAction();

    document.getElementById('barter-form').reset();
    alert('Your barter item has been posted successfully!');
    window.location.href = 'barter-dashboard.html';
  };

  if (file) {
    const reader = new FileReader();
    reader.onload = e => create(e.target.result);
    reader.readAsDataURL(file);
  } else {
    create();
  }
}

function loadBarterItems() {
  const list = document.getElementById('barter-items-list');
  if (!list) return;
  list.innerHTML = '';
  if (barterItems.length === 0) return list.innerHTML = '<div class="card">No barter items yet.</div>';

  barterItems.slice().reverse().forEach(b => {
    const el = document.createElement('div');
    el.className = 'barter-item';
    el.innerHTML = `
      <div><strong>${escapeHtml(b.title)}</strong> — ${escapeHtml(b.description)}</div>
      <small>${b.userName}</small>
      <button class="message-seller-btn" onclick="startSellerChat(${b.userId}, '${escapeHtml(b.title)}')" style="margin-top:8px;">
        💬 Message Seller
      </button>`;
    list.appendChild(el);
  });
}

function loadMyBarterDashboard() {
  const list = document.getElementById('my-barter-list');
  if (!list) return;

  if (!currentUser) {
    list.innerHTML = '<div class="card">Please login to view your barters.</div>';
    return;
  }

  const myBarters = barterItems.filter(b => b.userId === currentUser.id);

  if (myBarters.length === 0) {
    list.innerHTML = '<div class="card">You have not posted any barter items yet.</div>';
    return;
  }

  list.innerHTML = '';
  myBarters.forEach(b => {
    const el = document.createElement('div');
    el.className = 'card';
    el.innerHTML = `
  <div style="display:flex;gap:10px;align-items:center;">
    ${b.image ? `<img src="${b.image}" style="width:60px;height:60px;object-fit:cover;border-radius:8px;">` : ''}
    <div style="flex:1;">
      <strong>${escapeHtml(b.title)}</strong><br>
      <small>${escapeHtml(b.userName)}</small>
      <p>${escapeHtml(b.description)}</p>
      <p>Status: <span style="font-weight:bold;color:${b.status === 'sold' ? 'red' : 'green'};">${b.status.toUpperCase()}</span></p>
      <div style="display:flex;gap:6px;flex-wrap:wrap;">
        <button class="btn small" onclick="openCommentModal(${b.id})">💬 Comments</button>
        <button class="btn small orange" onclick="startSellerChat(${b.userId}, '${escapeHtml(b.title)}')">✉️ Message Seller</button>
        <button class="btn small" onclick="toggleBarterStatus(${b.id})">🔁 Mark as ${b.status === 'sold' ? 'Available' : 'Sold'}</button>
      </div>
    </div>
  </div>
`;
    list.appendChild(el);
  });
}

function toggleBarterStatus(barterId) {
  const item = barterItems.find(b => b.id === barterId && b.userId === currentUser.id);
  if (!item) return alert("Item not found or not yours.");

  item.status = item.status === "sold" ? "available" : "sold";
  localStorage.setItem(STORAGE.BARTER_ITEMS, JSON.stringify(barterItems));
  loadMyBarterDashboard();
  alert(`Item marked as ${item.status.toUpperCase()}`);
}

/* ---------------- BARTER COMMENTS ---------------- */
let activeBarterId = null;

function openCommentModal(barterId) {
  if (!currentUser) return alert('Please login first.');
  activeBarterId = barterId;

  const modal = document.getElementById('comment-modal');
  const list = document.getElementById('comment-list');
  modal.style.display = 'block';

  const comments = barterComments.filter(c => c.barterId === barterId && !c.parentId);

  list.innerHTML = comments.length
    ? comments.map(c => renderComment(c)).join('')
    : '<div class="card">No comments yet.</div>';

  document.getElementById('post-comment-btn').onclick = () => {
    const text = document.getElementById('new-comment-text').value.trim();
    if (!text) return alert('Enter a comment.');
    postBarterComment(barterId, text);
    document.getElementById('new-comment-text').value = '';
  };
}

function renderComment(comment) {
  const replies = barterComments.filter(r => r.parentId === comment.id);
  return `
    <div class="comment-card" style="border:1px solid #ddd;padding:8px;margin:6px 0;border-radius:6px;">
      <strong>${escapeHtml(comment.userName)}</strong>
      <p>${escapeHtml(comment.text)}</p>
      <small>${comment.date}</small><br>
      <button class="btn small" onclick="replyToComment(${comment.id})">Reply</button>
      ${replies.map(r => `
        <div style="margin-left:20px;border-left:2px solid #ccc;padding-left:8px;">
          <strong>${escapeHtml(r.userName)}</strong>
          <p>${escapeHtml(r.text)}</p>
          <small>${r.date}</small>
        </div>
      `).join('')}
    </div>
  `;
}

function postBarterComment(barterId, text, parentId = null) {
  const newComment = {
    id: Date.now(),
    barterId,
    userId: currentUser.id,
    userName: currentUser.name,
    text,
    parentId,
    date: new Date().toLocaleString()
  };
  barterComments.push(newComment);
  localStorage.setItem(STORAGE.BARTER_COMMENTS, JSON.stringify(barterComments));

  const barter = barterItems.find(b => b.id === barterId);
  if (barter && barter.userId !== currentUser.id) {
    pushNotification(
      barter.userId,
      `${currentUser.name} commented on your barter "${barter.title}"`,
      'comment'
    );
  }

  openCommentModal(barterId);
}

function replyToComment(commentId) {
  const text = prompt('Write your reply:');
  if (!text) return;
  const parent = barterComments.find(c => c.id === commentId);
  if (!parent) return;
  postBarterComment(parent.barterId, text, parent.id);
}

function closeCommentModal() {
  document.getElementById('comment-modal').style.display = 'none';
  activeBarterId = null;
}

/* ---------------- CHAT SYSTEM WITH SELLER & CHATBOT ---------------- */
function startSellerChat(sellerId, productName = '') {
  if (!currentUser) return alert('Please login first to message sellers.');
  if (sellerId === currentUser.id) return alert('You cannot message yourself.');

  const seller = users.find(u => u.id === sellerId);
  if (!seller) return alert('Seller not found.');

  let session = chatSessions.find(s => 
    (s.user1 === currentUser.id && s.user2 === sellerId) || 
    (s.user1 === sellerId && s.user2 === currentUser.id)
  );

  if (!session) {
    session = {
      id: Date.now(),
      user1: currentUser.id,
      user2: sellerId,
      messages: [],
      productContext: productName,
      createdAt: new Date().toISOString()
    };
    chatSessions.push(session);
    localStorage.setItem(STORAGE.CHAT_SESSIONS, JSON.stringify(chatSessions));
  }

  openChatModal(session, seller.name, false);
}

function startChatbot() {
  const session = {
    id: 'chatbot',
    user1: currentUser.id,
    user2: 'chatbot',
    messages: [
      {
        id: Date.now(),
        senderId: 'chatbot',
        text: '👋 Hello! I\'m SwapCart Assistant. How can I help you today? You can ask about:\n• Order issues\n• Delivery\n• Returns & refunds\n• Product questions\n• Barter help',
        timestamp: new Date().toISOString()
      }
    ],
    productContext: 'Customer Service',
    createdAt: new Date().toISOString()
  };

  openChatModal(session, 'SwapCart Assistant 🤖', true);
}

function openChatModal(session, recipientName, isChatbot = false) {
  const modal = document.getElementById('global-chat-modal');
  const chatWithName = document.getElementById('global-chat-with-name');
  const chatMessages = document.getElementById('global-chat-messages');
  const chatInput = document.getElementById('global-chat-input');
  const sendBtn = document.getElementById('global-send-chat-btn');
  const closeBtn = document.getElementById('global-close-chat-btn');

  if (!modal) {
    console.error('Chat modal not found in DOM');
    return;
  }

  chatWithName.textContent = `💬 Chat with ${recipientName}`;
  
  const newSendBtn = sendBtn.cloneNode(true);
  const newCloseBtn = closeBtn.cloneNode(true);
  sendBtn.parentNode.replaceChild(newSendBtn, sendBtn);
  closeBtn.parentNode.replaceChild(newCloseBtn, closeBtn);

  loadChatMessages(session, chatMessages);

  newSendBtn.onclick = () => {
    const text = chatInput.value.trim();
    if (!text) return;
    
    if (isChatbot) {
      sendChatbotMessage(session, text, chatMessages);
    } else {
      sendChatMessage(session, text, chatMessages);
    }
    chatInput.value = '';
  };

  newCloseBtn.onclick = () => {
    modal.style.display = 'none';
  };

  chatInput.onkeydown = (e) => {
    if (e.key === 'Enter' && !e.shiftKey) {
      e.preventDefault();
      newSendBtn.click();
    }
  };

  modal.style.display = 'block';
  chatInput.focus();
}

function loadChatMessages(session, chatMessages) {
  chatMessages.innerHTML = '';
  
  session.messages.forEach(msg => {
    const isMe = msg.senderId === currentUser.id;
    const msgDiv = document.createElement('div');
    msgDiv.style.cssText = `
      margin: 10px 0;
      text-align: ${isMe ? 'right' : 'left'};
    `;
    
    msgDiv.innerHTML = `
      <div style="
        display: inline-block;
        max-width: 70%;
        padding: 10px 14px;
        border-radius: 18px;
        background: ${isMe ? '#5b6ef6' : '#f0f0f0'};
        color: ${isMe ? 'white' : '#333'};
        text-align: left;
        white-space: pre-wrap;
        word-wrap: break-word;
      ">
        ${escapeHtml(msg.text)}
        <div style="font-size: 11px; opacity: 0.7; margin-top: 5px;">
          ${new Date(msg.timestamp).toLocaleTimeString([], {hour: '2-digit', minute:'2-digit'})}
        </div>
      </div>
    `;
    
    chatMessages.appendChild(msgDiv);
  });
  
  chatMessages.scrollTop = chatMessages.scrollHeight;
}

function sendChatMessage(session, text, chatMessages) {
  const message = {
    id: Date.now(),
    senderId: currentUser.id,
    text: text,
    timestamp: new Date().toISOString()
  };

  session.messages.push(message);
  localStorage.setItem(STORAGE.CHAT_SESSIONS, JSON.stringify(chatSessions));
  
  const otherUserId = session.user1 === currentUser.id ? session.user2 : session.user1;
  pushNotification(otherUserId, `New message from ${currentUser.name}`, 'chat');
  
  loadChatMessages(session, chatMessages);
}

function sendChatbotMessage(session, text, chatMessages) {
  const userMessage = {
    id: Date.now(),
    senderId: currentUser.id,
    text: text,
    timestamp: new Date().toISOString()
  };
  
  session.messages.push(userMessage);
  
  const botResponse = generateChatbotResponse(text);
  const botMessage = {
    id: Date.now() + 1,
    senderId: 'chatbot',
    text: botResponse,
    timestamp: new Date().toISOString()
  };
  
  setTimeout(() => {
    session.messages.push(botMessage);
    localStorage.setItem(STORAGE.CHAT_SESSIONS, JSON.stringify(chatSessions));
    loadChatMessages(session, chatMessages);
  }, 1000);
  
  loadChatMessages(session, chatMessages);
}

function generateChatbotResponse(userMessage) {
  const message = userMessage.toLowerCase();
  
  for (const response of chatbotResponses) {
    if (response.keywords.some(keyword => message.includes(keyword))) {
      return response.response;
    }
  }
  
  return "I'm not sure I understand. Could you please rephrase your question? Or contact our support team at support@swapcart.com for specific assistance.";
}

function viewChatSessions() {
  if (!currentUser) return alert('Please login first.');
  
  const mySessions = chatSessions.filter(s => 
    s.user1 === currentUser.id || s.user2 === currentUser.id
  );
  
  if (mySessions.length === 0) {
    alert('No chat sessions yet. Message a seller or start chatting with our assistant!');
    return;
  }
  
  let sessionList = 'Your Chat Sessions:\n\n';
  mySessions.forEach(session => {
    const otherUserId = session.user1 === currentUser.id ? session.user2 : session.user1;
    const otherUser = users.find(u => u.id === otherUserId) || { name: 'SwapCart Assistant' };
    const lastMessage = session.messages[session.messages.length - 1];
    
    sessionList += `💬 ${otherUser.name}`;
    if (session.productContext) sessionList += ` - ${session.productContext}`;
    if (lastMessage) sessionList += `\nLast: ${lastMessage.text.substring(0, 30)}...`;
    sessionList += '\n' + '─'.repeat(40) + '\n';
  });
  
  sessionList += '\nOpen a product page and click "Message Seller" to start new chats.';
  alert(sessionList);
}

/* ---------------- SELLER ---------------- */
function handleAddProduct(e) {
  e.preventDefault();
  if (!currentUser) return alert('Please login first.');

  const name = document.getElementById('seller-product-name').value.trim();
  const description = document.getElementById('seller-product-description').value.trim();
  const price = parseFloat(document.getElementById('seller-product-price').value);
  const qty = parseInt(document.getElementById('seller-product-quantity').value);
  const file = document.getElementById('seller-product-photo').files[0];

  if (!name || !description || isNaN(price) || isNaN(qty)) {
    return alert('Please fill in all product fields.');
  }

  const save = (img = null) => {
    const newP = { 
      id: Date.now(), 
      name, 
      description, 
      price, 
      quantity: qty, 
      image: img, 
      sellerId: currentUser.id, 
      sellerName: currentUser.name,
      status: "available"
    };

    products.push(newP);
    localStorage.setItem(STORAGE.PRODUCTS, JSON.stringify(products));
    document.getElementById('seller-form').reset();
    loadSellerProducts();
    alert('Product added!');
  };

  if (file) {
    const reader = new FileReader();
    reader.onload = e => save(e.target.result);
    reader.readAsDataURL(file);
  } else save();
}

function loadSellerProducts() {
  const list = document.getElementById('seller-products-list');
  if (!list) return;
  list.innerHTML = '';
  const mine = products.filter(p => p.sellerId === (currentUser?.id));
  if (mine.length === 0) return list.innerHTML = '<div class="card">No products yet.</div>';

  mine.forEach(p => {
    const div = document.createElement('div');
    div.className = 'card';
    div.style.marginBottom = '8px';
    div.innerHTML = `
      <div style="display:flex;justify-content:space-between;align-items:center;">
        <div>${escapeHtml(p.name)} - ₱${p.price}</div>
        <button class="icon-btn" onclick="deleteProduct(${p.id})">Delete</button>
      </div>`;
    list.appendChild(div);
  });
}

function deleteProduct(id) {
  products = products.filter(p => p.id !== id);
  localStorage.setItem(STORAGE.PRODUCTS, JSON.stringify(products));
  loadSellerProducts();
}

/* ---------------- FAVORITES ---------------- */
function loadFavorites() {
  const grid = document.getElementById('favorites-grid');
  if (!grid) return;

  if (!currentUser) {
    grid.innerHTML = '<div class="card">Please login to view favorites.</div>';
    return;
  }

  const myFavs = favorites.filter(f => f.userId === currentUser.id);
  if (myFavs.length === 0) {
    grid.innerHTML = '<div class="card">You have no favorite items yet.</div>';
    return;
  }

  const favProducts = products.filter(p => myFavs.some(f => f.productId === p.id));
  grid.innerHTML = '';

  favProducts.forEach(p => {
    const div = document.createElement('div');
    div.className = 'product-card';
    div.innerHTML = `
      <div class="product-media" onclick="viewProduct(${p.id})" style="cursor:pointer;">
        ${p.image ? `<img src="${p.image}" alt="${escapeHtml(p.name)}">` : `<div>${escapeHtml(initials(p.name))}</div>`}
      </div>
      <div class="product-body" onclick="viewProduct(${p.id})" style="cursor:pointer;">
        <div class="product-title">${escapeHtml(p.name)}</div>
        <div class="product-price">₱${Number(p.price).toFixed(2)}</div>
        <div class="product-meta">Seller: ${escapeHtml(p.sellerName || 'SwapCart')}</div>
      </div>
      <div class="product-actions">
        <button class="add-to-cart" onclick="event.stopPropagation(); addToCart(${p.id});">Add to Cart</button>
        <button class="favorite-btn" onclick="event.stopPropagation(); toggleFavorite(${p.id});">
          ${favorites.some(f => f.userId === currentUser?.id && f.productId === p.id) ? '❤️' : '🤍'}
        </button>
        <button class="message-seller-btn" onclick="event.stopPropagation(); startSellerChat(${p.sellerId}, '${escapeHtml(p.name)}');">
          💬 Message Seller
        </button>
      </div>`;
    grid.appendChild(div);
  });
}

/* ---------------- REVIEWS & COMMENTS ---------------- */
if (!STORAGE.REVIEWS) STORAGE.REVIEWS = 'reviews';
let reviews = JSON.parse(localStorage.getItem(STORAGE.REVIEWS)) || [];

function loadProductDetails(productId) {
  const product = products.find(p => p.id === productId);
  const container = document.getElementById('product-details');
  if (!container) return;

  if (!product) {
    container.innerHTML = '<div class="card">Product not found.</div>';
    return;
  }

  const isFav = favorites.some(f => f.userId === currentUser?.id && f.productId === product.id);
  const heart = isFav ? '❤️' : '🤍';

  container.innerHTML = `
    <div class="product-img">
      ${product.image ? `<img src="${product.image}" alt="${escapeHtml(product.name)}">` : `<div>${escapeHtml(product.name)}</div>`}
    </div>
    <div class="product-info">
      <h2>${escapeHtml(product.name)}</h2>
      <div class="product-price">₱${Number(product.price).toFixed(2)}</div>
      <div class="product-meta">Seller: ${escapeHtml(product.sellerName || 'SwapCart')}</div>
      <p>Description: ${escapeHtml(product.description || 'No description provided.')}</p>

      <div style="margin-top:15px; border-top: 1px solid #eee; padding-top: 15px;">
        <h4>Seller Information</h4>
        <p>Seller: ${escapeHtml(product.sellerName)}</p>
        <button class="message-seller-btn" onclick="startSellerChat(${product.sellerId}, '${escapeHtml(product.name)}')" style="margin-right:10px;">
          💬 Message Seller About This Product
        </button>
        <button class="view-seller-btn" onclick="viewSeller(${product.sellerId})">
          👤 View Seller Profile
        </button>
      </div>

      <div style="margin-top:10px;">
        <button class="buy-btn" onclick="buyNow(${product.id})">Buy Now</button>
        <button class="cart-btn" onclick="addToCart(${product.id})">Add to Cart</button>
        <button id="fav-btn" class="icon-btn orange" onclick="toggleFavorite(${product.id}); updateFavoriteIcon(${product.id});">
          ${heart} Favorite
        </button>
      </div>
    </div>
  `;
}

function updateFavoriteIcon(productId) {
  const btn = document.getElementById('fav-btn');
  if (!btn) return;
  const isFav = favorites.some(f => f.userId === currentUser?.id && f.productId === productId);
  btn.innerHTML = `${isFav ? '❤️' : '🤍'} Favorite`;
}

function submitReview() {
  const params = new URLSearchParams(window.location.search);
  const productId = parseInt(params.get('id'));
  if (!currentUser) return alert('Please login first.');

  const text = document.getElementById('review-text').value.trim();
  const rating = parseInt(document.getElementById('review-rating').value);

  if (!text) return alert('Please write a comment.');

  const newReview = {
    id: Date.now(),
    productId,
    userId: currentUser.id,
    userName: currentUser.name,
    rating,
    text,
    date: new Date().toLocaleString()
  };

  reviews.push(newReview);
  localStorage.setItem(STORAGE.REVIEWS, JSON.stringify(reviews));
  document.getElementById('review-text').value = '';
  loadReviews(productId);
}

function loadReviews(productId) {
  const list = document.getElementById('reviews-list');
  if (!list) return;

  const productReviews = reviews.filter(r => r.productId === productId);
  if (productReviews.length === 0) {
    list.innerHTML = '<div class="card">No reviews yet. Be the first to comment!</div>';
    return;
  }

  list.innerHTML = productReviews
    .slice()
    .reverse()
    .map(r => `
      <div style="border-bottom:1px solid #ddd;padding:10px 0;">
        <strong>${escapeHtml(r.userName)}</strong> — ${'⭐'.repeat(r.rating)}
        <p>${escapeHtml(r.text)}</p>
        <small>${r.date}</small>
      </div>
    `)
    .join('');
}

function buyNow(id) {
  addToCart(id);
  window.location.href = 'cart.html';
}

function viewSeller(sellerId) {
  if (!sellerId) return alert('Seller info unavailable.');
  window.location.href = `view-seller.html?id=${sellerId}`;
}

function viewProduct(id) {
  window.location.href = `product.html?id=${id}`;
}

/* ---------------- NOTIFICATIONS COUNTERS ---------------- */
function updateBadges() {
  const cartBadge = document.getElementById('cart-count');
  const favBadge = document.getElementById('fav-count');
  const barterBadge = document.getElementById('barter-count');

  if (currentUser) {
    const cartCount = cart.filter(i => i.userId === currentUser.id).length;
    const favCount = favorites.filter(f => f.userId === currentUser.id).length;
    const barterCount = barterItems.filter(b => b.userId === currentUser.id).length;

    if (cartBadge) cartBadge.textContent = cartCount;
    if (favBadge) favBadge.textContent = favCount;
    if (barterBadge) barterBadge.textContent = barterCount;
  } else {
    if (cartBadge) cartBadge.textContent = 0;
    if (favBadge) favBadge.textContent = 0;
    if (barterBadge) barterBadge.textContent = 0;
  }
}

function refreshAfterAction() {
  updateBadges();
  localStorage.setItem(STORAGE.CART, JSON.stringify(cart));
  localStorage.setItem(STORAGE.FAVORITES, JSON.stringify(favorites));
  localStorage.setItem(STORAGE.BARTER_ITEMS, JSON.stringify(barterItems));
}

document.addEventListener('DOMContentLoaded', updateBadges);

/* ---------------- NOTIFICATION SYSTEM ---------------- */
function showNotification(message, type = 'info') {
  const cont = document.getElementById('notification-container');
  if (!cont) return;

  const el = document.createElement('div');
  el.textContent = message;
  el.style.cssText = `
    padding:12px 16px;
    border-radius:12px;
    color:white;
    font-weight:700;
    animation: fadeInOut 4s ease forwards;
    background:${type === 'chat' ? '#5b6ef6' : type === 'comment' ? '#0fb2a6' : '#333'};
    box-shadow:0 10px 30px rgba(0,0,0,0.15);
  `;
  cont.appendChild(el);
  setTimeout(() => el.remove(), 4000);
}

function pushNotification(targetUserId, message, type) {
  const note = {
    id: Date.now(),
    targetUserId,
    message,
    type,
    date: new Date().toLocaleString(),
    read: false,
  };
  notifications.push(note);
  localStorage.setItem(STORAGE.NOTIFICATIONS, JSON.stringify(notifications));

  if (currentUser && targetUserId === currentUser.id) {
    showNotification(message, type);
  }
}

document.addEventListener('DOMContentLoaded', () => {
  if (!currentUser) return;
  const unread = notifications.filter(n => n.targetUserId === currentUser.id && !n.read);
  unread.forEach(n => showNotification(n.message, n.type));
  notifications = notifications.map(n =>
    n.targetUserId === currentUser.id ? { ...n, read: true } : n
  );
  localStorage.setItem(STORAGE.NOTIFICATIONS, JSON.stringify(notifications));
});

/* ---------------- UTIL ---------------- */
function escapeHtml(str = '') { return str.replace(/[&<>"']/g, s => `&#${s.charCodeAt(0)};`); }
function initials(text = '') { return (text.split(' ').slice(0,2).map(w=>w[0]).join('')).toUpperCase(); }



seller.html
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width,initial-scale=1" />
  <title>SwapCart — Seller Dashboard</title>
  <link rel="stylesheet" href="styles.css" />
</head>
<body>
  <header class="site-header">
    <div class="container topbar">
      <div class="brand"><a href="home.html" style="text-decoration:none;color:#1e00ff;">SwapCart</a></div>
      <div class="actions">
        <a href="index.html" class="icon-btn orange">Home</a>
      </div>
    </div>
  </header>

  <main class="container">
    <h2>Seller Dashboard</h2>
    <div class="seller-grid">
      <div class="card">
        <h3>Add Product</h3>
        <form id="seller-form">
          <input id="seller-product-name" placeholder="Product name" required />
          <textarea id="seller-product-description" placeholder="Product description" rows="3" required></textarea>
          <input id="seller-product-price" placeholder="Price (₱)" type="number" min="1" required />
          <input id="seller-product-quantity" placeholder="Quantity" type="number" min="1" required />
          <input id="seller-product-photo" type="file" accept="image/*" />
          <button class="btn orange">Add Product</button>
        </form>
      </div>

      <div class="card" style="flex:1">
        <h3>Your Products</h3>
        <div id="seller-products-list"></div>
      </div>
    </div>

    <div style="margin-top:16px">
      <h3>Your Barter Proposals</h3>
      <div id="my-barter-proposals"></div>
    </div>
  </main>

  <script src="script.js"></script>
  
</body>
</html>



styles.css
/* ----------------------------------------------------------
   SwapCart — Unique Design & Effects (Full styles.css)
   - New color system (teal → indigo accent)
   - Soft glass + neumorphism mix
   - Subtle motion: elevation, glow, ripple, tilt
   - Accessibility-minded focus states and variable tokens
   ---------------------------------------------------------- */

/* -----------------------
   Theme variables
   ----------------------- */
:root{
  --bg: #f6fbff;                 /* page background */
  --surface: #ffffff;            /* card / surface */
  --muted: #56616a;              /* secondary text */
  --text: #0f1724;               /* primary text */
  --accent-1: #0fb2a6;           /* teal */
  --accent-2: #5b6ef6;           /* indigo */
  --accent-grad: linear-gradient(135deg,var(--accent-1),var(--accent-2));
  --glass: rgba(255,255,255,0.6);
  --soft-shadow: 0 8px 30px rgba(20,30,60,0.06);
  --hard-shadow: 0 18px 50px rgba(12,20,40,0.12);
  --radius-sm: 8px;
  --radius-md: 14px;
  --radius-lg: 20px;
  --ui-gap: 12px;
  --ease: cubic-bezier(.2,.9,.3,1);
  --max-width: 1120px;
  --focus: 3px solid rgba(91,110,246,0.18);
  --glass-border: 1px solid rgba(255,255,255,0.6);
}

/* Dark mode toggle (optional) */
@media (prefers-color-scheme: dark){
  :root{
    --bg: #071627;
    --surface: linear-gradient(180deg, rgba(255,255,255,0.02), rgba(255,255,255,0.01));
    --muted: #9aa6b1;
    --text: #e6f0f8;
    --glass: rgba(255,255,255,0.03);
    --soft-shadow: 0 8px 30px rgba(2,6,12,0.6);
    --hard-shadow: 0 18px 50px rgba(0,0,0,0.6);
    --glass-border: 1px solid rgba(255,255,255,0.04);
    --focus: 3px solid rgba(15,178,166,0.18);
  }
}

/* -----------------------
   Reset + base
   ----------------------- */
*{box-sizing:border-box;margin:0;padding:0}
html,body{height:100%;background:var(--bg);color:var(--text);font-family:Inter,ui-sans-serif,system-ui,-apple-system,"Segoe UI",Roboto,"Helvetica Neue",Arial;}
img{max-width:100%;display:block}
a{color:inherit;text-decoration:none}
.container{max-width:var(--max-width);margin:0 auto;padding:20px;}

/* -----------------------
   Header / topbar
   ----------------------- */
.site-header{
  position: sticky;
  top: 12px;
  z-index: 120;
  backdrop-filter: blur(8px) saturate(120%);
  -webkit-backdrop-filter: blur(8px) saturate(120%);
  background: linear-gradient(180deg, rgba(255,255,255,0.55), rgba(255,255,255,0.40));
  border-radius: 14px;
  margin: 12px auto;
  padding: 12px 18px;
  box-shadow: var(--soft-shadow);
  max-width: calc(var(--max-width) - 40px);
  display:flex;
  gap:12px;
  align-items:center;
}

/* Brand */
.brand{
  display:flex;
  gap:10px;
  align-items:center;
  font-weight:800;
  font-size:20px;
  color:var(--accent-2);
  letter-spacing:0.2px;
}
.brand .logo-mark{
  width:40px;height:40px;border-radius:10px;
  background:var(--accent-grad);
  display:inline-grid;place-items:center;color:#fff;font-weight:900;
  box-shadow: 0 6px 18px rgba(91,110,246,0.14), inset 0 -6px 20px rgba(255,255,255,0.06);
}

/* Search (frosted) */
.search{
  flex:1;display:flex;align-items:center;gap:8px;
}
.search .field{
  flex:1;display:flex;align-items:center;background:var(--glass);border-radius:12px;padding:8px 10px;border:var(--glass-border);
  transition: box-shadow .22s var(--ease), transform .22s var(--ease);
}
.search input{flex:1;border:0;background:transparent;padding:8px 8px;color:var(--text);font-size:14px;outline:none}
.search .btn-search{
  background:transparent;border:0;padding:8px 12px;border-radius:10px;cursor:pointer;font-weight:700;
  position:relative;overflow:hidden;
}

/* ripple on click */
.search .btn-search:after{
  content:"";position:absolute;inset:0;border-radius:inherit;opacity:0;transform:scale(0.9);transition:opacity .22s, transform .28s;
}
.search .btn-search:active:after{opacity:0.06;transform:scale(1)}

/* Action buttons */
.actions{display:flex;gap:8px;align-items:center}
.icon-btn{
  background:var(--surface);border-radius:10px;padding:8px 10px;border:1px solid rgba(10,20,30,0.03);cursor:pointer;
  box-shadow: 0 6px 18px rgba(3,10,18,0.04);
  display:inline-flex;align-items:center;gap:8px;font-weight:700;
}
.icon-btn:focus{outline:var(--focus);outline-offset:3px}

/* -----------------------
   Layout: Sidebar + Main content
   ----------------------- */
.sidebar{
  width:220px;padding:18px;position:fixed;left:18px;top:120px;height:calc(100vh - 140px);
  background:linear-gradient(180deg, rgba(255,255,255,0.85), rgba(255,255,255,0.7));
  border-radius:16px;box-shadow: var(--soft-shadow);backdrop-filter: blur(6px);
}
.sidebar .sidebar-brand{font-size:16px;font-weight:800;color:var(--accent-2);margin-bottom:18px;text-align:center}
.sidebar nav{display:flex;flex-direction:column;gap:8px}
.sidebar nav a{padding:10px;border-radius:10px;font-weight:700;color:var(--muted);transition:all .18s var(--ease)}
.sidebar nav a:hover,.sidebar nav a.active{background:linear-gradient(90deg, rgba(91,110,246,0.12), rgba(15,178,166,0.06));color:var(--text);transform:translateY(-2px);box-shadow:var(--soft-shadow)}

/* main content shifter (gives space for sidebar) */
.main-content{margin-left:260px;padding:28px 20px 60px 20px;}

/* -----------------------
   Category bar / chips
   ----------------------- */
.category-bar{display:flex;gap:8px;align-items:center;margin:6px 0 18px 0;flex-wrap:wrap}
.cat-chip{
  padding:8px 12px;border-radius:999px;background:transparent;border:1px solid rgba(8,12,20,0.03);cursor:pointer;font-weight:700;color:var(--muted);
  transition: transform .18s var(--ease), box-shadow .18s var(--ease);
}
.cat-chip:hover{transform:translateY(-4px);box-shadow:var(--soft-shadow)}
.cat-chip.active{background:var(--accent-grad);color:white;box-shadow:var(--hard-shadow)}

/* -----------------------
   Pages / card system
   ----------------------- */
.page{display:none;padding:18px 0;min-height: calc(100vh - 220px)}
.active-page{display:block}
.card{
  background:var(--surface);border-radius:var(--radius-md);padding:16px;box-shadow:var(--soft-shadow);border:1px solid rgba(10,18,24,0.02);
  transition: transform .18s var(--ease), box-shadow .18s var(--ease);
}
.card:hover{transform:translateY(-6px);box-shadow:var(--hard-shadow)}

/* hero */
.hero{display:flex;gap:18px;align-items:center;justify-content:space-between;padding:18px;background:linear-gradient(90deg, rgba(91,110,246,0.06), rgba(15,178,166,0.03));border-radius:14px}
.hero .title{font-size:20px;font-weight:800;color:var(--accent-2)}
.hero .subtitle{color:var(--muted);font-weight:600}

/* -----------------------
   Products grid
   ----------------------- */
.products-grid{display:grid;grid-template-columns:repeat(auto-fill,minmax(220px,1fr));gap:18px;margin-top:14px}
.product-card{
  background: linear-gradient(180deg, rgba(255,255,255,0.85), rgba(255,255,255,0.98));
  border-radius:16px;overflow:hidden;display:flex;flex-direction:column;min-height:320px;padding:0;border:1px solid rgba(10,18,24,0.02);
  transform-origin:center center;transition: transform .28s var(--ease), box-shadow .28s var(--ease);
  position:relative;
}

/* 3D tilt + hover */
.product-card:hover{
  transform:translateY(-12px) rotateX(2deg) rotateY(-2deg);
  box-shadow: 0 30px 60px rgba(6,12,24,0.14);
}

/* product media with gradient frame */
.product-media{
  height:220px;display:flex;align-items:center;justify-content:center;background:linear-gradient(180deg, rgba(91,110,246,0.06), rgba(15,178,166,0.02));
  position:relative;border-bottom:1px dashed rgba(10,18,24,0.03);
}
.product-media img{width:84%;height:84%;object-fit:contain;transition: transform .6s var(--ease)}
.product-card:hover .product-media img{transform: translateY(-6px) scale(1.02)}

/* product info */
.product-body{padding:14px;display:flex;flex-direction:column;gap:10px;flex:1}
.product-title{font-weight:800;font-size:15px;color:var(--text);min-height:38px}
.product-desc{color:var(--muted);font-size:13px;line-height:1.3}
.product-price{font-weight:900;font-size:18px;color:var(--accent-2)}

/* price & meta row */
.product-meta{display:flex;align-items:center;justify-content:space-between;gap:8px}
.rating{display:inline-flex;gap:6px;align-items:center;color:var(--muted);font-weight:700;font-size:13px}

/* action row with animated CTA */
.product-actions{display:flex;gap:10px;margin-top:8px; flex-wrap: wrap;}
.btn{
  padding:10px 12px;border-radius:12px;border:0;cursor:pointer;font-weight:800;letter-spacing:0.2px;
  transition: transform .14s var(--ease), box-shadow .14s var(--ease);
}
.btn:active{transform:translateY(1px)}
.btn-cta{
  background:var(--accent-2);color:white;box-shadow:0 8px 20px rgba(91,110,246,0.18);
  position:relative;overflow:hidden;
}
/* glow pulse */
.btn-cta:before{
  content:"";position:absolute;inset:-40%;background:radial-gradient(circle at 10% 30%, rgba(255,255,255,0.06), transparent 15%), radial-gradient(circle at 90% 70%, rgba(255,255,255,0.03), transparent 20%);opacity:1;mix-blend-mode:overlay;
}
.btn-ghost{background:transparent;border:1px solid rgba(10,18,24,0.06);color:var(--text)}

/* small badge and ribbon */
.badge{
  position:absolute;top:12px;left:12px;background:var(--accent-1);color:white;padding:6px 8px;border-radius:999px;font-weight:800;font-size:12px;box-shadow:0 6px 18px rgba(15,178,166,0.12)
}
.ribbon{
  position:absolute;top:12px;right:-34px;transform:rotate(25deg);
  background:var(--accent-2);color:white;padding:6px 60px;font-weight:800;font-size:12px;border-radius:8px;box-shadow: 0 8px 28px rgba(91,110,246,0.12)
}

/* -----------------------
   Cart & checkout
   ----------------------- */
.checkout{margin-top:18px;display:flex;flex-direction:column;gap:12px}
.cart-item{display:flex;gap:12px;align-items:center;padding:12px;border-radius:12px;background:linear-gradient(180deg, rgba(255,255,255,0.6), rgba(255,255,255,0.9));border:1px solid rgba(10,18,24,0.02)}
.cart-item img{width:72px;height:72px;object-fit:cover;border-radius:10px;box-shadow:0 6px 20px rgba(10,18,24,0.04)}
.cart-item .meta{flex:1}
.cart-item .price{font-weight:900;color:var(--accent-2)}

/* floating action button (FAB) */
.fab{
  position:fixed;right:22px;bottom:22px;background:var(--accent-1);color:white;border-radius:14px;padding:12px 16px;font-weight:900;box-shadow:0 12px 30px rgba(15,178,166,0.18);cursor:pointer;z-index:140;
  display:inline-flex;gap:10px;align-items:center;
}
.fab:hover{transform:translateY(-6px);box-shadow:0 26px 60px rgba(15,178,166,0.22)}

/* -----------------------
   Modal
   ----------------------- */
.modal{position:fixed;inset:0;display:none;align-items:center;justify-content:center;background:linear-gradient(rgba(6,12,24,0.45),rgba(6,12,24,0.6));padding:28px;z-index:200}
.modal.show{display:flex}
.modal-content{background:var(--surface);width:100%;max-width:920px;border-radius:18px;overflow:hidden;padding:18px;box-shadow:var(--hard-shadow)}

/* -----------------------
   Auth pages (frosted glass)
   ----------------------- */
.auth-page{display:flex;align-items:center;justify-content:center;min-height:calc(100vh - 40px);padding:28px;background:linear-gradient(135deg, rgba(235,251,255,0.6), rgba(245,246,255,0.6))}
.auth-card{max-width:480px;border-radius:18px;padding:28px;background:linear-gradient(180deg, rgba(255,255,255,0.75), rgba(255,255,255,0.9));box-shadow:0 20px 50px rgba(10,18,24,0.06);border:1px solid rgba(255,255,255,0.6)}
.auth-card h2{text-align:center;margin-bottom:10px;font-size:20px;color:var(--text)}
.auth-card input{width:100%;padding:12px;border-radius:12px;border:1px solid rgba(10,18,24,0.04);background:transparent;margin-bottom:12px}
.auth-card .btn{width:100%;padding:12px;border-radius:12px}
.auth-card .btn-primary{background:var(--accent-1);color:white;font-weight:800}
.auth-card .muted{text-align:center;color:var(--muted);font-size:14px}

/* -----------------------
   Accessibility & focus
   ----------------------- */
:focus{outline:none}
button:focus,input:focus,select:focus,textarea:focus{outline:var(--focus);outline-offset:4px;border-radius:10px}

/* -----------------------
   Alerts
   ----------------------- */
.alert{padding:10px;border-radius:12px;font-weight:700}
.alert-success{background:linear-gradient(90deg, rgba(12,167,119,0.12), rgba(12,167,119,0.04));color:#064e3b}
.alert-error{background:linear-gradient(90deg, rgba(220,38,38,0.06), rgba(220,38,38,0.02));color:#881337}

/* -----------------------
   Chat & Messaging Styles
   ----------------------- */
.message-seller-btn {
  background: #0fb2a6;
  color: white;
  border: none;
  padding: 8px 12px;
  border-radius: 8px;
  cursor: pointer;
  font-weight: 700;
  margin-top: 8px;
  width: 100%;
  transition: all 0.2s ease;
  font-size: 12px;
}

.message-seller-btn:hover {
  background: #0d9c91;
  transform: translateY(-2px);
}

.view-seller-btn {
  background: #6c757d;
  color: white;
  border: none;
  padding: 8px 12px;
  border-radius: 8px;
  cursor: pointer;
  font-weight: 700;
  margin-top: 8px;
  width: 100%;
  transition: all 0.2s ease;
  font-size: 12px;
}

.view-seller-btn:hover {
  background: #5a6268;
  transform: translateY(-2px);
}

.chat-bot-btn {
  position: fixed;
  bottom: 20px;
  right: 20px;
  background: var(--accent-grad);
  color: white;
  border: none;
  border-radius: 50%;
  width: 60px;
  height: 60px;
  font-size: 24px;
  cursor: pointer;
  box-shadow: 0 8px 25px rgba(91, 110, 246, 0.3);
  z-index: 1000;
  transition: all 0.3s ease;
}

.chat-bot-btn:hover {
  transform: scale(1.1);
  box-shadow: 0 12px 35px rgba(91, 110, 246, 0.4);
}

.view-chats-btn {
  background: #6c757d;
  color: white;
  border: none;
  padding: 12px 16px;
  border-radius: 30px;
  cursor: pointer;
  font-weight: 700;
  position: fixed;
  bottom: 90px;
  right: 20px;
  z-index: 999;
  box-shadow: 0 4px 15px rgba(0,0,0,0.2);
  transition: all 0.3s ease;
}

.view-chats-btn:hover {
  background: #5a6268;
  transform: translateY(-2px);
}

/* Chat Modal Improvements */
#global-chat-modal .modal-content {
  max-height: 80vh;
  display: flex;
  flex-direction: column;
  max-width: 500px;
}

#global-chat-messages {
  flex: 1;
  min-height: 300px;
  max-height: 400px;
  border: 1px solid rgba(0,0,0,0.1);
  border-radius: 10px;
  padding: 15px;
  background: #fafafa;
  margin-bottom: 15px;
}

#global-chat-input {
  width: 100%;
  padding: 12px;
  border: 1px solid #ddd;
  border-radius: 8px;
  resize: vertical;
  font-family: inherit;
  margin-bottom: 10px;
}

.add-to-cart {
  background: var(--accent-2);
  color: white;
  border: none;
  padding: 8px 12px;
  border-radius: 8px;
  cursor: pointer;
  font-weight: 700;
  transition: all 0.2s ease;
}

.add-to-cart:hover {
  background: #4a56d4;
  transform: translateY(-2px);
}

.favorite-btn {
  background: #ff6b6b;
  color: white;
  border: none;
  padding: 8px 12px;
  border-radius: 8px;
  cursor: pointer;
  font-weight: 700;
  transition: all 0.2s ease;
}

.favorite-btn:hover {
  background: #ff5252;
  transform: translateY(-2px);
}

/* -----------------------
   Small utilities
   ----------------------- */
.row{display:flex;gap:12px;align-items:center}
.col{display:flex;flex-direction:column;gap:8px}
.center{display:grid;place-items:center}
.small{font-size:13px;color:var(--muted)}
.kicker{font-size:12px;color:var(--muted);font-weight:800;text-transform:uppercase;letter-spacing:1.2px}

/* -----------------------
   Responsive adjustments
   ----------------------- */
@media (max-width:1000px){
  .sidebar{display:none}
  .main-content{margin-left:0;padding:20px}
  .site-header{top:8px;border-radius:12px;padding:10px}
  .products-grid{grid-template-columns:repeat(auto-fill,minmax(180px,1fr))}
  .product-media{height:160px}
}

@media (max-width:520px){
  .hero{flex-direction:column;align-items:flex-start;gap:12px}
  .product-card{min-height:280px}
  .brand{font-size:18px}
  .product-actions {
    flex-direction: column;
  }
  .message-seller-btn, .view-seller-btn {
    width: 100%;
  }
}

/* -----------------------
   Optional small JS-free animations (pure CSS)
   - subtle float for hero accent
   ----------------------- */
@keyframes floaty{
  0%{transform:translateY(0)}
  50%{transform:translateY(-6px)}
  100%{transform:translateY(0)}
}
.hero .title{animation:floaty 6s var(--ease) infinite}

@keyframes fadeInOut {
  0% { opacity: 0; transform: translateY(-10px); }
  10% { opacity: 1; transform: translateY(0); }
  90% { opacity: 1; transform: translateY(0); }
  100% { opacity: 0; transform: translateY(-10px); }
}

/* -----------------------
   End of stylesheet
   ----------------------- */



sw.js
const CACHE_NAME = 'swapcart-cache-v1';
const ASSETS = [
  '/',
  '/index.html',
  '/styles.css',
  '/script.js',
  '/manifest.json'
];

self.addEventListener('install', event => {
  event.waitUntil(caches.open(CACHE_NAME).then(cache => cache.addAll(ASSETS)));
  self.skipWaiting();
});

self.addEventListener('activate', event => {
  event.waitUntil(
    caches.keys().then(keys => Promise.all(keys.filter(k => k !== CACHE_NAME).map(k => caches.delete(k))))
  );
  self.clients.claim();
});

self.addEventListener('fetch', event => {
  event.respondWith(caches.match(event.request).then(resp => resp || fetch(event.request).catch(() => caches.match('/index.html'))));
});



user.html
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>SwapCart — User Profile</title>
  <link rel="stylesheet" href="styles.css" />
  <style>
    body { background:#fafafa; font-family:Arial, sans-serif; }

    .user-card {
      max-width: 900px;
      margin: 40px auto;
      background: #fff;
      border-radius: 10px;
      box-shadow: 0 2px 6px rgba(0,0,0,0.1);
      padding: 30px;
      display: flex;
      flex-wrap: wrap;
      gap: 30px;
    }

    .user-photo {
      width: 150px;
      height: 150px;
      border-radius: 50%;
      object-fit: cover;
      border: 2px solid #ddd;
    }

    .user-info { flex: 1; }
    .user-info h2 { margin: 0; color:#333; }
    .user-info p { margin: 5px 0; color:#666; }

    .action-buttons {
      margin-top: 10px;
      display: flex;
      gap: 10px;
      flex-wrap: wrap;
    }

    .follow-btn, .chat-btn {
      background: #ff6a00;
      color: #fff;
      border: none;
      border-radius: 5px;
      padding: 8px 15px;
      cursor: pointer;
    }
    .follow-btn.following {
      background: #777;
    }

    .chat-section {
      max-width: 800px;
      margin: 30px auto;
      background: #fff;
      border-radius: 10px;
      padding: 20px;
      box-shadow: 0 2px 6px rgba(0,0,0,0.1);
    }
    .chat-messages {
      height: 250px;
      overflow-y: auto;
      border: 1px solid #eee;
      border-radius: 5px;
      padding: 10px;
      margin-bottom: 10px;
      background: #fafafa;
    }
    .msg {
      padding: 6px 10px;
      margin-bottom: 6px;
      border-radius: 8px;
      display: inline-block;
      max-width: 70%;
      word-wrap: break-word;
    }
    .msg.me {
      background: #ff6a00;
      color: #fff;
      align-self: flex-end;
      float: right;
      clear: both;
    }
    .msg.them {
      background: #eaeaea;
      color: #333;
      float: left;
      clear: both;
    }
    .chat-input {
      display: flex;
      gap: 10px;
    }
    .chat-input input {
      flex: 1;
      padding: 8px;
      border-radius: 5px;
      border: 1px solid #ccc;
    }
    .chat-input button {
      background: #ff6a00;
      color: #fff;
      border: none;
      border-radius: 5px;
      padding: 8px 15px;
      cursor: pointer;
    }

    .product-list {
      max-width: 900px;
      margin: 30px auto;
    }
    .product-card {
      border: 1px solid #eee;
      border-radius: 8px;
      padding: 10px;
      margin-bottom: 10px;
      background: #fff;
      cursor: pointer;
    }
    .product-card:hover {
      box-shadow: 0 0 5px rgba(0,0,0,0.1);
    }
  </style>
</head>
<body>
  <header class="site-header">
    <div class="container topbar">
      <div class="brand"><a href="index.html" style="text-decoration:none;color:#2200ff;">SwapCart</a></div>
      <div class="actions">
        <a href="index.html" class="icon-btn orange">Home</a>
        <a href="cart.html" class="icon-btn orange">Cart</a>
        <a href="barter.html" class="icon-btn orange">Barter</a>
        <a href="seller.html" class="icon-btn orange">Seller</a>
        <a href="profile.html" class="icon-btn orange">My Profile</a>
      </div>
    </div>
  </header>

  <main>
    <div id="user-details" class="user-card"></div>
    <div id="seller-products" class="product-list"></div>

    <div id="chat-area" class="chat-section" style="display:none;">
      <h3>Private Chat</h3>
      <div id="chat-messages" class="chat-messages"></div>
      <div class="chat-input">
        <input id="chat-input" placeholder="Type a message...">
        <button id="chat-send">Send</button>
      </div>
    </div>
  </main>

  <script src="script.js"></script>
  <script>
    document.addEventListener('DOMContentLoaded', () => {
      const STORAGE = {
        USERS: 'users',
        CURRENT_USER: 'currentUser',
        PRODUCTS: 'products',
        MESSAGES: 'messages',
        FOLLOWS: 'follows'
      };

      const currentUser = JSON.parse(localStorage.getItem(STORAGE.CURRENT_USER));
      const users = JSON.parse(localStorage.getItem(STORAGE.USERS)) || [];
      const products = JSON.parse(localStorage.getItem(STORAGE.PRODUCTS)) || [];
      const messages = JSON.parse(localStorage.getItem(STORAGE.MESSAGES)) || [];
      let follows = JSON.parse(localStorage.getItem(STORAGE.FOLLOWS)) || [];

      const params = new URLSearchParams(window.location.search);
      const userId = parseInt(params.get('id'));
      const user = users.find(u => u.id === userId);
      const container = document.getElementById('user-details');

      if (!user) {
        container.innerHTML = '<div class="card">User not found.</div>';
        return;
      }

      // Header Info
      container.innerHTML = `
        <img src="${user.photo || 'default-avatar.png'}" class="user-photo" alt="${user.name}">
        <div class="user-info">
          <h2>${user.name}</h2>
          <p><strong>Email:</strong> ${user.email}</p>
          <p><strong>Phone:</strong> ${user.phone || '—'}</p>
          <p><strong>Gender:</strong> ${user.gender || '—'}</p>
          <p><strong>Date of Birth:</strong> ${user.dob || '—'}</p>
          <div class="action-buttons" id="user-actions"></div>
        </div>
      `;

      // Buttons: Follow & Chat
      const actions = document.getElementById('user-actions');
      if (currentUser && currentUser.id !== userId) {
        const isFollowing = follows.some(f => f.followerId === currentUser.id && f.followedId === userId);
        const followBtn = document.createElement('button');
        followBtn.className = 'follow-btn' + (isFollowing ? ' following' : '');
        followBtn.textContent = isFollowing ? 'Following' : 'Follow';
        followBtn.onclick = () => toggleFollow(followBtn);
        actions.appendChild(followBtn);

        const chatBtn = document.createElement('button');
        chatBtn.className = 'chat-btn';
        chatBtn.textContent = 'Message';
        chatBtn.onclick = () => openChat();
        actions.appendChild(chatBtn);
      }

      // Seller Products
      const userProducts = products.filter(p => p.sellerId === userId);
      const list = document.getElementById('seller-products');
      if (userProducts.length > 0) {
        list.innerHTML = `<h3>Items Listed by ${user.name}</h3>`;
        userProducts.forEach(p => {
          const el = document.createElement('div');
          el.className = 'product-card';
          el.innerHTML = `<strong>${p.name}</strong><br>₱${p.price.toFixed(2)} • ${p.category}`;
          el.onclick = () => viewProduct(p.id);
          list.appendChild(el);
        });
      } else {
        list.innerHTML = `<p>${user.name} has not listed any products yet.</p>`;
      }

      // FOLLOW FEATURE
      function toggleFollow(btn) {
        const isFollowing = follows.some(f => f.followerId === currentUser.id && f.followedId === userId);
        if (isFollowing) {
          follows = follows.filter(f => !(f.followerId === currentUser.id && f.followedId === userId));
          btn.classList.remove('following');
          btn.textContent = 'Follow';
        } else {
          follows.push({ followerId: currentUser.id, followedId: userId });
          btn.classList.add('following');
          btn.textContent = 'Following';
        }
        localStorage.setItem(STORAGE.FOLLOWS, JSON.stringify(follows));
      }

      // CHAT FEATURE
      const chatArea = document.getElementById('chat-area');
      const chatMessages = document.getElementById('chat-messages');
      const chatInput = document.getElementById('chat-input');
      const chatSend = document.getElementById('chat-send');

      function openChat() {
        chatArea.style.display = 'block';
        loadMessages();
      }

      chatSend.addEventListener('click', sendMessage);
      chatInput.addEventListener('keydown', e => {
        if (e.key === 'Enter') sendMessage();
      });

      function sendMessage() {
        const text = chatInput.value.trim();
        if (!text) return;
        const msg = {
          id: Date.now(),
          senderId: currentUser.id,
          receiverId: userId,
          text,
          timestamp: new Date().toISOString()
        };
        messages.push(msg);
        localStorage.setItem(STORAGE.MESSAGES, JSON.stringify(messages));
        chatInput.value = '';
        loadMessages();
      }

      function loadMessages() {
        chatMessages.innerHTML = '';
        const thread = messages.filter(m =>
          (m.senderId === currentUser.id && m.receiverId === userId) ||
          (m.senderId === userId && m.receiverId === currentUser.id)
        );
        thread.sort((a,b) => new Date(a.timestamp) - new Date(b.timestamp));
        thread.forEach(m => {
          const el = document.createElement('div');
          el.className = 'msg ' + (m.senderId === currentUser.id ? 'me' : 'them');
          el.textContent = m.text;
          chatMessages.appendChild(el);
        });
        chatMessages.scrollTop = chatMessages.scrollHeight;
      }
    });
  </script>
</body>
</html>



view-seller.html
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width,initial-scale=1" />
  <title>View Seller — SwapCart</title>
  <link rel="stylesheet" href="styles.css" />
  <style>
    .seller-header {
      background: #fff;
      border-radius: 10px;
      padding: 20px;
      margin-bottom: 20px;
      box-shadow: 0 2px 6px rgba(0,0,0,0.1);
    }
    .seller-products {
      display: grid;
      grid-template-columns: repeat(auto-fill, minmax(200px, 1fr));
      gap: 20px;
    }
  </style>
</head>
<body>
  <header class="site-header">
    <div class="container topbar">
      <div class="brand"><a href="index.html" style="text-decoration:none;color:#1500ff;">SwapCart</a></div>
      <div class="actions">
        <a href="index.html" class="icon-btn orange">Home</a>
      </div>
    </div>
  </header>

  <main class="container">
    <div class="seller-header">
      <h2 id="seller-name"></h2>
      <p id="seller-email"></p>
      <button class="message-seller-btn" onclick="messageThisSeller()" style="margin-top:10px;">
        💬 Message This Seller
      </button>
    </div>

    <h3>🛍️ Seller's Products</h3>
    <div id="seller-products" class="seller-products"></div>
  </main>

  <!-- Global Chat Modal -->
  <div id="global-chat-modal" class="modal" style="display:none;">
    <div class="modal-content card" style="max-width:600px;margin:auto;">
      <h3 id="global-chat-with-name">Chat</h3>
      <div id="global-chat-messages" style="max-height:300px;overflow-y:auto;border:1px solid #ccc;padding:10px;margin-bottom:10px;"></div>
      <textarea id="global-chat-input" rows="2" placeholder="Type your message..."></textarea>
      <button class="btn orange" id="global-send-chat-btn">Send</button>
      <button class="btn" id="global-close-chat-btn">Close</button>
    </div>
  </div>

  <script src="script.js"></script>
  <script>
    let currentSellerId = null;

    document.addEventListener('DOMContentLoaded', () => {
      const params = new URLSearchParams(window.location.search);
      const sellerId = parseInt(params.get('id'));
      currentSellerId = sellerId;

      const users = JSON.parse(localStorage.getItem('users')) || [];
      const products = JSON.parse(localStorage.getItem('products')) || [];

      const seller = users.find(u => u.id === sellerId);
      const list = document.getElementById('seller-products');

      if (!seller) {
        document.getElementById('seller-name').textContent = 'Seller not found.';
        return;
      }

      document.getElementById('seller-name').textContent = seller.name;
      document.getElementById('seller-email').textContent = `📧 ${seller.email}`;

      const sellerProducts = products.filter(p => p.sellerId === sellerId);

      if (sellerProducts.length === 0) {
        list.innerHTML = '<div class="card">No products yet from this seller.</div>';
        return;
      }

      list.innerHTML = sellerProducts.map(p => `
        <div class="product-card" onclick="viewProduct(${p.id})">
          <div class="product-media">
            ${p.image ? `<img src="${p.image}" alt="${p.name}">` : `<div>${p.name}</div>`}
          </div>
          <div class="product-body">
            <div class="product-title">${p.name}</div>
            <div class="product-price">₱${Number(p.price).toFixed(2)}</div>
          </div>
        </div>
      `).join('');
    });

    function messageThisSeller() {
      if (currentSellerId) {
        startSellerChat(currentSellerId, 'General Inquiry');
      }
    }
  </script>
  
</body>
</html>







now here are my all codes  turo mo nga sakin kung pano ko ma coconnect to sa infinity free like ano idadagdag ko ganun?


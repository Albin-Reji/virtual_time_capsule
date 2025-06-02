<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Virtual Time Capsule</title>
  <style>
    /* Reset and Base Styles */
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    body {
      font-family: 'Segoe UI', system-ui, sans-serif;
      line-height: 1.6;
      color: #2D3748;
    }

    .container {
      width: 90%;
      max-width: 1200px;
      margin: 0 auto;
    }

    /* Updated color gradient */
    .text-gradient {
      background: linear-gradient(135deg, #6B46C1 0%, #805AD5 100%);
      -webkit-background-clip: text;
      -webkit-text-fill-color: transparent;
      background-clip: text;
    }

    .card {
      background: white;
      border-radius: 16px;
      padding: 2rem;
      box-shadow: 0 4px 6px rgba(107, 70, 193, 0.1);
      transition: transform 0.3s ease, box-shadow 0.3s ease;
    }

    .card:hover {
      transform: translateY(-5px);
      box-shadow: 0 8px 12px rgba(107, 70, 193, 0.2);
    }

    /* Hero Section with new gradient */
    .hero {
      position: relative;
      background: linear-gradient(135deg, #6B46C1 0%, #805AD5 100%);
      color: white;
      padding: 120px 0 80px;
      overflow: hidden;
    }

    .hero::before {
      content: '';
      position: absolute;
      top: 0;
      left: 0;
      right: 0;
      bottom: 0;
      background: 
        linear-gradient(45deg, rgba(255,255,255,0.1) 25%, transparent 25%) -20px 0,
        linear-gradient(-45deg, rgba(255,255,255,0.1) 25%, transparent 25%) -20px 0;
      background-size: 40px 40px;
      animation: moveBackground 60s linear infinite;
    }

    @keyframes moveBackground {
      from { background-position: 0 0; }
      to { background-position: 40px 40px; }
    }

    .hero-content {
      position: relative;
      text-align: center;
      max-width: 800px;
      margin: 0 auto;
    }

    .hero h1 {
      font-size: 3.5rem;
      font-weight: 800;
      margin-bottom: 1.5rem;
      line-height: 1.2;
    }

    .hero p {
      font-size: 1.25rem;
      margin-bottom: 2rem;
      opacity: 0.9;
    }

    .btn {
      display: inline-block;
      padding: 1rem 2rem;
      border-radius: 50px;
      text-decoration: none;
      font-weight: 600;
      transition: all 0.3s ease;
    }

    .btn-primary {
      background: white;
      color: #6B46C1;
    }

    .btn-primary:hover {
      transform: scale(1.05);
      box-shadow: 0 4px 12px rgba(0, 0, 0, 0.15);
    }

    .btn-outline {
      border: 2px solid white;
      color: white;
      margin-left: 1rem;
    }

    .btn-outline:hover {
      background: white;
      color: #6B46C1;
    }

    /* Features Section */
    .features {
      padding: 100px 0;
      background: #F7FAFC;
    }

    .features-grid {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
      gap: 2rem;
      margin-top: 3rem;
    }

    .feature-card {
      text-align: center;
      padding: 2rem;
    }

    .feature-icon {
      width: 80px;
      height: 80px;
      margin: 0 auto 1.5rem;
      background: linear-gradient(135deg, #6B46C1 0%, #805AD5 100%);
      border-radius: 50%;
      display: flex;
      align-items: center;
      justify-content: center;
      color: white;
      font-size: 2rem;
    }

    /* Testimonials with updated background */
    .testimonials {
      background: linear-gradient(135deg, #6B46C1 0%, #805AD5 100%);
      color: white;
      padding: 100px 0;
    }

    .testimonial-grid {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
      gap: 2rem;
      margin-top: 3rem;
    }

    .testimonial-card {
      background: rgba(255, 255, 255, 0.1);
      backdrop-filter: blur(10px);
      border-radius: 16px;
      padding: 2rem;
    }

    .testimonial-content {
      font-style: italic;
      margin-bottom: 1rem;
    }

    /* CTA Section */
    .cta {
      padding: 100px 0;
      text-align: center;
      background: #F7FAFC;
    }

    /* Footer with darker background */
    footer {
      background: #1A1A2E;
      color: white;
      padding: 60px 0 30px;
    }

    .footer-grid {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
      gap: 2rem;
      margin-bottom: 3rem;
    }

    .footer-links h4 {
      margin-bottom: 1rem;
      color: #805AD5;
    }

    .footer-links ul {
      list-style: none;
    }

    .footer-links a {
      color: white;
      text-decoration: none;
      opacity: 0.8;
      transition: opacity 0.3s ease;
    }

    .footer-links a:hover {
      opacity: 1;
      color: #805AD5;
    }

    .copyright {
      text-align: center;
      padding-top: 2rem;
      border-top: 1px solid rgba(255, 255, 255, 0.1);
    }

    /* Responsive Design */
    @media (max-width: 768px) {
      .hero h1 {
        font-size: 2.5rem;
      }

      .btn {
        display: block;
        margin: 1rem auto;
        width: 80%;
        text-align: center;
      }

      .btn-outline {
        margin-left: 0;
      }
    }
  </style>
</head>
<body>
  <!-- Rest of the HTML remains exactly the same -->
  <!-- Hero Section -->
  <section class="hero">
    <div class="container">
      <div class="hero-content">
        <h1>Preserve Your Memories for the Future</h1>
        <p>Create a digital time capsule to cherish and share life's precious moments with future generations.</p>
        <div class="hero-buttons">
          <a href="/register" class="btn btn-primary">Register with Capsule</a>
          <a href="/login" class="btn btn-outline">Sign In</a>
        </div>
      </div>
    </div>
  </section>

  <!-- Features Section -->
  <section class="features">
    <div class="container">
      <h2 class="text-gradient" style="text-align: center; font-size: 2.5rem; margin-bottom: 1rem;">Why Choose Virtual Time Capsule?</h2>
      <p style="text-align: center; max-width: 600px; margin: 0 auto; color: #666;">The most secure and intuitive way to preserve your digital memories for generations to come.</p>
      <div class="features-grid">
        <div class="card feature-card">
          <div class="feature-icon">🔒</div>
          <h3>Bank-Level Security</h3>
          <p>Your memories are encrypted and stored with the highest security standards.</p>
        </div>
        <div class="card feature-card">
          <div class="feature-icon">🎨</div>
          <h3>Beautiful Themes</h3>
          <p>Choose from dozens of professionally designed themes for your capsule.</p>
        </div>
        <div class="card feature-card">
          <div class="feature-icon">🌐</div>
          <h3>Share Anywhere</h3>
          <p>Share your capsule with loved ones anywhere in the world.</p>
        </div>
      </div>
    </div>
  </section>

  <!-- How It Works Section -->
  <section class="how-it-works" id="learn-more">
    <div class="container">
      <h2 class="text-gradient" style="text-align: center; font-size: 2.5rem; margin-bottom: 1rem;">How It Works</h2>
      <div class="steps">
        <div class="step card">
          <h3>1. Create</h3>
          <p>Upload your photos, videos, and messages to your capsule.</p>
        </div>
        <div class="step card">
          <h3>2. Customize</h3>
          <p>Add themes, music, and personal touches to make it special.</p>
        </div>
        <div class="step card">
          <h3>3. Schedule</h3>
          <p>Set when your capsule will be revealed to its recipients.</p>
        </div>
      </div>
    </div>
  </section>

  <!-- Testimonials Section -->
  <section class="testimonials">
    <div class="container">
      <h2 style="text-align: center; font-size: 2.5rem; margin-bottom: 3rem;">What People Are Saying</h2>
      <div class="testimonial-grid">
        <div class="testimonial-card">
          <p class="testimonial-content">"Opening our wedding time capsule on our 10th anniversary was magical. All those memories came flooding back!"</p>
          <div class="testimonial-author">- Sarah & John</div>
        </div>
        <div class="testimonial-card">
          <p class="testimonial-content">"I created a capsule for my daughter's 18th birthday. It's the perfect way to share our family's story."</p>
          <div class="testimonial-author">- Emily R.</div>
        </div>
        <div class="testimonial-card">
          <p class="testimonial-content">"The perfect blend of technology and sentiment. It's like a digital treasure chest for our memories."</p>
          <div class="testimonial-author">- Michael T.</div>
        </div>
      </div>
    </div>
  </section>

  <!-- CTA Section -->
  <section class="cta">
    <div class="container">
      <h2 class="text-gradient" style="font-size: 2.5rem; margin-bottom: 1rem;">Start Your Time Capsule Today</h2>
      <p style="margin-bottom: 2rem; color: #666;">Join thousands of families preserving their precious memories.</p>
      <a href="#start" class="btn btn-primary" style="background: linear-gradient(135deg, #6B46C1 0%, #805AD5 100%); color: white;">Get Started for Free</a>
    </div>
  </section>

  <!-- Footer -->
  <footer>
    <div class="container">
      <div class="footer-grid">
        <div class="footer-links">
          <h4>Company</h4>
          <ul>
            <li><a href="#about">About Us</a></li>
            <li><a href="#careers">Careers</a></li>
            <li><a href="#press">Press</a></li>
          </ul>
        </div>
        <div class="footer-links">
          <h4>Product</h4>
          <ul>
            <li><a href="#features">Features</a></li>
            <li><a href="#pricing">Pricing</a></li>
            <li><a href="#security">Security</a></li>
          </ul>
        </div>
        <div class="footer-links">
          <h4>Resources</h4>
          <ul>
            <li><a href="#blog">Blog</a></li>
            <li><a href="#help">Help Center</a></li>
            <li><a href="#guides">Guides</a></li>
          </ul>
        </div>
        <div class="footer-links">
          <h4>Legal</h4>
          <ul>
            <li><a href="#privacy">Privacy Policy</a></li>
            <li><a href="#terms">Terms of Service</a></li>
            <li><a href="#cookies">Cookie Policy</a></li>
          </ul>
        </div>
      </div>
      <div class="copyright">
        <p>&copy; 2024 Virtual Time Capsule. All rights reserved.</p>
      </div>
    </div>
  </footer>
</body>
</html>
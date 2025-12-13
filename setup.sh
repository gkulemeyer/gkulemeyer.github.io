#!/usr/bin/env bash
set -e

echo "Creating bilingual site structure..."

mkdir -p es

####################
# HOME (EN)
####################
cat > index.md << 'EOF'
![Profile photo](/assets/img/me.jpg){: width="180px" style="border-radius: 50%;"}

<nav style="display:flex; justify-content: space-between; align-items:center; padding: 0.5rem 0; border-bottom: 1px solid #e5e5e5;">
  <div><strong>Guillermo Kulemeyer</strong></div>
  <div>
    <a href="/" style="margin-right: 1rem;">Home</a>
    <a href="/projects" style="margin-right: 1rem;">Projects</a>
    <a href="/cv" style="margin-right: 1rem;">CV</a>
    <span>|</span>
    <a href="/" style="margin-left: 1rem;">EN</a>
    <a href="/es" style="margin-left: 0.5rem;">ES</a>
  </div>
</nav>

# Guillermo Manuel Kulemeyer

PhD Candidate · Machine Learning · Bioinformatics · RNA

---

I am a **PhD candidate working at the intersection of machine learning and bioinformatics**, with a background in **Physics**. My main interests lie in **deep learning models for biological sequences**, especially methods that can learn meaningful representations from **limited and noisy data**.

I enjoy working on problems that combine **theory, modeling, and computation**, with particular interest in **generative approaches** and **sequence-based neural architectures**. Most of my work is developed in **Python using PyTorch**.
EOF

####################
# CV (EN)
####################
cat > cv.md << 'EOF'
<nav style="display:flex; justify-content: space-between; align-items:center; padding: 0.5rem 0; border-bottom: 1px solid #e5e5e5;">
  <div><strong>Guillermo Kulemeyer</strong></div>
  <div>
    <a href="/" style="margin-right: 1rem;">Home</a>
    <a href="/projects" style="margin-right: 1rem;">Projects</a>
    <a href="/cv" style="margin-right: 1rem;">CV</a>
    <span>|</span>
    <a href="/" style="margin-left: 1rem;">EN</a>
    <a href="/es/cv" style="margin-left: 0.5rem;">ES</a>
  </div>
</nav>

# Curriculum Vitae

[Download full CV (PDF)](/assets/cv/CV_Kulemeyer_122025.pdf)
EOF

####################
# PROJECTS (EN)
####################
cat > projects.md << 'EOF'
<nav style="display:flex; justify-content: space-between; align-items:center; padding: 0.5rem 0; border-bottom: 1px solid #e5e5e5;">
  <div><strong>Guillermo Kulemeyer</strong></div>
  <div>
    <a href="/" style="margin-right: 1rem;">Home</a>
    <a href="/projects" style="margin-right: 1rem;">Projects</a>
    <a href="/cv" style="margin-right: 1rem;">CV</a>
    <span>|</span>
    <a href="/" style="margin-left: 1rem;">EN</a>
    <a href="/es/projects" style="margin-left: 0.5rem;">ES</a>
  </div>
</nav>

# Projects

## RNA Sequence–Structure Modeling
Deep learning models for RNA secondary structure and base-pairing prediction using PyTorch.

## Generative Models
Diffusion models in biological sequences.
EOF

####################
# HOME (ES)
####################
cat > es/index.md << 'EOF'
![Foto de perfil](/assets/img/me.jpg){: width="180px" style="border-radius: 50%;"}

<nav style="display:flex; justify-content: space-between; align-items:center; padding: 0.5rem 0; border-bottom: 1px solid #e5e5e5;">
  <div><strong>Guillermo Kulemeyer</strong></div>
  <div>
    <a href="/es" style="margin-right: 1rem;">Inicio</a>
    <a href="/es/projects" style="margin-right: 1rem;">Proyectos</a>
    <a href="/es/cv" style="margin-right: 1rem;">CV</a>
    <span>|</span>
    <a href="/" style="margin-left: 1rem;">EN</a>
    <a href="/es" style="margin-left: 0.5rem;">ES</a>
  </div>
</nav>

# Guillermo Manuel Kulemeyer

Doctorando · Aprendizaje Automático · Bioinformática · ARN

---

Soy **doctorando** y trabajo en la intersección entre **aprendizaje automático y bioinformática**, con formación de base en **Física**. Mis principales intereses se centran en **modelos de aprendizaje profundo para secuencias biológicas**, especialmente aquellos capaces de aprender representaciones útiles a partir de **datos limitados y ruidosos**.

Me interesa abordar problemas que combinan **teoría, modelado y computación**, con énfasis en **enfoques generativos** y **arquitecturas neuronales basadas en secuencias**. Desarrollo la mayor parte de mi trabajo en **Python con PyTorch**.
EOF

####################
# CV (ES)
####################
cat > es/cv.md << 'EOF'
<nav style="display:flex; justify-content: space-between; align-items:center; padding: 0.5rem 0; border-bottom: 1px solid #e5e5e5;">
  <div><strong>Guillermo Kulemeyer</strong></div>
  <div>
    <a href="/es" style="margin-right: 1rem;">Inicio</a>
    <a href="/es/projects" style="margin-right: 1rem;">Proyectos</a>
    <a href="/es/cv" style="margin-right: 1rem;">CV</a>
    <span>|</span>
    <a href="/cv" style="margin-left: 1rem;">EN</a>
    <a href="/es/cv" style="margin-left: 0.5rem;">ES</a>
  </div>
</nav>

# Curriculum Vitae

[Descargar CV completo (PDF)](/assets/cv/CV_Kulemeyer_122025.pdf)
EOF

####################
# PROJECTS (ES)
####################
cat > es/projects.md << 'EOF'
<nav style="display:flex; justify-content: space-between; align-items:center; padding: 0.5rem 0; border-bottom: 1px solid #e5e5e5;">
  <div><strong>Guillermo Kulemeyer</strong></div>
  <div>
    <a href="/es" style="margin-right: 1rem;">Inicio</a>
    <a href="/es/projects" style="margin-right: 1rem;">Proyectos</a>
    <a href="/es/cv" style="margin-right: 1rem;">CV</a>
    <span>|</span>
    <a href="/projects" style="margin-left: 1rem;">EN</a>
    <a href="/es/projects" style="margin-left: 0.5rem;">ES</a>
  </div>
</nav>

# Proyectos

## Modelado Secuencia–Estructura de ARN
Modelos de aprendizaje profundo para la predicción de estructura secundaria y apareamiento de bases.

## Modelos Generativos
Modelos difusivos en secuencias biológicas.
EOF

echo "Done ✅"

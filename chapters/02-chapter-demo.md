## Example Textbook Chapter

### Math Primer 

There are no specific mathematics prerequisites for MAT_SCI 201. However, success in this course does require the ability to employ basic algebra, vector manipulations, trigonometry, and calculus. No advanced mathematics (differential equations, linear algebra, etc.) is required.

#### Basic Rules for Exponents

You will often work with exponents and will have to apply operations to them. You will need to know the following:

| **Operation**                                                 | **Formula**                                                | **Example**                                          |
|---------------------------------------------------------------|------------------------------------------------------------|------------------------------------------------------|
| Multiplication: add exponents                                 | $a^{m} \times a^{n} = a^{m + n}$                           | $x^{2} \times x^{3} = x^{5}$                         |
| Dividing: subtract exponents                                  | $\frac{a^{m}}{a^{n}} = a^{m - n}$                          | $\frac{x^{8}}{x^{3}} = x^{5}$                        |
| Power to a power: multiply exponents                          | $\left( a^{m})^{n} = a^{mn} \right.$                       | $\left( x^{3})^{4} = x^{12} \right.$                 |
| Power of a product: distribute power                          | $\left( ab)^{m} = a^{n}b^{n} \right.$                      | $\left( 2x)^{4} = 16x \right.$                       |
|             power of a quotient: distribute power             |   $\left( \frac{a}{b})^{m} = \frac{a^{n}}{b^{n}} \right.$  | $\left( \frac{x}{5})^{2} = \frac{x^{5}}{25} \right.$ |
| Negative exponents: make positive, shift across quotient line | $a^{- n} = \frac{1}{a^{n}}$ or $\frac{1}{a^{- n}} = a^{n}$ |             $3x^{- 4} = \frac{3}{x^{4}}$             |
|               Zero exponents: always equal to 1               | $\frac{a^{m}}{a^{m}} = a^{0} = 1$                          |            $\frac{x^{0}}{4} = \frac{1}{4}$           |

### Vectors

Working with vectors will be important when navigating crystal lattices. It is important that you recall the form and construction of these vectors as well as 1.) how to calculate the length of a vector, 2.) how to test for orthogonality between two vectors and 3.) how to calculate the angle between two vectors.

We\'ll be working in Cartesian coordinate system using an orthonormal basis set. The basis vectors are:

$$\begin{matrix}
\mathbf{\widehat{x}} & {= \left( {1,0,0} \right)} & \\
\mathbf{\widehat{y}} & {= \left( {0,1,0} \right)} & \\
\widehat{\mathbf{z}} & {= \left( {0,0,1} \right)} & \\
\end{matrix}$$

Any vector **a** can then be expressed in 3-dimensional space as:

$$\begin{matrix}
{\mathbf{a} = a_{1}\mathbf{\widehat{x}} + a_{2}\mathbf{\widehat{y}} + a_{3}\widehat{\mathbf{z}}} & \\
\end{matrix}$$

Or, in column notation:

$$\begin{matrix}
{\mathbf{a} = \begin{bmatrix}
a_{1} \\
a_{2} \\
a_{3} \\
\end{bmatrix}} & \\
\end{matrix}$$

In this class, we will often use crystallographic convention, in which notation for a lattice vector (you\'ll see this in Ch. 2) is condensed to $\left\lbrack {uvw} \right\rbrack$. More on that later.

You should know how to add and subtract vectors. For example, the addition of the vectors **a** and **b**:

$$\begin{matrix}
{\mathbf{a} + \mathbf{b} = \left( {a_{1} + b_{1}} \right)\mathbf{\widehat{x}} + \left( {a_{2} + b_{2}} \right)\mathbf{\widehat{y}} + \left( {a_{3} + b_{3}} \right)\widehat{\mathbf{z}}} & \\
\end{matrix}$$

Subtraction is similar, of course.

You should also know how to calculate the length of a vector. This is:

$$\begin{matrix}
\left| \mathbf{a} \middle| = \sqrt{a_{1}^{2} + a_{2}^{2} + a_{3}^{2}} \right. & \\
\end{matrix}$$

Or, if you are more comfortable putting this in terms of the dot-product:

$$\begin{matrix}
\left| \mathbf{a} \middle| = \sqrt{\mathbf{a} \cdot \mathbf{a}} \right. & \\
\end{matrix}$$

Finally, it\'s important to calculate the angle (or at least the cosine of an angle) between two vectors, **a** and **b**, which can be done using the definition of the scalar product:

$$\begin{matrix}
{\mathbf{a} \cdot \mathbf{b}} & \left. = \middle| \mathbf{a} \middle| \middle| \mathbf{b} \middle| \cos\theta \right. & \\
{\cos\theta} & {= \frac{\mathbf{a} \cdot \mathbf{b}}{\left| \mathbf{a} \middle| \middle| \mathbf{b} \right|}} & \\
{\cos\theta} & {= \frac{a_{1}b_{1} + a_{2}b_{2} + a_{3}b_{3}}{\sqrt{a_{1}^{2} + a_{2}^{2} + a_{3}^{2}}\sqrt{b_{1}^{2} + b_{2}^{2} + b_{3}^{2}}}} & \\
\end{matrix}$$

When $\mathbf{a} \cdot \mathbf{b} = 0$, $\cos\theta = 1$ and $\theta = \pi/2$ or 90${}^{○}$. In this case the vectors are orthogonal.

### Differential and Integral Notation 

We will generally employ Leibniz\'s notation for differentiation and anti-differentiation. The derivative of a function of one variable, e.g. $f(x) = f$, where $x$ is the independent variable, is written:

$$\begin{matrix}
{\frac{df}{dx}{or\frac{d}{dx}}f.} & \\
\end{matrix}$$

And higher-order derivatives are written as:

$$\begin{matrix}
{\frac{d^{2}f}{dx^{2}},\frac{d^{3}f}{dx^{3}},...,\frac{d^{n}f}{dx^{n}}.} & \\
\end{matrix}$$

You will encounter a partial differential equation during this course that describes time-diffusion in one spacial dimension (Fick\'s second law). You will not be required to *solve* this equation, but you will have to use it. Partial differential equations with multiple variables use the same notation as above, but are utilize the with the $\partial$ character. Here we define the $g\left( {x,t} \right) = g$, where $x$ and $t$ are independent variables:

$$\begin{matrix}
{\frac{\partial g}{\partial x}{or\frac{\partial}{\partial x}}g.} & \\
\end{matrix}$$

And higher-order derivatives taken with respect to the same variable are written as:

$$\begin{matrix}
{\frac{\partial^{2}g}{\partial x^{2}},\frac{\partial^{3}g}{\partial x^{3}},...,\frac{\partial^{n}g}{\partial x^{n}}.} & \\
\end{matrix}$$

Antidifferentiation will be denoted using the integral symbol, e.g. for the definite integration of $x^{2}$ from $a$ to $b$:

$$\begin{matrix}
{\int_{a}^{b}x^{2}dx} & \\
\end{matrix}$$

After integration, evaluation of this definite integral is written as:

$$\begin{matrix}
\left. \middle. \frac{x^{3}}{3} \right|_{a}^{b} & \\
\end{matrix}$$

Below, we use Lagrange shorthand to denote derivatives, *i.e*. $\frac{d}{dx}f = f'(x)$.

### Differentiation 

The following differentiation rules *may* used at some point during the course. Note that $c$ is a constant. We will not require you to differentiate trigonometric or hyperbolic functions.

#### General Formulas 

$$\begin{matrix}
 & {\frac{d}{dx}(c) = 0} & \\
 & {\frac{d}{dx}\left\lbrack f(x) + g(x) \right\rbrack = f'(x) - g'(x)} & \\
 & {\frac{d}{dx}\left\lbrack g(x)f(x) \right\rbrack = f(x)g'(x) + g(x)f'(x)} & \\
 & {\frac{d}{dx}f\left( {g(x)} \right) = f'\left( {g(x)} \right)g'(x)} & \\
 & {\frac{d}{dx}\left\lbrack cf(x) \right\rbrack = cf'(x)} & \\
 & {\frac{d}{dx}\left\lbrack \frac{f(x)}{g(x)} \right\rbrack = \frac{g(x)f'(x) - f(x)f'(x)}{\left\lbrack g(x)\rbrack^{2} \right.}} & \\
 & {\frac{d}{dx}x^{n} = nx^{n - 1}} & \\
\end{matrix}$$

#### Exponents and Logarithmic Functions

$$\begin{matrix}
 & {\frac{d}{dx}e^{x} = e^{x}} & \\
 & {\frac{d}{dx}a^{x} = a^{x}\ln a} & \\
 & \left. \frac{d}{dx}\ln \middle| x \middle| = \frac{1}{x} \right. & \\
 & {\frac{d}{dx}\log_{a}x = \frac{1}{x\ln a}} & \\
\end{matrix}$$

### Integration 

The following integration rules *may* used at some point during the course. Note that $C$ is a constant. We will not require you to perform integrations that may involve trigonometric or hyperbolic functions.

#### Basic Forms 

$$\begin{matrix}
 & {\int u^{n}du = \frac{u^{n + 1}}{n + 1} + C,n \neq - 1} & \\
 & \left. \int u^{- 1}du = \ln \middle| u \middle| + C \right. & \\
 & {\int e^{u}du = e^{u} + C} & \\
 & {\int a^{u}du = \frac{a^{u}}{\ln(a)} + C} & \\
\end{matrix}$$

### Logarithmic Identities 

The following logarithmic identities *may* be used in class. If so, they will be supplied on your equation sheet.

$$\begin{matrix}
 & {\log\left( {xy} \right) = \log(x) + \log(y)} & \\
 & {\log\left( \frac{x}{y} \right) = \log(x) - \log(y)} & \\
 & {\log\left( x^{d} \right) = d\log(x)} & \\
 & {\log\left( \sqrt[y]{x} \right) = \frac{\log(x)}{y}} & \\
 & {\log\left( {x^{c}y^{d}} \right) = \log\left( x^{c} \right) + \log\left( y^{d} \right) = c\log(x) + d\log(y)} & \\
\end{matrix}$$

## [4] Introduction 

Materials science is the investigation of the relationships between the property, structure and processing of materials, with the goals of optimizing performance of some system. These relationships are often illustrated with the materials science tetrahedron shown in Figure [4.1](#fig_MSE_tetrahedron).

![image: 4_home_ken_Mydocs_MSEcore_201-301_figures_MSE_paradigm.svg](4_home_ken_Mydocs_MSEcore_201-301_figures_MSE_paradigm.svg)

[Figure 4.1: The materials science tetrahedron.[]{#fig_MSE_tetrahedron} ]{.float-caption-Standard .float-caption .float-caption-standard}

## Bonding 

### Outcomes 

-   Evaluate interatomic energy curves to derive equilibrium interatomic spacing and bond energy (using calculus and graphically).
-   Identify the mechanistic contributions to repulsive and attractive forces/energies in interatomic force/energy curves.
-   Identify different types of bonding with materials class.
-   Understand characteristics of different bonding models, including strength, directionality.
-   Infer general properties from bond type.
-   Differentiate between predominate ionic or covalent bond character by assessing electronegativity difference.

### General Concepts and the Role of the Interatomic Potential 

A generic feature of all bonds is that they can be described by a interatomic potential of the sort shown in Figure [5.1](#fig_Interatomic_potential). This potential can be viewed as a sum of an attractive portion that draws the atoms close to one another, and a repulsive, short-range interaction that maintains a preferred separation comparable to the atomic size. Primary bonds[]{#magicparlabel-239} are strong bonds with a deep potential well, and include covalent, ionic and metallic bonds. Secondary bonds, including Van der Waals interactions and hydrogen bonds, are much weaker, and with a shallower potential well.

![image: 5_home_ken_Mydocs_MSEcore_201-301_figures_interatomic_potential.svg](5_home_ken_Mydocs_MSEcore_201-301_figures_interatomic_potential.svg)

[Figure 5.1: Generalized interatomic potential. The total potential ($E_{N}$) is given by the sum of an attractive part ($E_{A}$) that dominates at long distances and a repulsive part ($E_{R}$) that dominates at short distances.[]{#fig_Interatomic_potential} ]{.float-caption-Standard .float-caption .float-caption-standard}

The following properties are directly related to the nature of the interatomic potential:

#####  Melting Temperature 

If the bonding well is deep, it takes a lot of energy to separate the atoms, meaning that the melting temperature is going to be high. In Figure [5.2](#fig_interatomic__potential_and_properties)a.

#####  Thermal expansion 

Thermal expansion is directly connected to the asymmetry of the potential well, as illustrated in Figure [5.2](#fig_interatomic__potential_and_properties)b.

#####  Elastic modulus (stiffness) 

The higher curvature of the well, the larger the stiffness

::: exercise :::

Question: Calculate the equilibrium spacing for the following interatomic potential:

$$E = \frac{B}{r^{3}} - \frac{A}{r}$$

Answer: We differentiate the energy to get the force, $F$:

$$F = \frac{dE}{dr} = - \frac{3B}{r^{4}} + \frac{A}{r^{2}}$$

At equilibrium, the force is equal to zero, so we have:

$$A = \frac{3B}{r^{2}}, r = \sqrt{3B/A}$$

:::

![image: 6_home_ken_Mydocs_MSEcore_201-301_figures_effects_of_interatomic_potential.svg](6_home_ken_Mydocs_MSEcore_201-301_figures_effects_of_interatomic_potential.svg)

[Figure 5.2: Illustration of the relationship between interatomic potentials and some relevant material properties.[]{#fig_interatomic__potential_and_properties} ]{.float-caption-Standard .float-caption .float-caption-standard}

![image: 7_home_ken_Mydocs_MSEcore_201-301_figures_Periodic_table_large.svg](7_home_ken_Mydocs_MSEcore_201-301_figures_Periodic_table_large.svg)

[Figure 5.3: Periodic Table f the Elements.[]{#fig_Periodic_Table} ]{.float-caption-Standard .float-caption .float-caption-standard}

With bonding, everything starts with periodic table, shown in Figure .[5.3](#fig_Periodic_Table). At a simple level, the type of bonding between atoms is determined by their locations on the periodic table.

Electronegativity arises due to elements' energetic favorability to reach a stable electron configuration.

### Ionic Bonding 

Ionic bonding typically occurs between a metal and a non-metal, and involves a transfer of an electron from an atom with low negativity to create cations (+ charge) to an atom with high electronegativity to produce anions (- charge). Examples are shown in Figure [5.4](#fig_electronegativity_values_and_ionic_solids), where the electronegativities of the different elements are shown. \'Pure\' ionic bonding occurs in systems where there is a large difference in the electronegativity between the constituent elements, typically 2.7 or more. In practical terms this means that a large fraction of ionic materials have oxygen, fluorine, chlorine or bromine as the anion, corresponding repectively to oxides, fluorides, chlorides and bromides.

![image: 8_home_ken_Mydocs_MSEcore_201-301_figures_electronegativity_and_ionic_solids.png](8_home_ken_Mydocs_MSEcore_201-301_figures_electronegativity_and_ionic_solids.png)

[Figure 5.4: Examples of some common ionic solids, with the corresponding electronegativity values of the elements from which they are formed.[]{#fig_electronegativity_values_and_ionic_solids} ]{.float-caption-Standard .float-caption .float-caption-standard}

![image: 9_home_ken_Mydocs_MSEcore_201-301_figures_interatomic_potential_with_ions.svg](9_home_ken_Mydocs_MSEcore_201-301_figures_interatomic_potential_with_ions.svg) ![image: 10_home_ken_Mydocs_MSEcore_201-301_figures_NaCl_schematic.png](10_home_ken_Mydocs_MSEcore_201-301_figures_NaCl_schematic.png)

[Figure 5.5: ]{.float-caption-Standard .float-caption .float-caption-standard}

### Covalent Bonding 

Similar electronegativity and electrons are shared in order to minimize energy Bonds are directional Bonds occur between specific atoms participating in localized electron sharing Common in non-metallic compounds and elements Small differences in electronegativity facilitate sharing Right side of the periodic table (excluding noble gases) -- B, C, Si, Ge, Cl2, O2...)

Hugely varying properties: Strong \[C(diamond, graphene)\] to relatively weak (I2) Frequently brittle, electrically insulating/semiconducting/conducting, transparent/opaque Other examples, Si, InSb, SiC

![image: 11_home_ken_Mydocs_MSEcore_201-301_figures_methane.svg](11_home_ken_Mydocs_MSEcore_201-301_figures_methane.svg)

[Figure 5.6: Methane (CH${}_{4}$) with tetrahedral coordination resulting from the sp${}^{3}$ hybridized orbital.]{.float-caption-Standard .float-caption .float-caption-standard}

### Metallic Bonding 

Metallic Bonding is found in metals and their alloys. The valence electrons are delocalized to form an "electron cloud/sea/gas" or "Fermi liquid", as illustrated in Figure [5.7](#fig_metallic_bonding_schematic). These are referred to as the the conduction electrons and are shared between all of the atoms in the material. Positive ionic cores held together by electron "glue". As with ionic bonding, metallic bonding is non-directional, meaning that if we rotate an atom core, it doesn\'t affect the nature of the interaction. The average electronegativity of the atoms in metallic systems is generally low, so electrons are easily donated from the individual atoms to the electron \'sea\'.

Responsible for: Ducility/mealleability (W6) Conduction of heat/welectricity (W8) Shininess/opacity (W9) Thermal conductivity (W9)

![image: 12_home_ken_Mydocs_MSEcore_201-301_figures_metallic_bonding.png](12_home_ken_Mydocs_MSEcore_201-301_figures_metallic_bonding.png)

[Figure 5.7: Schematic representation of metallic bonding.[]{#fig_metallic_bonding_schematic} ]{.float-caption-Standard .float-caption .float-caption-standard}

### [5.6]Mixed Bond Character 

![image: 13_home_ken_Mydocs_MSEcore_201-301_figures_percent_ionic_character.png](13_home_ken_Mydocs_MSEcore_201-301_figures_percent_ionic_character.png)

[Figure 5.8: Percent ionic character as a function of the electronegativity difference between atoms.]{.float-caption-Standard .float-caption .float-caption-standard}

### [5.7]Hydrogen Bonds 

[Figure 5.9: Schematic of Hydrogen Bonds.]{.float-caption-Standard .float-caption .float-caption-standard}

### Other Secondary bonds 

![image: 14_home_ken_Mydocs_MSEcore_201-301_figures_dipole-dipole_interactions.png](14_home_ken_Mydocs_MSEcore_201-301_figures_dipole-dipole_interactions.png) ![image: 15_home_ken_Mydocs_MSEcore_201-301_figures_dipole_induced_dipole.svg](15_home_ken_Mydocs_MSEcore_201-301_figures_dipole_induced_dipole.svg) [Figure 5.10: ]

## Crystal Structures 

The animation below illustrates 3 crystal structures of metals: face centered cubic (fcc), body centered cubic (bcc) and simple cubic (sc):

<iframe xmlns="http://www.w3.org/1999/xhtml" src="https://ageller.github.io/EmeryInteractive/" width="1000" height="600" align="middle"></iframe>
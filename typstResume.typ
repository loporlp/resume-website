#let resume(body) = {
  set list(indent: 1em)
  show list: set text(size: 0.92em)
  show link: underline
  show link: set underline(offset: 3pt)
  set page(
    paper: "us-letter",
    margin: (x: 0.5in, y: 0.5in)
  )
  set text(
    size: 11pt,
    font: "New Computer Modern",
  )
  body
}
#let name_header(name) = {
  set text(size: 2.25em)
  [*#name*]
}
#let header(
  name: "Jake Ryan",
  phone: "123-456-7890",
  email: "jake@su.edu",
  linkedin: "linkedin.com/in/jake",
  site: "github.com/jake",
) = {
  align(center,
    block[
      #name_header(name) \
      #phone |
      #link("mailto:" + email)[#email] |
      #link("https://" + linkedin)[#linkedin] |
      #link("https://" + site)[#site]
    ]
  )
  v(5pt)
}
#let resume_heading(txt) = {
  show heading: set text(size: 0.92em, weight: "regular")
  block[
    = #smallcaps(txt)
    #v(-4pt)
    #line(length: 100%, stroke: 1pt + black)
  ]
}
#let edu_item(
  name: "Sample University",
  degree: "B.S in Bullshit",
  location: "Foo, BA",
  date: "Aug. 1600 - May 1750"
) = {
  set block(above: 0.7em, below: 1em)
  pad(left: 1em, right: 0.5em, grid(
    columns: (3fr, 1fr),
    align(left)[
      *#name* \
      _#degree _
    ],
    align(right)[
      #location \
      _#date _
    ]
  ))
}
#let exp_item(
  name: "Sample Workplace",
  role: "Worker",
  date: "June 1837 - May 1845",
  location: "Foo, BA",
  ..points
) = {
  set block(above: 0.7em, below: 1em)
  pad(left: 1em, right: 0.5em, box[
    #grid(
      columns: (3fr, 1fr),
      align(left)[
        *#role* \
        _#name _
      ],
      align(right)[
        #date \
        _#location _
      ]
    )
    #list(..points)
  ])
}
#let project_item(
  name: "Example Project",
  skills: "Programming Language 1, Database3",
  date: "May 1234 - June 4321",
  ..points
) = {
  set block(above: 0.7em, below: 1em)
  pad(left: 1em, right: 0.5em, box[
    *#name* | _#skills _ #h(1fr) #date
    #list(..points)
  ])
}
#let skill_item(
  category: "Skills",
  skills: "Balling, Yoga, Valorant",
) = {
  set block(above: 0.7em)
  set text(size: 0.91em)
  pad(left: 1em, right: 0.5em, block[*#category*: #skills])
}

#show: resume

#header(
  name: "Mason Sansom",
  phone: "(801)-999-8449",
  email: "masonsansom02@gmail.com",
  linkedin: "linkedin.com/in/mason-sansom",
  site: "github.com/loporlp",
)

#resume_heading("Education")

#edu_item(
  name: "University of Utah",
  degree: "Bachelor of Science in Computer Science | GPA: 3.90",
  location: "Salt Lake City, UT",
  date: "Aug. 2021 - May 2025",
)

#resume_heading("Experience")

#exp_item(
  role: "Associate Software Engineer",
  name: "Best Buy",
  date: "May 2025 - Present",
  location: "Minneapolis, MN",
  [Develop and maintain enterprise Java applications using Spring Boot for Repair Workbench, an internal Geek Squad tool used by agents in stores and repair centers to facilitate end-user device repairs.],
  [Build and enhance microservices-based APIs and reusable components to standardize service workflows across in-store repairs, vendor servicing, advanced repair, parts replacement, and device exchange.],
)

#exp_item(
  role: "Associate Software Engineer",
  name: "Best Buy",
  date: "May 2025 - Present",
  location: "Minneapolis, MN",
  [Engineered high-throughput data pipelines using Google Cloud Platform and Java to process customer interaction data, enabling faster decision-making and data-driven customer experiences.],
  [Migrated data architecture to composite feature storage, reducing monthly Dataflow costs by 96% (from \$1,356 to \$52) and improving data accessibility for ML and analytics teams.],
  [Migrated an existing Dataflow pipeline to a Cloud Function, reducing yearly costs from \$1,300 to \$4, a 99.7% reduction, while maintaining full functionality.],
  [Took ownership of end-to-end data flow and collaborated cross-functionally with data science and analytics teams to continuously improve pipeline reliability and scalability.],
)

#exp_item(
  role: "Associate Software Engineer Intern",
  name: "Best Buy",
  date: "June 2024 - Aug. 2024",
  location: "Minneapolis, MN",
  [Developed and maintained large-scale ETL pipelines using BigQuery and Google Cloud Platform, supporting critical business data workflows.],
  [Implemented and optimized backend services with Java and Micronaut, enhancing system performance and resilience under load.],
)

#resume_heading("Projects")

#project_item(
  name: "Easy Going",
  skills: "Node.js, AWS EC2, PostgreSQL, Amazon RDS, S3",
  date: "Jan. 2025 - May 2025",
  [Designed and deployed a Node.js backend on AWS EC2 with PostgreSQL on Amazon RDS and integrated AWS S3 for secure, scalable cloud infrastructure.],
  [Built RESTful APIs and an intelligent photo caching system, reducing redundant external API calls and improving responsiveness and cost-efficiency.],
)

#project_item(
  name: "CS2 Predictor",
  skills: "Python, sckit-learn, XGBoost, Pandas",
  date: "Jan. 2025 - Feb. 2025",
  [Built an end-to-end ML pipeline that collects CS2 match data from the Liquipedia API, engineers 26 features (Elo
  ratings, rolling win rates, form, streaks, head-to-head records), and trains classification models to predict match
  outcomes.],
  [Achieved ~65% accuracy and ~0.70 AUC with logistic regression, using chronological train/test splits to prevent data
  leakage and log loss for model selection across four classifiers.],
)

#resume_heading("Technical Skills")

#skill_item(
  category: "Languages",
  skills: "Java, C++, Python, C, C#, JavaScript (Node.js, React Native)",
)
#skill_item(
  category: "Cloud & Tools",
  skills: "Google Cloud Platform (BigQuery, Dataflow, Cloud Functions), AWS (EC2, RDS, S3), Docker, Git, Linux, Firebase Auth, CI/CD",
)
#skill_item(
  category: "Databases",
  skills: "PostgreSQL, SQL schema design",
)


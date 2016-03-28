df <- import("dchdc_surveyresults_cleaned.csv")

df$timestamp <- as.POSIXct(df$timestamp)
df$larger.network <- factor(df$larger.network, levels = c("Strongly Agree", "Agree",
                                                          "Disagree", "Strongly Disagree")
                            )
df$new.career.opportunities <- factor(df$new.career.opportunities, levels = c("Strongly Agree", "Agree",
                                                                              "Disagree", "Strongly Disagree")
)
df$learn.about.issues <- factor(df$learn.about.issues, levels = c("Strongly Agree", "Agree",
                                                                  "Disagree", "Strongly Disagree")
)
df$valuable.community <- factor(df$valuable.community, levels = c("Strongly Agree", "Agree",
                                                                  "Disagree", "Strongly Disagree")
)

df$attendance = factor(df$attendance, levels = c("Never", "Once", "A few times (2-3)", "Several times (4-6)",
                                                 "Many times (6-8)", "Often (9 or more times)")
)
df$career.stage = factor(df$career.stage, levels = c("Student", "Early Career (1-5 years in field)",
                                                     "Established Professional (5+ years)", "Retired")
)

df <- import("DCHDC-Survey-data.xlsx")

# document data
cols.original <- names(df)
cols.desc <- c("yyyy-mm-dd hh:mm:ss", "unused, dropping from analysis",
               "belief that participation has increased professional network",
               "belief that participation has increased professional network",
               "belief that participation has increased professional network",
               "belief that participation has increased professional network",
               "free text example of the value or dchdc", "suggestions to improve dchdc",
               "frequency of attendance", "stage of career",
               "suggestions for future presentations", "unused, dropping from analysis")
cols.type <- c("time", "unknown", "factor", "factor", "factor", "factor", "free text", "free text",
               "factor", "factor", "free text", "unknown")
cols.factor.values <- c(NULL, NULL, "Strongly Agree, Agree, Disagree, Strongly Disagree",
                        "Strongly Agree, Agree, Disagree, Strongly Disagree",
                        "Strongly Agree, Agree, Disagree, Strongly Disagree",
                        "Strongly Agree, Agree, Disagree, Strongly Disagree",
                        NULL, NULL,
                        "Never, Once, A few times (2-3), Several times (4-6), Many times (6-8), Often (9 or more times)",
                        "Student, Early Career (1-5 years in field), Established Professional (5+ years), Retired",
                        NULL, NULL)
cols.new <- c("timestamp", "untitled", "larger.network", "new.career.opportunities",
              "learn.about.issues", "valuable.community", "story", "improvements", "attendance",
              "career.stage", "topic.suggestions", "larger.network.other")

# create codebook
cb <- cbind(cols.original, cols.new, cols.desc, cols.type, cols.factor.values)

# rename columns and remove unused data
names(df) <- cols.new
df <- subset(df, select = -c(untitled, larger.network.other) )

export(df, "dchdc_surveyresults_cleaned.csv")
export(cb, "dchdc_surveyresutls_codebook.csv")

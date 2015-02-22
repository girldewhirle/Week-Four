best <- function(state, outcome) {
  ## Read outcome data
  ## always reading the outcome csv file
  working_file<-read.csv("outcome-of-care-measures.csv")
  unique_states<-unique(working_file[,7])
  if (state %in% unique_states){
    print(state)
  }else {
    stop("invalid state")
  }
  ## create list of valid outcomes - manually
  valid_outcomes<-c("heart failure", "pneumonia", "heart attack")
  if (outcome %in% valid_outcomes){
    print(outcome)
  }else{
    stop("invalid outcome")
  }
  ## Check that state and outcome are valid
  ## Return hospital name in that state with lowest 30-day death
  ## rate
}
% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/repos.R
\name{create_user_repo}
\alias{create_user_repo}
\alias{create_org_repo}
\title{Creates a Repository in an Organization or User Space}
\usage{
create_user_repo(
  name,
  description = "This repository has been created with ghapi3",
  homepage = "https://github.com/coatless/ghapi3",
  private = FALSE,
  has_issues = TRUE,
  has_projects = TRUE,
  has_wiki = TRUE,
  auto_init = FALSE,
  gitignore_template = "R",
  license_template = "gpl-3.0",
  allow_squash_merge = TRUE,
  allow_merge_commit = TRUE,
  allow_rebase_merge = TRUE
)

create_org_repo(
  org,
  name,
  description = "This repository has been created with ghapi3",
  homepage = "https://github.com/coatless/ghapi3",
  private = FALSE,
  has_issues = TRUE,
  has_projects = TRUE,
  has_wiki = TRUE,
  team_id = NULL,
  auto_init = FALSE,
  gitignore_template = "R",
  license_template = "gpl-3.0",
  allow_squash_merge = TRUE,
  allow_merge_commit = TRUE,
  allow_rebase_merge = TRUE
)
}
\arguments{
\item{name}{The name of the repository.}

\item{description}{A short description of the repository.}

\item{homepage}{A URL with more information about the repository.}

\item{private}{Either `TRUE` to create a private repository or
`FALSE` to create a public one. Creating private
repositories requires a paid GitHub account.
Default: `FALSE`.}

\item{has_issues}{Either `TRUE`  to enable issues for this
repository or `FALSE` to disable them.
Default: `TRUE`.}

\item{has_projects}{Either `TRUE` to enable projects for this
repository or `FALSE` to disable them.
Default: `TRUE`. Note: If you're creating a
repository in an organization that has disabled
repository projects, the default is `FALSE`, and
if you pass `TRUE`, the API returns an error.}

\item{has_wiki}{Either `TRUE` to enable the wiki for this
repository or `FALSE` to disable it.
Default: `TRUE`.}

\item{auto_init}{Pass `TRUE` to create an initial commit with
empty `README`. Default: `FALSE`.}

\item{gitignore_template}{Desired language or platform [.gitignore template](https://github.com/github/gitignore)
to apply. Use the name of the template without
the extension. For example, `"Haskell"`.}

\item{license_template}{Choose an [open source license template](https://choosealicense.com/)
that best suits your needs, and then use the
[license keyword](https://help.github.com/articles/licensing-a-repository/#searching-github-by-license-type)
as the `license_template` string. For example,
`"mit"` or `"mpl-2.0"`. Default: `"gpl-3.0"`.}

\item{allow_squash_merge}{Either `TRUE` to allow squash-merging pull
requests, or `FALSE` to prevent squash-merging.
Default: `TRUE`}

\item{allow_merge_commit}{Either `TRUE` to allow merging pull requests
with a merge commit, or `FALSE` to prevent
merging pull requests with merge commits.
Default: `TRUE`}

\item{allow_rebase_merge}{Either `TRUE` to allow rebase-merging pull
requests, or `FALSE` to prevent rebase-merging.
Default: `TRUE`}

\item{org}{Organization name.}

\item{team_id}{The id of the team that will be granted access to
this repository. This is only valid when creating
a repository in an organization.}
}
\description{
Makes a repository to store code in.
}
\examples{
\donttest{
# Creates a public repository based off of username/reponame
create_user_repo("toadie")

# Creates a private repository
create_user_repo("toadie", private = TRUE)
}
}
\references{
<https://developer.github.com/v3/repos/#create>
}

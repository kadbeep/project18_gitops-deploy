# GitOps Infra Deployment

Terraform changes are deployed only through pull requests. A PR runs
`terraform plan`. Merging to `main` starts an apply job that waits for a
reviewer's approval (GitHub Environment `production`) and then applies the
reviewed plan.

The demo uses the random and local providers so no cloud credentials are
stored in GitHub. State is not persisted between runs. A real setup would use
a remote backend such as S3 with locking.

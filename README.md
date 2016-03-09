# docker-s3-bucket-proxy
Dockerfile for an S3 bucket static bucket proxy. Useful for serving s3 content out of a custom domain

Example usage:
--------------

`docker run -d --name s3-proxy -p 80:80 -e "S3_BUCKET=some-bucket" s3-bucket-proxy`

This will serve content out of the http://some-bucket.s3.amazonaws.com bucket. Make
sure your bucket has sufficient read privileges for public facing content.
http://blogs.aws.amazon.com/security/post/Tx3VRSWZ6B3SHAV/Writing-IAM-Policies-How-to-grant-access-to-an-Amazon-S3-bucket

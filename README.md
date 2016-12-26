# docker-single-page-app

Dockerfile for serving a single page app out of s3 via docker. Useful when you need to redirect to index.html for all
routing requests in an app (excluding images, scripts, and stylesheets).

Example usage:
--------------

`docker run -d -p 80:80 --name my-app -e S3_BUCKET=my-bucket -e INDEX_BASE=release adamsar/docker-s3-single-page`

This will serve content out of the my-bucket bucket, redirecting all requests to the 'release' directory. This means all requests that are not to images, etc, will be redirected to the `release/{request path]` key on
the my-bucket bucket.


Make sure your bucket has sufficient read privileges for public facing content.
http://blogs.aws.amazon.com/security/post/Tx3VRSWZ6B3SHAV/Writing-IAM-Policies-How-to-grant-access-to-an-Amazon-S3-bucket

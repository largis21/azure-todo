/** @type {import('next').NextConfig} */
const nextConfig = {
  output: "standalone",
  // Typechecking and linting are setup as ci steps
  typescript: {
    ignoreBuildErrors: process.env.PRODUCTION_BUILD === "true" ? true : false
  },
  eslint: {
    ignoreDuringBuilds: process.env.PRODUCTION_BUILD === "true" ? true : false
  }
};

export default nextConfig;

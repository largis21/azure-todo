import { Suspense } from "react";

export default function Home() {
  return (
    <div>
      <div>This is static content</div>
      <Suspense>
        <SlowComponent time={1000} />
      </Suspense>
    </div>
  );
}

async function SlowComponent({ time }: { time: number }) {
  await new Promise((resolve) => setTimeout(resolve, time));

  return <div>This is a slow component that took {time} ms</div>;
}

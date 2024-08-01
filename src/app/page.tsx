import { GetTimeForm } from "@/components/GetTimeForm";

export const dynamic = "force-dynamic";

export default function Home() {
  return (
    <div>
      <div>
        This is my webapp. The time on the server at buildtime was{" "}
        {new Date().toLocaleString()}
      </div>
      <div>Here is a secret: {process.env.TEST_SECRET}</div>
      <GetTimeForm />
    </div>
  );
}

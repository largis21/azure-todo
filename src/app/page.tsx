import { GetTimeForm } from "@/components/GetTimeForm";

export const dynamic = "force-dynamic"

export default function Home() {
  return (
    <div>
      This is my webapp. The time on the server at buildtime was {new Date().toLocaleString()}
      <GetTimeForm />
    </div>
  );
}


"use client";

import { getTimeOnServer } from "@/actions/getTimeOnServer";
import { useFormState, useFormStatus } from "react-dom";

export function GetTimeForm() {
  const [result, action] = useFormState(getTimeOnServer, { timeOnServer: "" });

  return (
    <form action={action}>
      <SubmitButton />
      {result.timeOnServer}
    </form>
  );
}

function SubmitButton() {
  const status = useFormStatus();

  return (
    <button
      type="submit"
      disabled={status.pending}
      className="bg-white p-2 rounded-full text-black disabled:opacity-50"
    >
      Get new time
    </button>
  );
}

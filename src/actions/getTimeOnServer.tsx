"use server"

export async function getTimeOnServer() {
  return {
    timeOnServer: new Date().toLocaleString(),
  }
}


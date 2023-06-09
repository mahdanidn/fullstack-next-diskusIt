import type { NextApiRequest, NextApiResponse } from "next";
import prisma from "../../../prisma/client";

export default async function handler(
  req: NextApiRequest,
  res: NextApiResponse
) {
  if (req.method === "GET") {
    //Fetch all post
    try {
      const result = await prisma.post.findMany({
        include: {
          user: true,
          comments: true,
        },
        orderBy: {
          createdAt: "desc",
        },
      });
      return res.status(200).json(result);
    } catch (error) {
      console.log(error);

      return res.status(403).json({ err: "Error fetching posts" });
    }
  }
}

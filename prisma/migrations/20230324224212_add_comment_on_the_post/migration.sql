-- CreateTable
CREATE TABLE "Commet" (
    "id" TEXT NOT NULL,
    "message" TEXT NOT NULL,
    "postId" TEXT NOT NULL,
    "userId" TEXT NOT NULL,

    CONSTRAINT "Commet_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "Commet" ADD CONSTRAINT "Commet_postId_fkey" FOREIGN KEY ("postId") REFERENCES "Post"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Commet" ADD CONSTRAINT "Commet_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

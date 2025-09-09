/*
  Warnings:

  - You are about to drop the `Presentacion` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE "Presentacion" DROP CONSTRAINT "Presentacion_productoId_fkey";

-- DropTable
DROP TABLE "Presentacion";

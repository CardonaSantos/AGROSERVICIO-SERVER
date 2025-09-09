/*
  Warnings:

  - You are about to alter the column `total` on the `Compra` table. The data in that column could be lost. The data in that column will be cast from `DoublePrecision` to `Decimal(14,4)`.
  - You are about to alter the column `costoUnitario` on the `CompraDetalle` table. The data in that column could be lost. The data in that column will be cast from `DoublePrecision` to `Decimal(14,4)`.
  - You are about to alter the column `monto` on the `Cuota` table. The data in that column could be lost. The data in that column will be cast from `DoublePrecision` to `Decimal(14,4)`.
  - You are about to alter the column `montoEsperado` on the `Cuota` table. The data in that column could be lost. The data in that column will be cast from `DoublePrecision` to `Decimal(14,4)`.
  - You are about to alter the column `montoDepositado` on the `DepositoCobro` table. The data in that column could be lost. The data in that column will be cast from `DoublePrecision` to `Decimal(14,4)`.
  - You are about to alter the column `montoVenta` on the `DetalleResumenVenta` table. The data in that column could be lost. The data in that column will be cast from `DoublePrecision` to `Decimal(14,4)`.
  - You are about to alter the column `montoTotal` on the `EntregaStock` table. The data in that column could be lost. The data in that column will be cast from `DoublePrecision` to `Decimal(14,4)`.
  - You are about to alter the column `precioAnterior` on the `HistorialPrecio` table. The data in that column could be lost. The data in that column will be cast from `DoublePrecision` to `Decimal(12,4)`.
  - You are about to alter the column `precioNuevo` on the `HistorialPrecio` table. The data in that column could be lost. The data in that column will be cast from `DoublePrecision` to `Decimal(12,4)`.
  - You are about to alter the column `precioCostoAnterior` on the `HistorialPrecioCosto` table. The data in that column could be lost. The data in that column will be cast from `DoublePrecision` to `Decimal(12,4)`.
  - You are about to alter the column `precioCostoNuevo` on the `HistorialPrecioCosto` table. The data in that column could be lost. The data in that column will be cast from `DoublePrecision` to `Decimal(12,4)`.
  - You are about to alter the column `montoMeta` on the `MetaCobros` table. The data in that column could be lost. The data in that column will be cast from `DoublePrecision` to `Decimal(14,4)`.
  - You are about to alter the column `montoActual` on the `MetaCobros` table. The data in that column could be lost. The data in that column will be cast from `DoublePrecision` to `Decimal(14,4)`.
  - You are about to alter the column `montoMeta` on the `MetaUsuario` table. The data in that column could be lost. The data in that column will be cast from `DoublePrecision` to `Decimal(14,4)`.
  - You are about to alter the column `montoActual` on the `MetaUsuario` table. The data in that column could be lost. The data in that column will be cast from `DoublePrecision` to `Decimal(14,4)`.
  - You are about to alter the column `numeroVentas` on the `MetaUsuario` table. The data in that column could be lost. The data in that column will be cast from `DoublePrecision` to `Decimal(14,4)`.
  - You are about to alter the column `monto` on the `Pago` table. The data in that column could be lost. The data in that column will be cast from `DoublePrecision` to `Decimal(14,4)`.
  - You are about to alter the column `totalPedido` on the `Pedido` table. The data in that column could be lost. The data in that column will be cast from `DoublePrecision` to `Decimal(14,4)`.
  - You are about to alter the column `precioUnitario` on the `PedidoLinea` table. The data in that column could be lost. The data in that column will be cast from `DoublePrecision` to `Decimal(14,4)`.
  - You are about to alter the column `subtotal` on the `PedidoLinea` table. The data in that column could be lost. The data in that column will be cast from `DoublePrecision` to `Decimal(14,4)`.
  - You are about to alter the column `totalVentas` on the `ResumenVenta` table. The data in that column could be lost. The data in that column will be cast from `DoublePrecision` to `Decimal(14,4)`.
  - You are about to alter the column `ticketPromedio` on the `ResumenVenta` table. The data in that column could be lost. The data in that column will be cast from `DoublePrecision` to `Decimal(14,4)`.
  - You are about to alter the column `precioSolicitado` on the `SolicitudPrecio` table. The data in that column could be lost. The data in that column will be cast from `DoublePrecision` to `Decimal(12,4)`.
  - You are about to alter the column `totalVenta` on the `Venta` table. The data in that column could be lost. The data in that column will be cast from `DoublePrecision` to `Decimal(14,4)`.
  - You are about to alter the column `totalVenta` on the `VentaCuota` table. The data in that column could be lost. The data in that column will be cast from `DoublePrecision` to `Decimal(14,4)`.
  - You are about to alter the column `cuotaInicial` on the `VentaCuota` table. The data in that column could be lost. The data in that column will be cast from `DoublePrecision` to `Decimal(14,4)`.
  - You are about to alter the column `montoVenta` on the `VentaCuota` table. The data in that column could be lost. The data in that column will be cast from `DoublePrecision` to `Decimal(14,4)`.
  - You are about to alter the column `totalPagado` on the `VentaCuota` table. The data in that column could be lost. The data in that column will be cast from `DoublePrecision` to `Decimal(14,4)`.
  - You are about to alter the column `totalVenta` on the `VentaEliminada` table. The data in that column could be lost. The data in that column will be cast from `DoublePrecision` to `Decimal(14,4)`.
  - You are about to alter the column `precioVenta` on the `VentaEliminadaProducto` table. The data in that column could be lost. The data in that column will be cast from `DoublePrecision` to `Decimal(12,4)`.
  - You are about to alter the column `precioVenta` on the `VentaProducto` table. The data in that column could be lost. The data in that column will be cast from `DoublePrecision` to `Decimal(12,4)`.
  - Made the column `montoEsperado` on table `Cuota` required. This step will fail if there are existing NULL values in that column.
  - Made the column `totalPedido` on table `Pedido` required. This step will fail if there are existing NULL values in that column.
  - Made the column `ticketPromedio` on table `ResumenVenta` required. This step will fail if there are existing NULL values in that column.

*/
-- AlterTable
ALTER TABLE "Compra" ALTER COLUMN "total" SET DATA TYPE DECIMAL(14,4);

-- AlterTable
ALTER TABLE "CompraDetalle" ALTER COLUMN "costoUnitario" SET DATA TYPE DECIMAL(14,4);

-- AlterTable
ALTER TABLE "Cuota" ALTER COLUMN "monto" SET DATA TYPE DECIMAL(14,4),
ALTER COLUMN "montoEsperado" SET NOT NULL,
ALTER COLUMN "montoEsperado" SET DATA TYPE DECIMAL(14,4);

-- AlterTable
ALTER TABLE "DepositoCobro" ALTER COLUMN "montoDepositado" SET DATA TYPE DECIMAL(14,4);

-- AlterTable
ALTER TABLE "DetalleResumenVenta" ALTER COLUMN "montoVenta" SET DATA TYPE DECIMAL(14,4);

-- AlterTable
ALTER TABLE "EntregaStock" ALTER COLUMN "montoTotal" SET DATA TYPE DECIMAL(14,4);

-- AlterTable
ALTER TABLE "HistorialPrecio" ALTER COLUMN "precioAnterior" SET DATA TYPE DECIMAL(12,4),
ALTER COLUMN "precioNuevo" SET DATA TYPE DECIMAL(12,4);

-- AlterTable
ALTER TABLE "HistorialPrecioCosto" ALTER COLUMN "precioCostoAnterior" SET DATA TYPE DECIMAL(12,4),
ALTER COLUMN "precioCostoNuevo" SET DATA TYPE DECIMAL(12,4);

-- AlterTable
ALTER TABLE "MetaCobros" ALTER COLUMN "montoMeta" SET DATA TYPE DECIMAL(14,4),
ALTER COLUMN "montoActual" SET DATA TYPE DECIMAL(14,4);

-- AlterTable
ALTER TABLE "MetaUsuario" ALTER COLUMN "montoMeta" SET DATA TYPE DECIMAL(14,4),
ALTER COLUMN "montoActual" SET DATA TYPE DECIMAL(14,4),
ALTER COLUMN "numeroVentas" SET DATA TYPE DECIMAL(14,4);

-- AlterTable
ALTER TABLE "Pago" ALTER COLUMN "monto" SET DATA TYPE DECIMAL(14,4);

-- AlterTable
ALTER TABLE "Pedido" ALTER COLUMN "totalPedido" SET NOT NULL,
ALTER COLUMN "totalPedido" SET DATA TYPE DECIMAL(14,4);

-- AlterTable
ALTER TABLE "PedidoLinea" ALTER COLUMN "precioUnitario" SET DATA TYPE DECIMAL(14,4),
ALTER COLUMN "subtotal" SET DATA TYPE DECIMAL(14,4);

-- AlterTable
ALTER TABLE "ResumenVenta" ALTER COLUMN "totalVentas" SET DATA TYPE DECIMAL(14,4),
ALTER COLUMN "ticketPromedio" SET NOT NULL,
ALTER COLUMN "ticketPromedio" SET DATA TYPE DECIMAL(14,4);

-- AlterTable
ALTER TABLE "SolicitudPrecio" ALTER COLUMN "precioSolicitado" SET DATA TYPE DECIMAL(12,4);

-- AlterTable
ALTER TABLE "Venta" ALTER COLUMN "totalVenta" SET DATA TYPE DECIMAL(14,4);

-- AlterTable
ALTER TABLE "VentaCuota" ALTER COLUMN "totalVenta" SET DATA TYPE DECIMAL(14,4),
ALTER COLUMN "cuotaInicial" SET DATA TYPE DECIMAL(14,4),
ALTER COLUMN "montoVenta" SET DATA TYPE DECIMAL(14,4),
ALTER COLUMN "totalPagado" SET DATA TYPE DECIMAL(14,4);

-- AlterTable
ALTER TABLE "VentaEliminada" ALTER COLUMN "totalVenta" SET DATA TYPE DECIMAL(14,4);

-- AlterTable
ALTER TABLE "VentaEliminadaProducto" ALTER COLUMN "precioVenta" SET DATA TYPE DECIMAL(12,4);

-- AlterTable
ALTER TABLE "VentaProducto" ALTER COLUMN "precioVenta" SET DATA TYPE DECIMAL(12,4);

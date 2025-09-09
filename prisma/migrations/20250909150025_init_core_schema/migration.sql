-- CreateEnum
CREATE TYPE "EstadoReparacion" AS ENUM ('RECIBIDO', 'PENDIENTE', 'EN_PROCESO', 'ESPERANDO_PIEZAS', 'REPARADO', 'ENTREGADO', 'CANCELADO', 'NO_REPARABLE', 'FINALIZADO');

-- CreateEnum
CREATE TYPE "EstadoPago" AS ENUM ('PENDIENTE', 'PAGADA', 'ATRASADA');

-- CreateEnum
CREATE TYPE "EstadoCuota" AS ENUM ('ACTIVA', 'COMPLETADA', 'CANCELADA');

-- CreateEnum
CREATE TYPE "ComprobanteTipo" AS ENUM ('DEPOSITO_BOLETA', 'TRANSFERENCIA', 'CHEQUE', 'TARJETA_VOUCHER', 'OTRO');

-- CreateEnum
CREATE TYPE "TipoCuentaBancaria" AS ENUM ('AHORRO', 'CORRIENTE', 'TARJETA');

-- CreateEnum
CREATE TYPE "ClasificacionAdmin" AS ENUM ('INGRESO', 'COSTO_VENTA', 'GASTO_OPERATIVO', 'TRANSFERENCIA', 'AJUSTE', 'CONTRAVENTA');

-- CreateEnum
CREATE TYPE "MotivoMovimiento" AS ENUM ('VENTA', 'OTRO_INGRESO', 'GASTO_OPERATIVO', 'COMPRA_MERCADERIA', 'COSTO_ASOCIADO', 'DEPOSITO_CIERRE', 'DEPOSITO_PROVEEDOR', 'PAGO_PROVEEDOR_BANCO', 'AJUSTE_SOBRANTE', 'AJUSTE_FALTANTE', 'DEVOLUCION', 'BANCO_A_CAJA');

-- CreateEnum
CREATE TYPE "GastoOperativoTipo" AS ENUM ('SALARIO', 'ENERGIA', 'LOGISTICA', 'RENTA', 'INTERNET', 'PUBLICIDAD', 'VIATICOS', 'OTROS');

-- CreateEnum
CREATE TYPE "CostoVentaTipo" AS ENUM ('MERCADERIA', 'FLETE', 'ENCOMIENDA', 'TRANSPORTE', 'OTROS');

-- CreateEnum
CREATE TYPE "EstadoTurnoCaja" AS ENUM ('ABIERTO', 'CERRADO', 'ARQUEO', 'AJUSTADO', 'ANULADO');

-- CreateEnum
CREATE TYPE "EstadoCompra" AS ENUM ('RECIBIDO', 'CANCELADO', 'RECIBIDO_PARCIAL', 'ESPERANDO_ENTREGA');

-- CreateEnum
CREATE TYPE "OrigenCompra" AS ENUM ('DIRECTA', 'REQUISICION', 'PEDIDO');

-- CreateEnum
CREATE TYPE "PedidoEstado" AS ENUM ('PENDIENTE', 'ENVIADO_COMPRAS', 'RECIBIDO', 'CANCELADO');

-- CreateEnum
CREATE TYPE "PedidoPrioridad" AS ENUM ('ALTA', 'BAJA', 'MEDIA');

-- CreateEnum
CREATE TYPE "TipoPedido" AS ENUM ('INTERNO', 'CLIENTE');

-- CreateEnum
CREATE TYPE "EstadoTicket" AS ENUM ('ACTIVO', 'INACTIVO');

-- CreateEnum
CREATE TYPE "EstadoVencimiento" AS ENUM ('PENDIENTE', 'NOTIFICADO', 'RESUELTO');

-- CreateEnum
CREATE TYPE "RequisicionEstado" AS ENUM ('BORRADOR', 'PENDIENTE', 'APROBADA', 'ENVIADA', 'RECIBIDA', 'COMPLETADA', 'CANCELADA', 'ENVIADA_COMPRAS');

-- CreateEnum
CREATE TYPE "ResumenPeriodo" AS ENUM ('DIARIO', 'SEMANAL', 'MENSUAL', 'CUSTOM');

-- CreateEnum
CREATE TYPE "RolPrecio" AS ENUM ('PUBLICO', 'MAYORISTA', 'ESPECIAL', 'DISTRIBUIDOR', 'PROMOCION', 'CLIENTE_ESPECIAL');

-- CreateEnum
CREATE TYPE "TipoAjuste" AS ENUM ('INCREMENTO', 'DECREMENTO', 'CORRECCION');

-- CreateEnum
CREATE TYPE "EstadoMetaCobro" AS ENUM ('CANCELADO', 'ABIERTO', 'FINALIZADO', 'CERRADO');

-- CreateEnum
CREATE TYPE "EstadoMetaTienda" AS ENUM ('CANCELADO', 'ABIERTO', 'FINALIZADO', 'CERRADO');

-- CreateEnum
CREATE TYPE "EstadoGarantia" AS ENUM ('RECIBIDO', 'DIAGNOSTICO', 'EN_REPARACION', 'ESPERANDO_PIEZAS', 'REPARADO', 'REEMPLAZADO', 'RECHAZADO_CLIENTE', 'CANCELADO', 'CERRADO');

-- CreateEnum
CREATE TYPE "TipoMovimientoStock" AS ENUM ('INGRESO_COMPRA', 'INGRESO_REQUISICION', 'INGRESO_DEVOLUCION_CLIENTE', 'INGRESO_TRANSFERENCIA', 'INGRESO_AJUSTE', 'SALIDA_VENTA', 'AJUSTE_STOCK', 'ELIMINACION_VENTA', 'TRANSFERENCIA', 'ENTREGA_STOCK', 'SALIDA_DEVOLUCION_PROVEEDOR', 'SALIDA_AJUSTE', 'SALIDA_TRANSFERENCIA', 'SALIDA_REPARACION', 'ELIMINACION', 'ELIMINACION_STOCK', 'INVENTARIO_INICIAL', 'GARANTIA', 'OTRO');

-- CreateEnum
CREATE TYPE "EstadoDetalleVenta" AS ENUM ('VENDIDO', 'PARCIAL_GARANTIA', 'ANULADO', 'REEMPLAZADO', 'GARANTIA_REPARADO', 'REEMBOLSADO');

-- CreateEnum
CREATE TYPE "TipoComprobante" AS ENUM ('FACTURA', 'RECIBO');

-- CreateEnum
CREATE TYPE "Rol" AS ENUM ('ADMIN', 'MANAGER', 'VENDEDOR', 'SUPER_ADMIN');

-- CreateEnum
CREATE TYPE "TipoSucursal" AS ENUM ('TIENDA', 'ALMACEN', 'CENTRO_DISTRIBUCION', 'TALLER', 'OFICINA');

-- CreateEnum
CREATE TYPE "MetodoPago" AS ENUM ('CONTADO', 'EFECTIVO', 'TRANSFERENCIA', 'TARJETA', 'CHEQUE', 'CREDITO', 'OTRO');

-- CreateEnum
CREATE TYPE "TipoPrecio" AS ENUM ('CREADO_POR_SOLICITUD', 'ESTANDAR');

-- CreateEnum
CREATE TYPE "EstadoPrecio" AS ENUM ('APROBADO', 'PENDIENTE', 'RECHAZADO');

-- CreateEnum
CREATE TYPE "TipoNotificacion" AS ENUM ('SOLICITUD_PRECIO', 'TRANSFERENCIA', 'VENCIMIENTO', 'STOCK_BAJO', 'OTRO');

-- CreateEnum
CREATE TYPE "EstadoNotificacion" AS ENUM ('NO_LEIDO', 'LEIDO');

-- CreateEnum
CREATE TYPE "EstadoSolicitud" AS ENUM ('PENDIENTE', 'APROBADO', 'RECHAZADO');

-- CreateEnum
CREATE TYPE "EstadoSolicitudTransferencia" AS ENUM ('PENDIENTE', 'APROBADO', 'RECHAZADO');

-- CreateTable
CREATE TABLE "Sucursal" (
    "id" SERIAL NOT NULL,
    "nombre" TEXT NOT NULL,
    "direccion" TEXT,
    "telefono" TEXT,
    "pbx" TEXT,
    "creadoEn" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "actualizadoEn" TIMESTAMP(3) NOT NULL,
    "tipoSucursal" "TipoSucursal" NOT NULL,
    "estadoOperacion" BOOLEAN NOT NULL DEFAULT true,

    CONSTRAINT "Sucursal_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Reparacion" (
    "id" SERIAL NOT NULL,
    "usuarioId" INTEGER NOT NULL,
    "sucursalId" INTEGER NOT NULL,
    "clienteId" INTEGER NOT NULL,
    "productoId" INTEGER,
    "productoExterno" TEXT,
    "problemas" TEXT NOT NULL,
    "observaciones" TEXT,
    "fechaRecibido" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "fechaEntregado" TIMESTAMP(3),
    "estado" "EstadoReparacion" NOT NULL DEFAULT 'PENDIENTE',
    "hojaSolucion" TEXT,
    "creadoEn" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "actualizadoEn" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "Reparacion_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "RegistroReparacion" (
    "id" SERIAL NOT NULL,
    "reparacionId" INTEGER NOT NULL,
    "usuarioId" INTEGER NOT NULL,
    "estado" "EstadoReparacion" NOT NULL,
    "accionesRealizadas" TEXT NOT NULL,
    "fechaRegistro" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "comentarioFinal" TEXT,
    "montoPagado" INTEGER,

    CONSTRAINT "RegistroReparacion_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "VentaCuota" (
    "id" SERIAL NOT NULL,
    "clienteId" INTEGER NOT NULL,
    "usuarioId" INTEGER NOT NULL,
    "sucursalId" INTEGER NOT NULL,
    "totalVenta" DOUBLE PRECISION NOT NULL,
    "cuotaInicial" DOUBLE PRECISION NOT NULL,
    "cuotasTotales" INTEGER NOT NULL,
    "fechaInicio" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "estado" "EstadoCuota" NOT NULL DEFAULT 'ACTIVA',
    "creadoEn" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "actualizadoEn" TIMESTAMP(3) NOT NULL,
    "dpi" TEXT NOT NULL,
    "testigos" JSONB NOT NULL,
    "fechaContrato" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "montoVenta" DOUBLE PRECISION NOT NULL,
    "garantiaMeses" INTEGER NOT NULL,
    "totalPagado" DOUBLE PRECISION NOT NULL DEFAULT 0,
    "diasEntrePagos" INTEGER NOT NULL DEFAULT 0,
    "interes" INTEGER NOT NULL DEFAULT 0,
    "comentario" TEXT,
    "ventaId" INTEGER,
    "montoTotalConInteres" INTEGER,

    CONSTRAINT "VentaCuota_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Cuota" (
    "id" SERIAL NOT NULL,
    "ventaCuotaId" INTEGER NOT NULL,
    "monto" DOUBLE PRECISION NOT NULL,
    "fechaVencimiento" TIMESTAMP(3),
    "fechaPago" TIMESTAMP(3),
    "estado" "EstadoPago" NOT NULL DEFAULT 'PENDIENTE',
    "usuarioId" INTEGER,
    "creadoEn" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "actualizadoEn" TIMESTAMP(3) NOT NULL,
    "comentario" TEXT,
    "montoEsperado" DOUBLE PRECISION,

    CONSTRAINT "Cuota_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "PlantillaComprobante" (
    "id" SERIAL NOT NULL,
    "nombre" TEXT NOT NULL,
    "texto" TEXT NOT NULL,
    "sucursalId" INTEGER,
    "creadoEn" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "actualizadoEn" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "PlantillaComprobante_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "VentaEliminada" (
    "id" SERIAL NOT NULL,
    "usuarioId" INTEGER NOT NULL,
    "motivo" TEXT NOT NULL,
    "totalVenta" DOUBLE PRECISION NOT NULL,
    "clienteId" INTEGER,
    "fechaEliminacion" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "sucursalId" INTEGER NOT NULL,

    CONSTRAINT "VentaEliminada_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "VentaEliminadaProducto" (
    "id" SERIAL NOT NULL,
    "ventaEliminadaId" INTEGER NOT NULL,
    "productoId" INTEGER,
    "cantidad" INTEGER NOT NULL,
    "precioVenta" DOUBLE PRECISION NOT NULL,
    "creadoEn" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "VentaEliminadaProducto_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "SucursalSaldoDiario" (
    "id" SERIAL NOT NULL,
    "sucursalId" INTEGER NOT NULL,
    "fecha" TIMESTAMP(3) NOT NULL,
    "saldoInicioCaja" DECIMAL(14,2) NOT NULL,
    "ingresosCaja" DECIMAL(14,2) NOT NULL,
    "egresosCaja" DECIMAL(14,2) NOT NULL,
    "saldoFinalCaja" DECIMAL(14,2) NOT NULL,
    "saldoInicioBanco" DECIMAL(14,2) NOT NULL,
    "ingresosBanco" DECIMAL(14,2) NOT NULL,
    "egresosBanco" DECIMAL(14,2) NOT NULL,
    "saldoFinalBanco" DECIMAL(14,2) NOT NULL,
    "globalDiarioId" INTEGER,
    "creadoEn" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "actualizadoEn" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "SucursalSaldoDiario_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "SaldoGlobalDiario" (
    "id" SERIAL NOT NULL,
    "fecha" TIMESTAMP(3) NOT NULL,
    "saldoTotalCaja" DECIMAL(14,2) NOT NULL,
    "ingresosTotalCaja" DECIMAL(14,2) NOT NULL,
    "egresosTotalCaja" DECIMAL(14,2) NOT NULL,
    "saldoTotalBanco" DECIMAL(14,2) NOT NULL,
    "ingresosTotalBanco" DECIMAL(14,2) NOT NULL,
    "egresosTotalBanco" DECIMAL(14,2) NOT NULL,
    "usuarioId" INTEGER,
    "creadoEn" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "actualizadoEn" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "SaldoGlobalDiario_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "RegistroCaja" (
    "id" SERIAL NOT NULL,
    "sucursalId" INTEGER NOT NULL,
    "usuarioInicioId" INTEGER NOT NULL,
    "usuarioCierreId" INTEGER,
    "fechaApertura" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "fechaCierre" TIMESTAMP(3),
    "saldoInicial" DECIMAL(14,2) NOT NULL,
    "saldoFinal" DECIMAL(14,2),
    "estado" "EstadoTurnoCaja" NOT NULL DEFAULT 'ABIERTO',
    "comentario" TEXT,
    "comentarioFinal" TEXT,
    "fondoFijo" DECIMAL(14,2) NOT NULL DEFAULT 0,
    "depositado" BOOLEAN NOT NULL DEFAULT false,
    "creadoEn" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "actualizadoEn" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "RegistroCaja_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "MovimientoFinanciero" (
    "id" SERIAL NOT NULL,
    "fecha" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "sucursalId" INTEGER NOT NULL,
    "registroCajaId" INTEGER,
    "clasificacion" "ClasificacionAdmin" NOT NULL,
    "motivo" "MotivoMovimiento" NOT NULL,
    "metodoPago" "MetodoPago",
    "deltaCaja" DECIMAL(14,2) NOT NULL DEFAULT 0,
    "deltaBanco" DECIMAL(14,2) NOT NULL DEFAULT 0,
    "cuentaBancariaId" INTEGER,
    "descripcion" TEXT,
    "referencia" TEXT,
    "conFactura" BOOLEAN,
    "esDepositoCierre" BOOLEAN NOT NULL DEFAULT false,
    "esDepositoProveedor" BOOLEAN NOT NULL DEFAULT false,
    "proveedorId" INTEGER,
    "gastoOperativoTipo" "GastoOperativoTipo",
    "costoVentaTipo" "CostoVentaTipo",
    "afectaInventario" BOOLEAN NOT NULL DEFAULT false,
    "usuarioId" INTEGER NOT NULL,
    "creadoEn" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "actualizadoEn" TIMESTAMP(3) NOT NULL,
    "esAsientoVentas" BOOLEAN NOT NULL DEFAULT false,
    "comprobanteTipo" "ComprobanteTipo",
    "comprobanteNumero" VARCHAR(64),
    "comprobanteFecha" TIMESTAMP(3),
    "comprobanteUrl" TEXT,

    CONSTRAINT "MovimientoFinanciero_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CuentaBancaria" (
    "id" SERIAL NOT NULL,
    "banco" TEXT NOT NULL,
    "numero" TEXT NOT NULL,
    "alias" TEXT,
    "activa" BOOLEAN NOT NULL DEFAULT true,
    "tipo" "TipoCuentaBancaria" NOT NULL DEFAULT 'CORRIENTE',
    "creadoEn" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "actualizadoEn" TIMESTAMP(3) NOT NULL,
    "isDeleted" BOOLEAN NOT NULL DEFAULT false,
    "eliminadoEn" TIMESTAMP(3),

    CONSTRAINT "CuentaBancaria_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CompraDetalle" (
    "id" SERIAL NOT NULL,
    "cantidad" INTEGER NOT NULL,
    "costoUnitario" DOUBLE PRECISION NOT NULL,
    "productoId" INTEGER,
    "compraId" INTEGER NOT NULL,
    "requisicionLineaId" INTEGER,
    "creadoEn" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "actualizadoEn" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "CompraDetalle_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Compra" (
    "id" SERIAL NOT NULL,
    "sucursalId" INTEGER,
    "fecha" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "total" DOUBLE PRECISION NOT NULL,
    "estado" "EstadoCompra" NOT NULL DEFAULT 'ESPERANDO_ENTREGA',
    "requisicionId" INTEGER,
    "ingresadaAStock" BOOLEAN NOT NULL DEFAULT false,
    "cantidadRecibidaAcumulada" INTEGER NOT NULL DEFAULT 0,
    "proveedorId" INTEGER,
    "usuarioId" INTEGER NOT NULL,
    "facturaNumero" TEXT,
    "facturaFecha" TIMESTAMP(3),
    "conFactura" BOOLEAN NOT NULL DEFAULT false,
    "origen" "OrigenCompra" NOT NULL DEFAULT 'DIRECTA',
    "creadoEn" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "actualizadoEn" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "Compra_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Pedido" (
    "id" SERIAL NOT NULL,
    "folio" TEXT NOT NULL,
    "fecha" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "sucursalId" INTEGER NOT NULL,
    "clienteId" INTEGER,
    "usuarioId" INTEGER NOT NULL,
    "estado" "PedidoEstado" NOT NULL DEFAULT 'PENDIENTE',
    "observaciones" TEXT,
    "totalLineas" INTEGER NOT NULL DEFAULT 0,
    "totalPedido" DOUBLE PRECISION,
    "creadoEn" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "actualizadoEn" TIMESTAMP(3) NOT NULL,
    "compraId" INTEGER,
    "tipo" "TipoPedido" NOT NULL DEFAULT 'INTERNO',
    "prioridad" "PedidoPrioridad" NOT NULL DEFAULT 'MEDIA',

    CONSTRAINT "Pedido_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "PedidoLinea" (
    "id" SERIAL NOT NULL,
    "pedidoId" INTEGER NOT NULL,
    "productoId" INTEGER NOT NULL,
    "cantidad" INTEGER NOT NULL,
    "precioUnitario" DOUBLE PRECISION NOT NULL,
    "subtotal" DOUBLE PRECISION NOT NULL DEFAULT 0,
    "notas" TEXT,
    "creadoEn" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "actualizadoEn" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "PedidoLinea_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "TicketSorteo" (
    "id" SERIAL NOT NULL,
    "descripcionSorteo" TEXT,
    "creadoEn" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "actualizadoEn" TIMESTAMP(3) NOT NULL,
    "estado" "EstadoTicket" NOT NULL,

    CONSTRAINT "TicketSorteo_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Vencimiento" (
    "id" SERIAL NOT NULL,
    "fechaVencimiento" TIMESTAMP(3) NOT NULL,
    "estado" "EstadoVencimiento" NOT NULL DEFAULT 'PENDIENTE',
    "descripcion" TEXT,
    "stockId" INTEGER,
    "fechaCreacion" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "Vencimiento_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Notificacion" (
    "id" SERIAL NOT NULL,
    "mensaje" TEXT NOT NULL,
    "remitenteId" INTEGER,
    "tipoNotificacion" "TipoNotificacion" NOT NULL,
    "referenciaId" INTEGER,
    "fechaCreacion" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "Notificacion_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "NotificacionesUsuarios" (
    "id" SERIAL NOT NULL,
    "usuarioId" INTEGER NOT NULL,
    "notificacionId" INTEGER NOT NULL,
    "leido" BOOLEAN NOT NULL DEFAULT false,
    "eliminado" BOOLEAN NOT NULL DEFAULT false,
    "leidoEn" TIMESTAMP(3),
    "recibidoEn" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "NotificacionesUsuarios_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "SolicitudPrecio" (
    "id" SERIAL NOT NULL,
    "productoId" INTEGER NOT NULL,
    "precioSolicitado" DOUBLE PRECISION NOT NULL,
    "solicitadoPorId" INTEGER NOT NULL,
    "estado" "EstadoSolicitud" NOT NULL DEFAULT 'PENDIENTE',
    "aprobadoPorId" INTEGER,
    "fechaSolicitud" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "fechaRespuesta" TIMESTAMP(3),

    CONSTRAINT "SolicitudPrecio_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Producto" (
    "id" SERIAL NOT NULL,
    "nombre" TEXT NOT NULL,
    "descripcion" TEXT,
    "codigoProducto" TEXT NOT NULL,
    "creadoEn" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "actualizadoEn" TIMESTAMP(3) NOT NULL,
    "precioCostoActual" DOUBLE PRECISION,
    "codigoProveedor" TEXT,

    CONSTRAINT "Producto_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ImagenProducto" (
    "id" SERIAL NOT NULL,
    "url" TEXT NOT NULL,
    "public_id" TEXT,
    "altTexto" TEXT,
    "creadoEn" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "productoId" INTEGER NOT NULL,

    CONSTRAINT "ImagenProducto_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "StockThreshold" (
    "id" SERIAL NOT NULL,
    "productoId" INTEGER NOT NULL,
    "stockMinimo" INTEGER NOT NULL DEFAULT 0,
    "creadoEn" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "actualizadoEn" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "StockThreshold_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Requisicion" (
    "id" SERIAL NOT NULL,
    "folio" TEXT NOT NULL,
    "fecha" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "sucursalId" INTEGER NOT NULL,
    "usuarioId" INTEGER NOT NULL,
    "estado" "RequisicionEstado" NOT NULL DEFAULT 'PENDIENTE',
    "observaciones" TEXT,
    "totalLineas" INTEGER NOT NULL DEFAULT 0,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "totalRequisicion" DOUBLE PRECISION,
    "fechaRecepcion" TIMESTAMP(3),
    "esIngresoAutomatico" BOOLEAN NOT NULL DEFAULT false,
    "ingresadaAStock" BOOLEAN NOT NULL DEFAULT false,

    CONSTRAINT "Requisicion_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "RequisicionLinea" (
    "id" SERIAL NOT NULL,
    "requisicionId" INTEGER NOT NULL,
    "productoId" INTEGER NOT NULL,
    "cantidadActual" INTEGER NOT NULL,
    "stockMinimo" INTEGER NOT NULL,
    "cantidadSugerida" INTEGER NOT NULL,
    "precioUnitario" DOUBLE PRECISION,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "fechaExpiracion" TIMESTAMP(3),
    "cantidadRecibida" INTEGER,
    "ingresadaAStock" BOOLEAN NOT NULL DEFAULT false,

    CONSTRAINT "RequisicionLinea_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "RequisicionRecepcion" (
    "id" SERIAL NOT NULL,
    "requisicionId" INTEGER NOT NULL,
    "fechaRecepcion" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "usuarioId" INTEGER NOT NULL,
    "observaciones" TEXT,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "RequisicionRecepcion_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "RequisicionRecepcionLinea" (
    "id" SERIAL NOT NULL,
    "requisicionRecepcionId" INTEGER NOT NULL,
    "requisicionLineaId" INTEGER NOT NULL,
    "productoId" INTEGER NOT NULL,
    "cantidadSolicitada" INTEGER NOT NULL,
    "cantidadRecibida" INTEGER NOT NULL,
    "ingresadaAStock" BOOLEAN NOT NULL DEFAULT true,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "RequisicionRecepcionLinea_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ResumenVenta" (
    "id" SERIAL NOT NULL,
    "titulo" TEXT,
    "sucursalId" INTEGER,
    "usuarioId" INTEGER,
    "periodo" "ResumenPeriodo" NOT NULL DEFAULT 'DIARIO',
    "fechaInicio" TIMESTAMP(3) NOT NULL,
    "fechaFin" TIMESTAMP(3) NOT NULL,
    "totalVentas" DOUBLE PRECISION NOT NULL,
    "totalTransacciones" INTEGER NOT NULL,
    "unidadesVendidas" INTEGER NOT NULL,
    "ticketPromedio" DOUBLE PRECISION,
    "productoTopId" INTEGER,
    "cantidadProductoTop" INTEGER,
    "creadoEn" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "actualizadoEn" TIMESTAMP(3) NOT NULL,
    "observaciones" TEXT,

    CONSTRAINT "ResumenVenta_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "DetalleResumenVenta" (
    "id" SERIAL NOT NULL,
    "resumenVentaId" INTEGER NOT NULL,
    "productoId" INTEGER NOT NULL,
    "cantidadVendida" INTEGER NOT NULL,
    "montoVenta" DOUBLE PRECISION NOT NULL,

    CONSTRAINT "DetalleResumenVenta_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "HistorialPrecioCosto" (
    "id" SERIAL NOT NULL,
    "productoId" INTEGER NOT NULL,
    "precioCostoAnterior" DOUBLE PRECISION NOT NULL,
    "precioCostoNuevo" DOUBLE PRECISION NOT NULL,
    "fechaCambio" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "modificadoPorId" INTEGER,
    "motivoCambio" TEXT,
    "sucursalId" INTEGER,

    CONSTRAINT "HistorialPrecioCosto_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "PrecioProducto" (
    "id" SERIAL NOT NULL,
    "productoId" INTEGER,
    "precio" DOUBLE PRECISION NOT NULL,
    "creadoPorId" INTEGER,
    "fechaCreacion" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "estado" "EstadoPrecio" NOT NULL,
    "usado" BOOLEAN NOT NULL DEFAULT false,
    "tipo" "TipoPrecio" NOT NULL,
    "orden" INTEGER NOT NULL,
    "rol" "RolPrecio" NOT NULL,
    "vigenteDesde" TIMESTAMP(3),
    "vigenteHasta" TIMESTAMP(3),
    "sucursalId" INTEGER,
    "clienteId" INTEGER,

    CONSTRAINT "PrecioProducto_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "HistorialPrecio" (
    "id" SERIAL NOT NULL,
    "productoId" INTEGER NOT NULL,
    "precioAnterior" DOUBLE PRECISION NOT NULL,
    "precioNuevo" DOUBLE PRECISION NOT NULL,
    "fechaCambio" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "HistorialPrecio_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "AjusteStock" (
    "id" SERIAL NOT NULL,
    "productoId" INTEGER NOT NULL,
    "stockId" INTEGER,
    "cantidadAjustada" INTEGER NOT NULL,
    "tipoAjuste" "TipoAjuste" NOT NULL,
    "fechaHora" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "usuarioId" INTEGER,
    "descripcion" TEXT,

    CONSTRAINT "AjusteStock_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "EliminacionStock" (
    "id" SERIAL NOT NULL,
    "productoId" INTEGER NOT NULL,
    "cantidadAnterior" INTEGER,
    "cantidadStockEliminada" INTEGER,
    "stockRestante" INTEGER,
    "fechaHora" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "referenciaTipo" TEXT,
    "referenciaId" INTEGER,
    "motivo" TEXT,
    "usuarioId" INTEGER,
    "sucursalId" INTEGER,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "EliminacionStock_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "EliminacionProducto" (
    "id" SERIAL NOT NULL,
    "productoId" INTEGER NOT NULL,
    "fechaHora" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "usuarioId" INTEGER,
    "motivo" TEXT,

    CONSTRAINT "EliminacionProducto_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "EliminacionCliente" (
    "id" SERIAL NOT NULL,
    "clienteId" INTEGER NOT NULL,
    "fechaHora" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "usuarioId" INTEGER,
    "motivo" TEXT,

    CONSTRAINT "EliminacionCliente_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Stock" (
    "id" SERIAL NOT NULL,
    "productoId" INTEGER NOT NULL,
    "cantidadInicial" INTEGER,
    "cantidad" INTEGER NOT NULL,
    "costoTotal" DOUBLE PRECISION NOT NULL,
    "creadoEn" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "actualizadoEn" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "fechaIngreso" TIMESTAMP(3) NOT NULL,
    "fechaVencimiento" TIMESTAMP(3),
    "precioCosto" DOUBLE PRECISION NOT NULL,
    "entregaStockId" INTEGER,
    "sucursalId" INTEGER NOT NULL,
    "requisicionRecepcionId" INTEGER,

    CONSTRAINT "Stock_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "EntregaStock" (
    "id" SERIAL NOT NULL,
    "proveedorId" INTEGER,
    "montoTotal" DOUBLE PRECISION NOT NULL,
    "fechaEntrega" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "recibidoPorId" INTEGER,
    "sucursalId" INTEGER,

    CONSTRAINT "EntregaStock_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Usuario" (
    "id" SERIAL NOT NULL,
    "nombre" TEXT NOT NULL,
    "rol" "Rol" NOT NULL,
    "contrasena" TEXT NOT NULL,
    "activo" BOOLEAN NOT NULL DEFAULT true,
    "correo" TEXT NOT NULL,
    "sucursalId" INTEGER NOT NULL,
    "fecha_creacion" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "fecha_actualizacion" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "Usuario_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "MetaUsuario" (
    "id" SERIAL NOT NULL,
    "usuarioId" INTEGER NOT NULL,
    "sucursalId" INTEGER NOT NULL,
    "fechaInicio" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "fechaFin" TIMESTAMP(3) NOT NULL,
    "montoMeta" DOUBLE PRECISION NOT NULL,
    "montoActual" DOUBLE PRECISION NOT NULL DEFAULT 0,
    "cumplida" BOOLEAN NOT NULL DEFAULT false,
    "fechaCumplida" TIMESTAMP(3),
    "numeroVentas" DOUBLE PRECISION NOT NULL,
    "tituloMeta" TEXT,
    "estado" "EstadoMetaTienda" NOT NULL,

    CONSTRAINT "MetaUsuario_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "MetaCobros" (
    "id" SERIAL NOT NULL,
    "usuarioId" INTEGER NOT NULL,
    "sucursalId" INTEGER NOT NULL,
    "fechaCreado" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "fechaInicio" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "fechaFin" TIMESTAMP(3) NOT NULL,
    "montoMeta" DOUBLE PRECISION NOT NULL,
    "montoActual" DOUBLE PRECISION NOT NULL DEFAULT 0,
    "cumplida" BOOLEAN NOT NULL DEFAULT false,
    "fechaCumplida" TIMESTAMP(3),
    "numeroDepositos" INTEGER NOT NULL DEFAULT 0,
    "tituloMeta" TEXT,
    "estado" "EstadoMetaCobro" NOT NULL,

    CONSTRAINT "MetaCobros_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "DepositoCobro" (
    "id" SERIAL NOT NULL,
    "usuarioId" INTEGER NOT NULL,
    "sucursalId" INTEGER NOT NULL,
    "numeroBoleta" TEXT NOT NULL,
    "fechaRegistro" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "montoDepositado" DOUBLE PRECISION NOT NULL,
    "descripcion" TEXT,
    "metaCobroId" INTEGER NOT NULL,

    CONSTRAINT "DepositoCobro_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Cliente" (
    "id" SERIAL NOT NULL,
    "nombre" TEXT NOT NULL,
    "apellidos" TEXT,
    "telefono" TEXT,
    "direccion" TEXT,
    "observaciones" TEXT,
    "creadoEn" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "actualizadoEn" TIMESTAMP(3) NOT NULL,
    "municipioId" INTEGER,
    "departamentoId" INTEGER,
    "dpi" TEXT,
    "iPInternet" TEXT,
    "eliminado" BOOLEAN NOT NULL DEFAULT false,
    "fechaEliminacion" TIMESTAMP(3),

    CONSTRAINT "Cliente_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Garantia" (
    "id" SERIAL NOT NULL,
    "ventaId" INTEGER NOT NULL,
    "productoId" INTEGER NOT NULL,
    "usuarioIdRecibe" INTEGER,
    "proveedorId" INTEGER,
    "cantidadDevuelta" INTEGER NOT NULL,
    "comentario" TEXT,
    "descripcionProblema" TEXT NOT NULL,
    "fechaRecepcion" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "estado" "EstadoGarantia" NOT NULL DEFAULT 'RECIBIDO',
    "creadoEn" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "actualizadoEn" TIMESTAMP(3) NOT NULL,
    "clienteId" INTEGER NOT NULL,
    "sucursalId" INTEGER,

    CONSTRAINT "Garantia_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "RegistroGarantia" (
    "id" SERIAL NOT NULL,
    "garantiaId" INTEGER NOT NULL,
    "estado" "EstadoGarantia" NOT NULL,
    "conclusion" TEXT,
    "accionesRealizadas" TEXT,
    "usuarioId" INTEGER,
    "fechaRegistro" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "actualizadoEn" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "RegistroGarantia_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Pago" (
    "id" SERIAL NOT NULL,
    "ventaId" INTEGER NOT NULL,
    "monto" DOUBLE PRECISION NOT NULL,
    "metodoPago" "MetodoPago" NOT NULL,
    "fechaPago" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "Pago_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "HistorialStock" (
    "id" SERIAL NOT NULL,
    "cantidadAnterior" INTEGER,
    "cantidadNueva" INTEGER,
    "comentario" TEXT,
    "tipo" "TipoMovimientoStock" NOT NULL,
    "fechaCambio" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "sucursalId" INTEGER,
    "usuarioId" INTEGER,
    "productoId" INTEGER,
    "requisicionId" INTEGER,
    "ventaId" INTEGER,
    "ajusteStockId" INTEGER,
    "eliminacionStockId" INTEGER,
    "eliminacionVentaId" INTEGER,
    "transferenciaProductoId" INTEGER,
    "entregaStockId" INTEGER,
    "garantiaId" INTEGER,

    CONSTRAINT "HistorialStock_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "VentaProducto" (
    "id" SERIAL NOT NULL,
    "ventaId" INTEGER NOT NULL,
    "productoId" INTEGER,
    "cantidad" INTEGER NOT NULL,
    "creadoEn" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "precioVenta" DOUBLE PRECISION NOT NULL,
    "estado" "EstadoDetalleVenta" NOT NULL DEFAULT 'VENDIDO',

    CONSTRAINT "VentaProducto_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Venta" (
    "id" SERIAL NOT NULL,
    "clienteId" INTEGER,
    "fechaVenta" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "horaVenta" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "totalVenta" DOUBLE PRECISION NOT NULL,
    "sucursalId" INTEGER NOT NULL,
    "nombreClienteFinal" TEXT,
    "telefonoClienteFinal" TEXT,
    "direccionClienteFinal" TEXT,
    "imei" TEXT,
    "registroCajaId" INTEGER,
    "usuarioId" INTEGER,
    "referenciaPago" TEXT,
    "tipoComprobante" "TipoComprobante" NOT NULL DEFAULT 'RECIBO',

    CONSTRAINT "Venta_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "TransferenciaProducto" (
    "id" SERIAL NOT NULL,
    "productoId" INTEGER NOT NULL,
    "cantidad" INTEGER NOT NULL,
    "sucursalOrigenId" INTEGER NOT NULL,
    "sucursalDestinoId" INTEGER NOT NULL,
    "fechaTransferencia" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "usuarioEncargadoId" INTEGER,

    CONSTRAINT "TransferenciaProducto_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "SolicitudTransferenciaProducto" (
    "id" SERIAL NOT NULL,
    "productoId" INTEGER NOT NULL,
    "cantidad" INTEGER NOT NULL,
    "sucursalOrigenId" INTEGER NOT NULL,
    "sucursalDestinoId" INTEGER NOT NULL,
    "usuarioSolicitanteId" INTEGER,
    "estado" "EstadoSolicitudTransferencia" NOT NULL DEFAULT 'PENDIENTE',
    "fechaSolicitud" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "fechaAprobacion" TIMESTAMP(3),
    "administradorId" INTEGER,

    CONSTRAINT "SolicitudTransferenciaProducto_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Proveedor" (
    "id" SERIAL NOT NULL,
    "nombre" TEXT NOT NULL,
    "correo" TEXT,
    "telefono" TEXT,
    "direccion" TEXT,
    "razonSocial" TEXT,
    "rfc" TEXT,
    "nombreContacto" TEXT,
    "telefonoContacto" TEXT,
    "emailContacto" TEXT,
    "pais" TEXT,
    "ciudad" TEXT,
    "codigoPostal" TEXT,
    "latitud" DOUBLE PRECISION,
    "longitud" DOUBLE PRECISION,
    "activo" BOOLEAN NOT NULL DEFAULT true,
    "notas" TEXT,
    "creadoEn" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "actualizadoEn" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "Proveedor_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Categoria" (
    "id" SERIAL NOT NULL,
    "nombre" TEXT NOT NULL,

    CONSTRAINT "Categoria_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Departamento" (
    "id" SERIAL NOT NULL,
    "nombre" TEXT NOT NULL,

    CONSTRAINT "Departamento_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Municipio" (
    "id" SERIAL NOT NULL,
    "nombre" TEXT NOT NULL,
    "departamentoId" INTEGER NOT NULL,

    CONSTRAINT "Municipio_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "_Destinatario" (
    "A" INTEGER NOT NULL,
    "B" INTEGER NOT NULL
);

-- CreateTable
CREATE TABLE "_CategoriaToProducto" (
    "A" INTEGER NOT NULL,
    "B" INTEGER NOT NULL
);

-- CreateIndex
CREATE UNIQUE INDEX "VentaCuota_ventaId_key" ON "VentaCuota"("ventaId");

-- CreateIndex
CREATE UNIQUE INDEX "SucursalSaldoDiario_sucursalId_fecha_key" ON "SucursalSaldoDiario"("sucursalId", "fecha");

-- CreateIndex
CREATE UNIQUE INDEX "SaldoGlobalDiario_fecha_key" ON "SaldoGlobalDiario"("fecha");

-- CreateIndex
CREATE INDEX "RegistroCaja_sucursalId_estado_idx" ON "RegistroCaja"("sucursalId", "estado");

-- CreateIndex
CREATE INDEX "MovimientoFinanciero_registroCajaId_esAsientoVentas_idx" ON "MovimientoFinanciero"("registroCajaId", "esAsientoVentas");

-- CreateIndex
CREATE INDEX "MovimientoFinanciero_sucursalId_fecha_idx" ON "MovimientoFinanciero"("sucursalId", "fecha");

-- CreateIndex
CREATE INDEX "MovimientoFinanciero_registroCajaId_idx" ON "MovimientoFinanciero"("registroCajaId");

-- CreateIndex
CREATE INDEX "MovimientoFinanciero_clasificacion_motivo_idx" ON "MovimientoFinanciero"("clasificacion", "motivo");

-- CreateIndex
CREATE INDEX "MovimientoFinanciero_esDepositoCierre_esDepositoProveedor_idx" ON "MovimientoFinanciero"("esDepositoCierre", "esDepositoProveedor");

-- CreateIndex
CREATE INDEX "idx_movfin_comprobante_lookup" ON "MovimientoFinanciero"("comprobanteTipo", "comprobanteNumero");

-- CreateIndex
CREATE UNIQUE INDEX "uq_movfin_turno_referencia" ON "MovimientoFinanciero"("registroCajaId", "referencia");

-- CreateIndex
CREATE UNIQUE INDEX "uq_movfin_comprobante" ON "MovimientoFinanciero"("cuentaBancariaId", "comprobanteTipo", "comprobanteNumero");

-- CreateIndex
CREATE UNIQUE INDEX "CuentaBancaria_banco_numero_key" ON "CuentaBancaria"("banco", "numero");

-- CreateIndex
CREATE UNIQUE INDEX "Compra_requisicionId_key" ON "Compra"("requisicionId");

-- CreateIndex
CREATE UNIQUE INDEX "Pedido_folio_key" ON "Pedido"("folio");

-- CreateIndex
CREATE UNIQUE INDEX "Pedido_compraId_key" ON "Pedido"("compraId");

-- CreateIndex
CREATE UNIQUE INDEX "Producto_codigoProducto_key" ON "Producto"("codigoProducto");

-- CreateIndex
CREATE UNIQUE INDEX "Producto_codigoProveedor_key" ON "Producto"("codigoProveedor");

-- CreateIndex
CREATE INDEX "ImagenProducto_productoId_idx" ON "ImagenProducto"("productoId");

-- CreateIndex
CREATE UNIQUE INDEX "StockThreshold_productoId_key" ON "StockThreshold"("productoId");

-- CreateIndex
CREATE UNIQUE INDEX "Requisicion_folio_key" ON "Requisicion"("folio");

-- CreateIndex
CREATE INDEX "RequisicionLinea_requisicionId_idx" ON "RequisicionLinea"("requisicionId");

-- CreateIndex
CREATE UNIQUE INDEX "Usuario_correo_key" ON "Usuario"("correo");

-- CreateIndex
CREATE UNIQUE INDEX "Cliente_dpi_id_key" ON "Cliente"("dpi", "id");

-- CreateIndex
CREATE UNIQUE INDEX "Pago_ventaId_key" ON "Pago"("ventaId");

-- CreateIndex
CREATE UNIQUE INDEX "Venta_referenciaPago_key" ON "Venta"("referenciaPago");

-- CreateIndex
CREATE UNIQUE INDEX "Venta_imei_id_key" ON "Venta"("imei", "id");

-- CreateIndex
CREATE UNIQUE INDEX "Categoria_nombre_key" ON "Categoria"("nombre");

-- CreateIndex
CREATE UNIQUE INDEX "Departamento_nombre_key" ON "Departamento"("nombre");

-- CreateIndex
CREATE UNIQUE INDEX "Municipio_nombre_key" ON "Municipio"("nombre");

-- CreateIndex
CREATE UNIQUE INDEX "_Destinatario_AB_unique" ON "_Destinatario"("A", "B");

-- CreateIndex
CREATE INDEX "_Destinatario_B_index" ON "_Destinatario"("B");

-- CreateIndex
CREATE UNIQUE INDEX "_CategoriaToProducto_AB_unique" ON "_CategoriaToProducto"("A", "B");

-- CreateIndex
CREATE INDEX "_CategoriaToProducto_B_index" ON "_CategoriaToProducto"("B");

-- AddForeignKey
ALTER TABLE "Reparacion" ADD CONSTRAINT "Reparacion_usuarioId_fkey" FOREIGN KEY ("usuarioId") REFERENCES "Usuario"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Reparacion" ADD CONSTRAINT "Reparacion_sucursalId_fkey" FOREIGN KEY ("sucursalId") REFERENCES "Sucursal"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Reparacion" ADD CONSTRAINT "Reparacion_clienteId_fkey" FOREIGN KEY ("clienteId") REFERENCES "Cliente"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Reparacion" ADD CONSTRAINT "Reparacion_productoId_fkey" FOREIGN KEY ("productoId") REFERENCES "Producto"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "RegistroReparacion" ADD CONSTRAINT "RegistroReparacion_reparacionId_fkey" FOREIGN KEY ("reparacionId") REFERENCES "Reparacion"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "RegistroReparacion" ADD CONSTRAINT "RegistroReparacion_usuarioId_fkey" FOREIGN KEY ("usuarioId") REFERENCES "Usuario"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "VentaCuota" ADD CONSTRAINT "VentaCuota_clienteId_fkey" FOREIGN KEY ("clienteId") REFERENCES "Cliente"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "VentaCuota" ADD CONSTRAINT "VentaCuota_usuarioId_fkey" FOREIGN KEY ("usuarioId") REFERENCES "Usuario"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "VentaCuota" ADD CONSTRAINT "VentaCuota_sucursalId_fkey" FOREIGN KEY ("sucursalId") REFERENCES "Sucursal"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "VentaCuota" ADD CONSTRAINT "VentaCuota_ventaId_fkey" FOREIGN KEY ("ventaId") REFERENCES "Venta"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Cuota" ADD CONSTRAINT "Cuota_ventaCuotaId_fkey" FOREIGN KEY ("ventaCuotaId") REFERENCES "VentaCuota"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Cuota" ADD CONSTRAINT "Cuota_usuarioId_fkey" FOREIGN KEY ("usuarioId") REFERENCES "Usuario"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "PlantillaComprobante" ADD CONSTRAINT "PlantillaComprobante_sucursalId_fkey" FOREIGN KEY ("sucursalId") REFERENCES "Sucursal"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "VentaEliminada" ADD CONSTRAINT "VentaEliminada_usuarioId_fkey" FOREIGN KEY ("usuarioId") REFERENCES "Usuario"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "VentaEliminada" ADD CONSTRAINT "VentaEliminada_clienteId_fkey" FOREIGN KEY ("clienteId") REFERENCES "Cliente"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "VentaEliminada" ADD CONSTRAINT "VentaEliminada_sucursalId_fkey" FOREIGN KEY ("sucursalId") REFERENCES "Sucursal"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "VentaEliminadaProducto" ADD CONSTRAINT "VentaEliminadaProducto_ventaEliminadaId_fkey" FOREIGN KEY ("ventaEliminadaId") REFERENCES "VentaEliminada"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "VentaEliminadaProducto" ADD CONSTRAINT "VentaEliminadaProducto_productoId_fkey" FOREIGN KEY ("productoId") REFERENCES "Producto"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "SucursalSaldoDiario" ADD CONSTRAINT "SucursalSaldoDiario_sucursalId_fkey" FOREIGN KEY ("sucursalId") REFERENCES "Sucursal"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "SucursalSaldoDiario" ADD CONSTRAINT "SucursalSaldoDiario_globalDiarioId_fkey" FOREIGN KEY ("globalDiarioId") REFERENCES "SaldoGlobalDiario"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "SaldoGlobalDiario" ADD CONSTRAINT "SaldoGlobalDiario_usuarioId_fkey" FOREIGN KEY ("usuarioId") REFERENCES "Usuario"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "RegistroCaja" ADD CONSTRAINT "RegistroCaja_sucursalId_fkey" FOREIGN KEY ("sucursalId") REFERENCES "Sucursal"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "RegistroCaja" ADD CONSTRAINT "RegistroCaja_usuarioInicioId_fkey" FOREIGN KEY ("usuarioInicioId") REFERENCES "Usuario"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "RegistroCaja" ADD CONSTRAINT "RegistroCaja_usuarioCierreId_fkey" FOREIGN KEY ("usuarioCierreId") REFERENCES "Usuario"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "MovimientoFinanciero" ADD CONSTRAINT "MovimientoFinanciero_sucursalId_fkey" FOREIGN KEY ("sucursalId") REFERENCES "Sucursal"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "MovimientoFinanciero" ADD CONSTRAINT "MovimientoFinanciero_registroCajaId_fkey" FOREIGN KEY ("registroCajaId") REFERENCES "RegistroCaja"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "MovimientoFinanciero" ADD CONSTRAINT "MovimientoFinanciero_cuentaBancariaId_fkey" FOREIGN KEY ("cuentaBancariaId") REFERENCES "CuentaBancaria"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "MovimientoFinanciero" ADD CONSTRAINT "MovimientoFinanciero_proveedorId_fkey" FOREIGN KEY ("proveedorId") REFERENCES "Proveedor"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "MovimientoFinanciero" ADD CONSTRAINT "MovimientoFinanciero_usuarioId_fkey" FOREIGN KEY ("usuarioId") REFERENCES "Usuario"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "CompraDetalle" ADD CONSTRAINT "CompraDetalle_productoId_fkey" FOREIGN KEY ("productoId") REFERENCES "Producto"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "CompraDetalle" ADD CONSTRAINT "CompraDetalle_compraId_fkey" FOREIGN KEY ("compraId") REFERENCES "Compra"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "CompraDetalle" ADD CONSTRAINT "CompraDetalle_requisicionLineaId_fkey" FOREIGN KEY ("requisicionLineaId") REFERENCES "RequisicionLinea"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Compra" ADD CONSTRAINT "Compra_sucursalId_fkey" FOREIGN KEY ("sucursalId") REFERENCES "Sucursal"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Compra" ADD CONSTRAINT "Compra_requisicionId_fkey" FOREIGN KEY ("requisicionId") REFERENCES "Requisicion"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Compra" ADD CONSTRAINT "Compra_proveedorId_fkey" FOREIGN KEY ("proveedorId") REFERENCES "Proveedor"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Compra" ADD CONSTRAINT "Compra_usuarioId_fkey" FOREIGN KEY ("usuarioId") REFERENCES "Usuario"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Pedido" ADD CONSTRAINT "Pedido_sucursalId_fkey" FOREIGN KEY ("sucursalId") REFERENCES "Sucursal"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Pedido" ADD CONSTRAINT "Pedido_clienteId_fkey" FOREIGN KEY ("clienteId") REFERENCES "Cliente"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Pedido" ADD CONSTRAINT "Pedido_usuarioId_fkey" FOREIGN KEY ("usuarioId") REFERENCES "Usuario"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Pedido" ADD CONSTRAINT "Pedido_compraId_fkey" FOREIGN KEY ("compraId") REFERENCES "Compra"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "PedidoLinea" ADD CONSTRAINT "PedidoLinea_pedidoId_fkey" FOREIGN KEY ("pedidoId") REFERENCES "Pedido"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "PedidoLinea" ADD CONSTRAINT "PedidoLinea_productoId_fkey" FOREIGN KEY ("productoId") REFERENCES "Producto"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Vencimiento" ADD CONSTRAINT "Vencimiento_stockId_fkey" FOREIGN KEY ("stockId") REFERENCES "Stock"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Notificacion" ADD CONSTRAINT "Notificacion_remitenteId_fkey" FOREIGN KEY ("remitenteId") REFERENCES "Usuario"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "NotificacionesUsuarios" ADD CONSTRAINT "NotificacionesUsuarios_usuarioId_fkey" FOREIGN KEY ("usuarioId") REFERENCES "Usuario"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "NotificacionesUsuarios" ADD CONSTRAINT "NotificacionesUsuarios_notificacionId_fkey" FOREIGN KEY ("notificacionId") REFERENCES "Notificacion"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "SolicitudPrecio" ADD CONSTRAINT "SolicitudPrecio_productoId_fkey" FOREIGN KEY ("productoId") REFERENCES "Producto"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "SolicitudPrecio" ADD CONSTRAINT "SolicitudPrecio_solicitadoPorId_fkey" FOREIGN KEY ("solicitadoPorId") REFERENCES "Usuario"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "SolicitudPrecio" ADD CONSTRAINT "SolicitudPrecio_aprobadoPorId_fkey" FOREIGN KEY ("aprobadoPorId") REFERENCES "Usuario"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ImagenProducto" ADD CONSTRAINT "ImagenProducto_productoId_fkey" FOREIGN KEY ("productoId") REFERENCES "Producto"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "StockThreshold" ADD CONSTRAINT "StockThreshold_productoId_fkey" FOREIGN KEY ("productoId") REFERENCES "Producto"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Requisicion" ADD CONSTRAINT "Requisicion_sucursalId_fkey" FOREIGN KEY ("sucursalId") REFERENCES "Sucursal"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Requisicion" ADD CONSTRAINT "Requisicion_usuarioId_fkey" FOREIGN KEY ("usuarioId") REFERENCES "Usuario"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "RequisicionLinea" ADD CONSTRAINT "RequisicionLinea_requisicionId_fkey" FOREIGN KEY ("requisicionId") REFERENCES "Requisicion"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "RequisicionLinea" ADD CONSTRAINT "RequisicionLinea_productoId_fkey" FOREIGN KEY ("productoId") REFERENCES "Producto"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "RequisicionRecepcion" ADD CONSTRAINT "RequisicionRecepcion_requisicionId_fkey" FOREIGN KEY ("requisicionId") REFERENCES "Requisicion"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "RequisicionRecepcion" ADD CONSTRAINT "RequisicionRecepcion_usuarioId_fkey" FOREIGN KEY ("usuarioId") REFERENCES "Usuario"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "RequisicionRecepcionLinea" ADD CONSTRAINT "RequisicionRecepcionLinea_requisicionRecepcionId_fkey" FOREIGN KEY ("requisicionRecepcionId") REFERENCES "RequisicionRecepcion"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "RequisicionRecepcionLinea" ADD CONSTRAINT "RequisicionRecepcionLinea_requisicionLineaId_fkey" FOREIGN KEY ("requisicionLineaId") REFERENCES "RequisicionLinea"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "RequisicionRecepcionLinea" ADD CONSTRAINT "RequisicionRecepcionLinea_productoId_fkey" FOREIGN KEY ("productoId") REFERENCES "Producto"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ResumenVenta" ADD CONSTRAINT "ResumenVenta_sucursalId_fkey" FOREIGN KEY ("sucursalId") REFERENCES "Sucursal"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ResumenVenta" ADD CONSTRAINT "ResumenVenta_usuarioId_fkey" FOREIGN KEY ("usuarioId") REFERENCES "Usuario"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ResumenVenta" ADD CONSTRAINT "ResumenVenta_productoTopId_fkey" FOREIGN KEY ("productoTopId") REFERENCES "Producto"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "DetalleResumenVenta" ADD CONSTRAINT "DetalleResumenVenta_resumenVentaId_fkey" FOREIGN KEY ("resumenVentaId") REFERENCES "ResumenVenta"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "DetalleResumenVenta" ADD CONSTRAINT "DetalleResumenVenta_productoId_fkey" FOREIGN KEY ("productoId") REFERENCES "Producto"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "HistorialPrecioCosto" ADD CONSTRAINT "HistorialPrecioCosto_sucursalId_fkey" FOREIGN KEY ("sucursalId") REFERENCES "Sucursal"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "HistorialPrecioCosto" ADD CONSTRAINT "HistorialPrecioCosto_productoId_fkey" FOREIGN KEY ("productoId") REFERENCES "Producto"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "HistorialPrecioCosto" ADD CONSTRAINT "HistorialPrecioCosto_modificadoPorId_fkey" FOREIGN KEY ("modificadoPorId") REFERENCES "Usuario"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "PrecioProducto" ADD CONSTRAINT "PrecioProducto_productoId_fkey" FOREIGN KEY ("productoId") REFERENCES "Producto"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "PrecioProducto" ADD CONSTRAINT "PrecioProducto_creadoPorId_fkey" FOREIGN KEY ("creadoPorId") REFERENCES "Usuario"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "HistorialPrecio" ADD CONSTRAINT "HistorialPrecio_productoId_fkey" FOREIGN KEY ("productoId") REFERENCES "Producto"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "AjusteStock" ADD CONSTRAINT "AjusteStock_productoId_fkey" FOREIGN KEY ("productoId") REFERENCES "Producto"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "AjusteStock" ADD CONSTRAINT "AjusteStock_stockId_fkey" FOREIGN KEY ("stockId") REFERENCES "Stock"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "AjusteStock" ADD CONSTRAINT "AjusteStock_usuarioId_fkey" FOREIGN KEY ("usuarioId") REFERENCES "Usuario"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "EliminacionStock" ADD CONSTRAINT "EliminacionStock_productoId_fkey" FOREIGN KEY ("productoId") REFERENCES "Producto"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "EliminacionStock" ADD CONSTRAINT "EliminacionStock_usuarioId_fkey" FOREIGN KEY ("usuarioId") REFERENCES "Usuario"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "EliminacionStock" ADD CONSTRAINT "EliminacionStock_sucursalId_fkey" FOREIGN KEY ("sucursalId") REFERENCES "Sucursal"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "EliminacionProducto" ADD CONSTRAINT "EliminacionProducto_productoId_fkey" FOREIGN KEY ("productoId") REFERENCES "Producto"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "EliminacionProducto" ADD CONSTRAINT "EliminacionProducto_usuarioId_fkey" FOREIGN KEY ("usuarioId") REFERENCES "Usuario"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "EliminacionCliente" ADD CONSTRAINT "EliminacionCliente_clienteId_fkey" FOREIGN KEY ("clienteId") REFERENCES "Cliente"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "EliminacionCliente" ADD CONSTRAINT "EliminacionCliente_usuarioId_fkey" FOREIGN KEY ("usuarioId") REFERENCES "Usuario"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Stock" ADD CONSTRAINT "Stock_productoId_fkey" FOREIGN KEY ("productoId") REFERENCES "Producto"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Stock" ADD CONSTRAINT "Stock_entregaStockId_fkey" FOREIGN KEY ("entregaStockId") REFERENCES "EntregaStock"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Stock" ADD CONSTRAINT "Stock_sucursalId_fkey" FOREIGN KEY ("sucursalId") REFERENCES "Sucursal"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Stock" ADD CONSTRAINT "Stock_requisicionRecepcionId_fkey" FOREIGN KEY ("requisicionRecepcionId") REFERENCES "RequisicionRecepcion"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "EntregaStock" ADD CONSTRAINT "EntregaStock_proveedorId_fkey" FOREIGN KEY ("proveedorId") REFERENCES "Proveedor"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "EntregaStock" ADD CONSTRAINT "EntregaStock_recibidoPorId_fkey" FOREIGN KEY ("recibidoPorId") REFERENCES "Usuario"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "EntregaStock" ADD CONSTRAINT "EntregaStock_sucursalId_fkey" FOREIGN KEY ("sucursalId") REFERENCES "Sucursal"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Usuario" ADD CONSTRAINT "Usuario_sucursalId_fkey" FOREIGN KEY ("sucursalId") REFERENCES "Sucursal"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "MetaUsuario" ADD CONSTRAINT "MetaUsuario_usuarioId_fkey" FOREIGN KEY ("usuarioId") REFERENCES "Usuario"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "MetaUsuario" ADD CONSTRAINT "MetaUsuario_sucursalId_fkey" FOREIGN KEY ("sucursalId") REFERENCES "Sucursal"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "MetaCobros" ADD CONSTRAINT "MetaCobros_usuarioId_fkey" FOREIGN KEY ("usuarioId") REFERENCES "Usuario"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "MetaCobros" ADD CONSTRAINT "MetaCobros_sucursalId_fkey" FOREIGN KEY ("sucursalId") REFERENCES "Sucursal"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "DepositoCobro" ADD CONSTRAINT "DepositoCobro_usuarioId_fkey" FOREIGN KEY ("usuarioId") REFERENCES "Usuario"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "DepositoCobro" ADD CONSTRAINT "DepositoCobro_sucursalId_fkey" FOREIGN KEY ("sucursalId") REFERENCES "Sucursal"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "DepositoCobro" ADD CONSTRAINT "DepositoCobro_metaCobroId_fkey" FOREIGN KEY ("metaCobroId") REFERENCES "MetaCobros"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Cliente" ADD CONSTRAINT "Cliente_municipioId_fkey" FOREIGN KEY ("municipioId") REFERENCES "Municipio"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Cliente" ADD CONSTRAINT "Cliente_departamentoId_fkey" FOREIGN KEY ("departamentoId") REFERENCES "Departamento"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Garantia" ADD CONSTRAINT "Garantia_ventaId_fkey" FOREIGN KEY ("ventaId") REFERENCES "Venta"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Garantia" ADD CONSTRAINT "Garantia_productoId_fkey" FOREIGN KEY ("productoId") REFERENCES "Producto"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Garantia" ADD CONSTRAINT "Garantia_usuarioIdRecibe_fkey" FOREIGN KEY ("usuarioIdRecibe") REFERENCES "Usuario"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Garantia" ADD CONSTRAINT "Garantia_proveedorId_fkey" FOREIGN KEY ("proveedorId") REFERENCES "Proveedor"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Garantia" ADD CONSTRAINT "Garantia_clienteId_fkey" FOREIGN KEY ("clienteId") REFERENCES "Cliente"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Garantia" ADD CONSTRAINT "Garantia_sucursalId_fkey" FOREIGN KEY ("sucursalId") REFERENCES "Sucursal"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "RegistroGarantia" ADD CONSTRAINT "RegistroGarantia_garantiaId_fkey" FOREIGN KEY ("garantiaId") REFERENCES "Garantia"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "RegistroGarantia" ADD CONSTRAINT "RegistroGarantia_usuarioId_fkey" FOREIGN KEY ("usuarioId") REFERENCES "Usuario"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Pago" ADD CONSTRAINT "Pago_ventaId_fkey" FOREIGN KEY ("ventaId") REFERENCES "Venta"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "HistorialStock" ADD CONSTRAINT "HistorialStock_sucursalId_fkey" FOREIGN KEY ("sucursalId") REFERENCES "Sucursal"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "HistorialStock" ADD CONSTRAINT "HistorialStock_usuarioId_fkey" FOREIGN KEY ("usuarioId") REFERENCES "Usuario"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "HistorialStock" ADD CONSTRAINT "HistorialStock_productoId_fkey" FOREIGN KEY ("productoId") REFERENCES "Producto"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "HistorialStock" ADD CONSTRAINT "HistorialStock_requisicionId_fkey" FOREIGN KEY ("requisicionId") REFERENCES "Requisicion"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "HistorialStock" ADD CONSTRAINT "HistorialStock_ventaId_fkey" FOREIGN KEY ("ventaId") REFERENCES "Venta"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "HistorialStock" ADD CONSTRAINT "HistorialStock_ajusteStockId_fkey" FOREIGN KEY ("ajusteStockId") REFERENCES "AjusteStock"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "HistorialStock" ADD CONSTRAINT "HistorialStock_eliminacionStockId_fkey" FOREIGN KEY ("eliminacionStockId") REFERENCES "EliminacionStock"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "HistorialStock" ADD CONSTRAINT "HistorialStock_eliminacionVentaId_fkey" FOREIGN KEY ("eliminacionVentaId") REFERENCES "VentaEliminada"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "HistorialStock" ADD CONSTRAINT "HistorialStock_transferenciaProductoId_fkey" FOREIGN KEY ("transferenciaProductoId") REFERENCES "TransferenciaProducto"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "HistorialStock" ADD CONSTRAINT "HistorialStock_entregaStockId_fkey" FOREIGN KEY ("entregaStockId") REFERENCES "EntregaStock"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "HistorialStock" ADD CONSTRAINT "HistorialStock_garantiaId_fkey" FOREIGN KEY ("garantiaId") REFERENCES "Garantia"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "VentaProducto" ADD CONSTRAINT "VentaProducto_ventaId_fkey" FOREIGN KEY ("ventaId") REFERENCES "Venta"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "VentaProducto" ADD CONSTRAINT "VentaProducto_productoId_fkey" FOREIGN KEY ("productoId") REFERENCES "Producto"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Venta" ADD CONSTRAINT "Venta_clienteId_fkey" FOREIGN KEY ("clienteId") REFERENCES "Cliente"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Venta" ADD CONSTRAINT "Venta_sucursalId_fkey" FOREIGN KEY ("sucursalId") REFERENCES "Sucursal"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Venta" ADD CONSTRAINT "Venta_registroCajaId_fkey" FOREIGN KEY ("registroCajaId") REFERENCES "RegistroCaja"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Venta" ADD CONSTRAINT "Venta_usuarioId_fkey" FOREIGN KEY ("usuarioId") REFERENCES "Usuario"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "TransferenciaProducto" ADD CONSTRAINT "TransferenciaProducto_productoId_fkey" FOREIGN KEY ("productoId") REFERENCES "Producto"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "TransferenciaProducto" ADD CONSTRAINT "TransferenciaProducto_sucursalOrigenId_fkey" FOREIGN KEY ("sucursalOrigenId") REFERENCES "Sucursal"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "TransferenciaProducto" ADD CONSTRAINT "TransferenciaProducto_sucursalDestinoId_fkey" FOREIGN KEY ("sucursalDestinoId") REFERENCES "Sucursal"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "TransferenciaProducto" ADD CONSTRAINT "TransferenciaProducto_usuarioEncargadoId_fkey" FOREIGN KEY ("usuarioEncargadoId") REFERENCES "Usuario"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "SolicitudTransferenciaProducto" ADD CONSTRAINT "SolicitudTransferenciaProducto_productoId_fkey" FOREIGN KEY ("productoId") REFERENCES "Producto"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "SolicitudTransferenciaProducto" ADD CONSTRAINT "SolicitudTransferenciaProducto_sucursalOrigenId_fkey" FOREIGN KEY ("sucursalOrigenId") REFERENCES "Sucursal"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "SolicitudTransferenciaProducto" ADD CONSTRAINT "SolicitudTransferenciaProducto_sucursalDestinoId_fkey" FOREIGN KEY ("sucursalDestinoId") REFERENCES "Sucursal"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "SolicitudTransferenciaProducto" ADD CONSTRAINT "SolicitudTransferenciaProducto_usuarioSolicitanteId_fkey" FOREIGN KEY ("usuarioSolicitanteId") REFERENCES "Usuario"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "SolicitudTransferenciaProducto" ADD CONSTRAINT "SolicitudTransferenciaProducto_administradorId_fkey" FOREIGN KEY ("administradorId") REFERENCES "Usuario"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Municipio" ADD CONSTRAINT "Municipio_departamentoId_fkey" FOREIGN KEY ("departamentoId") REFERENCES "Departamento"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_Destinatario" ADD CONSTRAINT "_Destinatario_A_fkey" FOREIGN KEY ("A") REFERENCES "Notificacion"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_Destinatario" ADD CONSTRAINT "_Destinatario_B_fkey" FOREIGN KEY ("B") REFERENCES "Usuario"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_CategoriaToProducto" ADD CONSTRAINT "_CategoriaToProducto_A_fkey" FOREIGN KEY ("A") REFERENCES "Categoria"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_CategoriaToProducto" ADD CONSTRAINT "_CategoriaToProducto_B_fkey" FOREIGN KEY ("B") REFERENCES "Producto"("id") ON DELETE CASCADE ON UPDATE CASCADE;

import { Prisma } from '@prisma/client';

export const toDecimal = (
  v: number | string | Prisma.Decimal | null | undefined,
) =>
  v == null
    ? new Prisma.Decimal(0)
    : Prisma.Decimal.isDecimal(v)
      ? v
      : new Prisma.Decimal(v);

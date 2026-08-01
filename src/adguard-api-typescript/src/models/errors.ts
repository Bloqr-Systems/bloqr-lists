/**
 * Error-related models
 */

import type { ErrorCodes } from './enums.ts';

/** Field error */
export interface FieldError {
  /** Field name */
  field: string;
  /** Error code */
  error_code: ErrorCodes;
  /** Error message */
  message?: string;
}

/** Error response from API */
export interface ErrorResponse {
  /** Error code */
  error_code: ErrorCodes;
  /** Error message */
  message?: string;
  /** Field-specific errors */
  fields: FieldError[];
}
